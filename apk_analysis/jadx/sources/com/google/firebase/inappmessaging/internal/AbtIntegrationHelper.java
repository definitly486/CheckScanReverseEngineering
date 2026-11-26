package com.google.firebase.inappmessaging.internal;

import com.google.firebase.abt.AbtException;
import com.google.firebase.abt.AbtExperimentInfo;
import com.google.firebase.abt.FirebaseABTesting;
import com.google.firebase.inappmessaging.ExperimentPayloadProto;
import defpackage.a2;
import defpackage.f73;
import defpackage.m21;
import defpackage.z1;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class AbtIntegrationHelper {
    private final FirebaseABTesting abTesting;
    Executor executor;

    public AbtIntegrationHelper(FirebaseABTesting firebaseABTesting, Executor executor) {
        this.abTesting = firebaseABTesting;
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setExperimentActive$1(ExperimentPayloadProto.ExperimentPayload experimentPayload) {
        try {
            Logging.logd("Updating active experiment: " + experimentPayload.toString());
            this.abTesting.reportActiveExperiment(new AbtExperimentInfo(experimentPayload.getExperimentId(), experimentPayload.getVariantId(), experimentPayload.getTriggerEvent(), new Date(experimentPayload.getExperimentStartTimeMillis()), experimentPayload.getTriggerTimeoutMillis(), experimentPayload.getTimeToLiveMillis()));
        } catch (AbtException e) {
            Logging.loge("Unable to set experiment as active with ABT, missing analytics?\n" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRunningExperiments$0(ArrayList arrayList) {
        try {
            Logging.logd("Updating running experiments with: " + arrayList.size() + " experiments");
            this.abTesting.validateRunningExperiments(arrayList);
        } catch (AbtException e) {
            Logging.loge("Unable to register experiments with ABT, missing analytics?\n" + e.getMessage());
        }
    }

    public void setExperimentActive(ExperimentPayloadProto.ExperimentPayload experimentPayload) {
        this.executor.execute(new a2(0, this, experimentPayload));
    }

    public void updateRunningExperiments(f73 f73Var) {
        ArrayList arrayList = new ArrayList();
        for (m21 m21Var : f73Var.d()) {
            if (!m21Var.d() && m21Var.e().equals(m21.c.EXPERIMENTAL_PAYLOAD)) {
                ExperimentPayloadProto.ExperimentPayload experimentPayloadF = m21Var.c().f();
                arrayList.add(new AbtExperimentInfo(experimentPayloadF.getExperimentId(), experimentPayloadF.getVariantId(), experimentPayloadF.getTriggerEvent(), new Date(experimentPayloadF.getExperimentStartTimeMillis()), experimentPayloadF.getTriggerTimeoutMillis(), experimentPayloadF.getTimeToLiveMillis()));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.executor.execute(new z1(0, this, arrayList));
    }
}
