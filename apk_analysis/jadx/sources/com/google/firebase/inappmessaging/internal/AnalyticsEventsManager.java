package com.google.firebase.inappmessaging.internal;

import android.text.TextUtils;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inappmessaging.CommonTypesProto;
import defpackage.f73;
import defpackage.gg3;
import defpackage.iw1;
import defpackage.jh3;
import defpackage.kg3;
import defpackage.kh3;
import defpackage.kw1;
import defpackage.m21;
import defpackage.n00;
import defpackage.nq5;
import defpackage.qg3;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class AnalyticsEventsManager {
    static final String TOO_MANY_CONTEXTUAL_TRIGGERS_ERROR = "Too many contextual triggers defined - limiting to 50";
    private final AnalyticsConnector analyticsConnector;
    private final kw1<String> flowable;
    private AnalyticsConnector.AnalyticsConnectorHandle handle;

    public class AnalyticsFlowableSubscriber implements jh3<String> {
        public AnalyticsFlowableSubscriber() {
        }

        @Override // defpackage.jh3
        public void subscribe(qg3<String> qg3Var) {
            Logging.logd("Subscribing to analytics events.");
            AnalyticsEventsManager analyticsEventsManager = AnalyticsEventsManager.this;
            analyticsEventsManager.handle = analyticsEventsManager.analyticsConnector.registerAnalyticsConnectorListener("fiam", new FiamAnalyticsConnectorListener(qg3Var));
        }
    }

    public AnalyticsEventsManager(AnalyticsConnector analyticsConnector) {
        this.analyticsConnector = analyticsConnector;
        AnalyticsFlowableSubscriber analyticsFlowableSubscriber = new AnalyticsFlowableSubscriber();
        n00 n00Var = n00.BUFFER;
        int i = gg3.b;
        nq5.a(n00Var, "mode is null");
        kh3 kh3VarD = new kg3(analyticsFlowableSubscriber, n00Var).d();
        this.flowable = kh3VarD;
        kh3VarD.i(new iw1());
    }

    public static Set<String> extractAnalyticsEventNames(f73 f73Var) {
        HashSet hashSet = new HashSet();
        Iterator<E> it = f73Var.d().iterator();
        while (it.hasNext()) {
            for (CommonTypesProto.TriggeringCondition triggeringCondition : ((m21) it.next()).g()) {
                if (!TextUtils.isEmpty(triggeringCondition.getEvent().getName())) {
                    hashSet.add(triggeringCondition.getEvent().getName());
                }
            }
        }
        if (hashSet.size() > 50) {
            Logging.logi(TOO_MANY_CONTEXTUAL_TRIGGERS_ERROR);
        }
        return hashSet;
    }

    public kw1<String> getAnalyticsEventsFlowable() {
        return this.flowable;
    }

    public AnalyticsConnector.AnalyticsConnectorHandle getHandle() {
        return this.handle;
    }

    public void updateContextualTriggers(f73 f73Var) {
        Set<String> setExtractAnalyticsEventNames = extractAnalyticsEventNames(f73Var);
        Logging.logd("Updating contextual triggers for the following analytics events: " + setExtractAnalyticsEventNames);
        this.handle.registerEventNames(setExtractAnalyticsEventNames);
    }
}
