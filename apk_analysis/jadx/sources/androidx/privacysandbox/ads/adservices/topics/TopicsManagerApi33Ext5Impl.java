package androidx.privacysandbox.ads.adservices.topics;

import android.content.Context;
import defpackage.dq;
import defpackage.vh;

/* JADX INFO: loaded from: classes3.dex */
public final class TopicsManagerApi33Ext5Impl extends TopicsManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    public TopicsManagerApi33Ext5Impl(Context context) {
        context.getClass();
        Object systemService = context.getSystemService((Class<Object>) dq.e());
        systemService.getClass();
        super(vh.b(systemService));
    }

    @Override // androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon
    public android.adservices.topics.GetTopicsRequest convertRequest$ads_adservices_release(GetTopicsRequest getTopicsRequest) {
        getTopicsRequest.getClass();
        return GetTopicsRequestHelper.INSTANCE.convertRequestWithRecordObservation$ads_adservices_release(getTopicsRequest);
    }
}
