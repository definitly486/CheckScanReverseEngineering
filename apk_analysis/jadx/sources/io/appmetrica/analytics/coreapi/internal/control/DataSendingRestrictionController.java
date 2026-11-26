package io.appmetrica.analytics.coreapi.internal.control;

/* JADX INFO: loaded from: classes5.dex */
public interface DataSendingRestrictionController {
    boolean isRestrictedForMainReporter();

    boolean isRestrictedForReporter(String str);

    boolean isRestrictedForSdk();
}
