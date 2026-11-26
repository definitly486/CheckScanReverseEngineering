package androidx.privacysandbox.ads.adservices.topics;

import defpackage.rp3;

/* JADX INFO: loaded from: classes3.dex */
public final class GetTopicsRequestHelper {
    public static final GetTopicsRequestHelper INSTANCE = new GetTopicsRequestHelper();

    private GetTopicsRequestHelper() {
    }

    public final android.adservices.topics.GetTopicsRequest convertRequestWithRecordObservation$ads_adservices_release(GetTopicsRequest getTopicsRequest) {
        getTopicsRequest.getClass();
        android.adservices.topics.GetTopicsRequest getTopicsRequestBuild = rp3.a().setAdsSdkName(getTopicsRequest.getAdsSdkName()).setShouldRecordObservation(getTopicsRequest.shouldRecordObservation()).build();
        getTopicsRequestBuild.getClass();
        return getTopicsRequestBuild;
    }

    public final android.adservices.topics.GetTopicsRequest convertRequestWithoutRecordObservation$ads_adservices_release(GetTopicsRequest getTopicsRequest) {
        getTopicsRequest.getClass();
        android.adservices.topics.GetTopicsRequest getTopicsRequestBuild = rp3.a().setAdsSdkName(getTopicsRequest.getAdsSdkName()).build();
        getTopicsRequestBuild.getClass();
        return getTopicsRequestBuild;
    }
}
