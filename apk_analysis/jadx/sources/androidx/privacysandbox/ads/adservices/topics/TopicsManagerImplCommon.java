package androidx.privacysandbox.ads.adservices.topics;

import androidx.core.os.OutcomeReceiverKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.c31;
import defpackage.e02;
import defpackage.f02;
import defpackage.o86;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes3.dex */
public class TopicsManagerImplCommon extends TopicsManager {
    private final android.adservices.topics.TopicsManager mTopicsManager;

    /* JADX INFO: renamed from: androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1, reason: invalid class name */
    @bd2(c = "androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon", f = "TopicsManagerImplCommon.kt", l = {40}, m = "getTopics$suspendImpl")
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TopicsManagerImplCommon.getTopics$suspendImpl(TopicsManagerImplCommon.this, null, this);
        }
    }

    public TopicsManagerImplCommon(android.adservices.topics.TopicsManager topicsManager) {
        topicsManager.getClass();
        this.mTopicsManager = topicsManager;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object getTopics$suspendImpl(TopicsManagerImplCommon topicsManagerImplCommon, GetTopicsRequest getTopicsRequest, e02<? super GetTopicsResponse> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = topicsManagerImplCommon.new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = topicsManagerImplCommon.new AnonymousClass1(e02Var);
        }
        Object topicsAsyncInternal = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(topicsAsyncInternal);
            android.adservices.topics.GetTopicsRequest getTopicsRequestConvertRequest$ads_adservices_release = topicsManagerImplCommon.convertRequest$ads_adservices_release(getTopicsRequest);
            anonymousClass1.L$0 = topicsManagerImplCommon;
            anonymousClass1.label = 1;
            topicsAsyncInternal = topicsManagerImplCommon.getTopicsAsyncInternal(getTopicsRequestConvertRequest$ads_adservices_release, anonymousClass1);
            if (topicsAsyncInternal == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            topicsManagerImplCommon = (TopicsManagerImplCommon) anonymousClass1.L$0;
            r57.b(topicsAsyncInternal);
        }
        return topicsManagerImplCommon.convertResponse$ads_adservices_release((android.adservices.topics.GetTopicsResponse) topicsAsyncInternal);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getTopicsAsyncInternal(android.adservices.topics.GetTopicsRequest getTopicsRequest, e02<? super android.adservices.topics.GetTopicsResponse> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        this.mTopicsManager.getTopics(getTopicsRequest, new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public android.adservices.topics.GetTopicsRequest convertRequest$ads_adservices_release(GetTopicsRequest getTopicsRequest) {
        getTopicsRequest.getClass();
        return GetTopicsRequestHelper.INSTANCE.convertRequestWithoutRecordObservation$ads_adservices_release(getTopicsRequest);
    }

    public GetTopicsResponse convertResponse$ads_adservices_release(android.adservices.topics.GetTopicsResponse getTopicsResponse) {
        getTopicsResponse.getClass();
        return GetTopicsResponseHelper.INSTANCE.convertResponse$ads_adservices_release(getTopicsResponse);
    }

    @Override // androidx.privacysandbox.ads.adservices.topics.TopicsManager
    public Object getTopics(GetTopicsRequest getTopicsRequest, e02<? super GetTopicsResponse> e02Var) {
        return getTopics$suspendImpl(this, getTopicsRequest, e02Var);
    }
}
