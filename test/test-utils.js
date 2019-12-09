/*
 © Copyright IBM Corp. 2019
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

/* eslint-env mocha */
'use strict';

const helpers = require('yeoman-test');
const assert = require('yeoman-assert');
const _ = require('lodash');
const path = require('path');
// const fs = require('fs');
var memFs = require("mem-fs");
var editor = require("mem-fs-editor");
var store = memFs.create();
var fs = editor.create(store);

const SVC_CRED_SAMPLES = require("./samples/service_creds.json");

const PREFIX_SVC_BINDING_NAME = "my-service-";

const LANGS = [ "NODE", "PYTHON", "GO", "JAVA", "SWIFT" ];
const SERVICES = [ 'appid','cloudant','cloudObjectStorage','db2OnCloud','mongodb','hypersecuredb','postgresql','push','redis','conversation','discovery','languageTranslator','naturalLanguageClassifier','naturalLanguageUnderstanding','personalityInsights','speechToText','textToSpeech','toneAnalyzer','visualRecognition' ];

function getServiceCreds(serviceKey) {
    return SVC_CRED_SAMPLES[serviceKey];
}

function generateAppOpts(type, language) {
    return {
        application: {
            app_id: `1234-5678-${type}-${language}-0987654321`,
            name: `test-genv2-app-${type}-${language}`,
            language: language,
            service_credentials: {}
        }
    };
}

const baseDeployObjects = {
        "cloud_foundry": {
            "cloud_foundry": {
                "disk_quote": "1G",
                "domain": "mydomain.com",
                "hostname": "my-app-hostname",
                "instances": "3",
                "memory": "256MB",
                "service_bindings": {}
            }
        },
        "helm": { 
            "kube": {
                "type": "HELM",
                "service_bindings": {}      
            }
        },
        "knative": {
            "kube": {
                "type": "KNATIVE",
                "service_bindings": {}      
            }        
        }
    };

function generateTestPayload(app_type, language, deploy_type, cloud_deploy_type, service_keys) {
    let payload = {};
    deploy_opts = generateDeployOpts(deploy_type, cloud_deploy_type);
    app_opts = generateAppOpts(app_type, language);
    _.forEach(service_keys, (key) => {
        deploy_opts[deploy_type]["service_bindings"][key] = PREFIX_SVC_BINDING_NAME + value;
        app_opts["service_credentials"][key] = getServiceCreds(key);
    });
    _.extend(payload, deploy_opts);
    _.extend(payload, app_opts);
    return payload;
}

module.exports = {
    getServiceCreds: getServiceCreds,
    generateDeployOpts: generateDeployOpts,
    generateTestPayload: generateTestPayload,
    baseDeployObjects: baseDeployObjects,
    LANGS: LANGS,
    SERVICES: SERVICES

};
