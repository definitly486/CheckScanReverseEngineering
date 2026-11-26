package androidx.privacysandbox.ads.adservices.appsetid;

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
public class AppSetIdManagerImplCommon extends AppSetIdManager {
    private final android.adservices.appsetid.AppSetIdManager mAppSetIdManager;

    /* JADX INFO: renamed from: androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManagerImplCommon$getAppSetId$1, reason: invalid class name */
    @bd2(c = "androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManagerImplCommon", f = "AppSetIdManagerImplCommon.kt", l = {38}, m = "getAppSetId$suspendImpl")
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
            return AppSetIdManagerImplCommon.getAppSetId$suspendImpl(AppSetIdManagerImplCommon.this, this);
        }
    }

    public AppSetIdManagerImplCommon(android.adservices.appsetid.AppSetIdManager appSetIdManager) {
        appSetIdManager.getClass();
        this.mAppSetIdManager = appSetIdManager;
    }

    private final AppSetId convertResponse(android.adservices.appsetid.AppSetId appSetId) {
        if (appSetId.getScope() == 1) {
            String id = appSetId.getId();
            id.getClass();
            return new AppSetId(id, 1);
        }
        String id2 = appSetId.getId();
        id2.getClass();
        return new AppSetId(id2, 2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object getAppSetId$suspendImpl(AppSetIdManagerImplCommon appSetIdManagerImplCommon, e02<? super AppSetId> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = appSetIdManagerImplCommon.new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = appSetIdManagerImplCommon.new AnonymousClass1(e02Var);
        }
        Object appSetIdAsyncInternal = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(appSetIdAsyncInternal);
            anonymousClass1.L$0 = appSetIdManagerImplCommon;
            anonymousClass1.label = 1;
            appSetIdAsyncInternal = appSetIdManagerImplCommon.getAppSetIdAsyncInternal(anonymousClass1);
            if (appSetIdAsyncInternal == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            appSetIdManagerImplCommon = (AppSetIdManagerImplCommon) anonymousClass1.L$0;
            r57.b(appSetIdAsyncInternal);
        }
        return appSetIdManagerImplCommon.convertResponse((android.adservices.appsetid.AppSetId) appSetIdAsyncInternal);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getAppSetIdAsyncInternal(e02<? super android.adservices.appsetid.AppSetId> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        this.mAppSetIdManager.getAppSetId(new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    @Override // androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager
    public Object getAppSetId(e02<? super AppSetId> e02Var) {
        return getAppSetId$suspendImpl(this, e02Var);
    }
}
