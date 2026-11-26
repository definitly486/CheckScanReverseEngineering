package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleDestroyedException;
import androidx.lifecycle.WithLifecycleStateKt;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.presentation.CiceroneActivity;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.CiceroneActivity$openUnityOfferwall$1", f = "CiceroneActivity.kt", l = {TypedValues.CycleType.TYPE_PATH_ROTATE, 281, TypedValues.CycleType.TYPE_WAVE_PHASE}, m = "invokeSuspend")
public final class tj1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public LoadingDialog l;
    public int m;
    public final /* synthetic */ CiceroneActivity n;
    public final /* synthetic */ k69 o;
    public final /* synthetic */ ll3<j59> p;

    public static final class a implements ll3<LoadingDialog> {
        public final /* synthetic */ CiceroneActivity b;

        public a(CiceroneActivity ciceroneActivity) {
            this.b = ciceroneActivity;
        }

        @Override // defpackage.ll3
        public final LoadingDialog invoke() {
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            loadingDialogB.show(this.b.getSupportFragmentManager(), "UnityOfferwallLoader");
            return loadingDialogB;
        }
    }

    public static final class b implements ll3<j59> {
        public final /* synthetic */ ll3 b;

        public b(ll3 ll3Var) {
            this.b = ll3Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.b.invoke();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.CiceroneActivity$openUnityOfferwall$1$result$1", f = "CiceroneActivity.kt", l = {417}, m = "invokeSuspend")
    public static final class c extends pg8 implements nl3<e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ CiceroneActivity m;

        public static final class a implements ll3<j59> {
            @Override // defpackage.ll3
            public final j59 invoke() {
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(CiceroneActivity ciceroneActivity, e02<? super c> e02Var) {
            super(1, e02Var);
            this.m = ciceroneActivity;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new c(this.m, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((c) create(e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x004c  */
        /* JADX WARN: Code duplicated, block: B:19:0x005a A[RETURN] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a aVar;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                Lifecycle lifecycle = this.m.getLifecycle();
                Lifecycle.State state = Lifecycle.State.STARTED;
                oi2 oi2Var = qo2.a;
                gu3 gu3VarK0 = uy4.a.k0();
                boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(getContext());
                if (zIsDispatchNeeded) {
                    aVar = new a();
                    this.l = 1;
                    if (WithLifecycleStateKt.suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, aVar, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                        throw new LifecycleDestroyedException();
                    }
                    if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                        j59 j59Var = j59.a;
                    } else {
                        aVar = new a();
                        this.l = 1;
                        if (WithLifecycleStateKt.suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, aVar, this) == a32Var) {
                            return a32Var;
                        }
                    }
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tj1(CiceroneActivity ciceroneActivity, k69 k69Var, ll3<j59> ll3Var, e02<? super tj1> e02Var) {
        super(2, e02Var);
        this.n = ciceroneActivity;
        this.o = k69Var;
        this.p = ll3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new tj1(this.n, this.o, this.p, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((tj1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a4 A[Catch: all -> 0x0025, PHI: r1 r12 r14
      0x00a4: PHI (r1v6 ??) = (r1v11 ??), (r1v12 ??) binds: [B:31:0x00a1, B:12:0x0022] A[DONT_GENERATE, DONT_INLINE]
      0x00a4: PHI (r12v3 tj1) = (r12v1 tj1), (r12v4 tj1) binds: [B:31:0x00a1, B:12:0x0022] A[DONT_GENERATE, DONT_INLINE]
      0x00a4: PHI (r14v15 java.lang.Object) = (r14v24 java.lang.Object), (r14v25 java.lang.Object) binds: [B:31:0x00a1, B:12:0x0022] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {all -> 0x0025, blocks: (B:11:0x001f, B:33:0x00a4, B:30:0x0084), top: B:52:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:38:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:45:0x0103  */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0110, code lost:
    
        if (androidx.lifecycle.WithLifecycleStateKt.suspendWithStateAtLeastUnchecked(r7, r8, r9, r10, r11, r12) == r0) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.fragment.app.DialogFragment] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.fragment.app.DialogFragment] */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tj1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
