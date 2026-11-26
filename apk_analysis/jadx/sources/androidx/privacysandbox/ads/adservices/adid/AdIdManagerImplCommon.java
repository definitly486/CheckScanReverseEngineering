package androidx.privacysandbox.ads.adservices.adid;

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
public class AdIdManagerImplCommon extends AdIdManager {
    private final android.adservices.adid.AdIdManager mAdIdManager;

    /* JADX INFO: renamed from: androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon$getAdId$1, reason: invalid class name */
    @bd2(c = "androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon", f = "AdIdManagerImplCommon.kt", l = {40}, m = "getAdId$suspendImpl")
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
            return AdIdManagerImplCommon.getAdId$suspendImpl(AdIdManagerImplCommon.this, this);
        }
    }

    public AdIdManagerImplCommon(android.adservices.adid.AdIdManager adIdManager) {
        adIdManager.getClass();
        this.mAdIdManager = adIdManager;
    }

    private final AdId convertResponse(android.adservices.adid.AdId adId) {
        String adId2 = adId.getAdId();
        adId2.getClass();
        return new AdId(adId2, adId.isLimitAdTrackingEnabled());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object getAdId$suspendImpl(AdIdManagerImplCommon adIdManagerImplCommon, e02<? super AdId> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = adIdManagerImplCommon.new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = adIdManagerImplCommon.new AnonymousClass1(e02Var);
        }
        Object adIdAsyncInternal = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(adIdAsyncInternal);
            anonymousClass1.L$0 = adIdManagerImplCommon;
            anonymousClass1.label = 1;
            adIdAsyncInternal = adIdManagerImplCommon.getAdIdAsyncInternal(anonymousClass1);
            if (adIdAsyncInternal == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            adIdManagerImplCommon = (AdIdManagerImplCommon) anonymousClass1.L$0;
            r57.b(adIdAsyncInternal);
        }
        return adIdManagerImplCommon.convertResponse((android.adservices.adid.AdId) adIdAsyncInternal);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getAdIdAsyncInternal(e02<? super android.adservices.adid.AdId> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        this.mAdIdManager.getAdId(new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    @Override // androidx.privacysandbox.ads.adservices.adid.AdIdManager
    public Object getAdId(e02<? super AdId> e02Var) {
        return getAdId$suspendImpl(this, e02Var);
    }
}
