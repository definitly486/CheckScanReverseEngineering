package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.StartupParamsItem;
import io.appmetrica.analytics.StartupParamsItemStatus;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.internal.IdentifiersResult;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.jm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1031jm {
    public final C1083lm a = new C1083lm();

    public final StartupParamsItem a(IdentifiersResult identifiersResult) {
        StartupParamsItemStatus startupParamsItemStatus;
        String str = identifiersResult.id;
        C1083lm c1083lm = this.a;
        IdentifierStatus identifierStatus = identifiersResult.status;
        c1083lm.getClass();
        int i = AbstractC1057km.a[identifierStatus.ordinal()];
        if (i == 1) {
            startupParamsItemStatus = StartupParamsItemStatus.OK;
        } else if (i == 2) {
            startupParamsItemStatus = StartupParamsItemStatus.PROVIDER_UNAVAILABLE;
        } else if (i == 3) {
            startupParamsItemStatus = StartupParamsItemStatus.INVALID_VALUE_FROM_PROVIDER;
        } else if (i != 4) {
            startupParamsItemStatus = i != 5 ? StartupParamsItemStatus.UNKNOWN_ERROR : StartupParamsItemStatus.FORBIDDEN_BY_CLIENT_CONFIG;
        } else {
            startupParamsItemStatus = StartupParamsItemStatus.FEATURE_DISABLED;
        }
        return new StartupParamsItem(str, startupParamsItemStatus, identifiersResult.errorExplanation);
    }
}
