package com.google.firebase.inappmessaging.internal;

import android.os.Bundle;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import defpackage.qg3;

/* JADX INFO: loaded from: classes4.dex */
final class FiamAnalyticsConnectorListener implements AnalyticsConnector.AnalyticsConnectorListener {
    private qg3<String> emitter;

    public FiamAnalyticsConnectorListener(qg3<String> qg3Var) {
        this.emitter = qg3Var;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorListener
    public void onMessageTriggered(int i, Bundle bundle) {
        if (i == 2) {
            this.emitter.onNext(bundle.getString("events"));
        }
    }
}
