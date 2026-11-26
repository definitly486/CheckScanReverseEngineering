package defpackage;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleDestroyedException;
import androidx.lifecycle.WithLifecycleStateKt;
import com.warefly.checkscan.presentation.upridWeb.presenter.UpridWebPresenter;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog$sendSafetyEvent$1", f = "UpridWebFullScreenDialog.kt", l = {342}, m = "invokeSuspend")
public final class y89 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ UpridWebFullScreenDialog m;
    public final /* synthetic */ String n;
    public final /* synthetic */ Runnable o;

    public static final class a implements ll3<j59> {
        public final /* synthetic */ UpridWebFullScreenDialog b;
        public final /* synthetic */ String c;
        public final /* synthetic */ Runnable d;

        public a(UpridWebFullScreenDialog upridWebFullScreenDialog, String str, Runnable runnable) {
            this.b = upridWebFullScreenDialog;
            this.c = str;
            this.d = runnable;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            UpridWebPresenter upridWebPresenter = this.b.presenter;
            if (upridWebPresenter == null) {
                aa4.j("presenter");
                throw null;
            }
            upridWebPresenter.sendLink(this.c);
            this.d.run();
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y89(UpridWebFullScreenDialog upridWebFullScreenDialog, String str, Runnable runnable, e02<? super y89> e02Var) {
        super(2, e02Var);
        this.m = upridWebFullScreenDialog;
        this.n = str;
        this.o = runnable;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new y89(this.m, this.n, this.o, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((y89) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    /* JADX WARN: Code duplicated, block: B:24:0x0070 A[RETURN] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a aVar;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            UpridWebFullScreenDialog upridWebFullScreenDialog = this.m;
            Lifecycle lifecycle = upridWebFullScreenDialog.getLifecycle();
            Lifecycle.State state = Lifecycle.State.RESUMED;
            oi2 oi2Var = qo2.a;
            gu3 gu3VarK0 = uy4.a.k0();
            boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(getContext());
            String str = this.n;
            Runnable runnable = this.o;
            if (zIsDispatchNeeded) {
                aVar = new a(upridWebFullScreenDialog, str, runnable);
                this.l = 1;
                if (WithLifecycleStateKt.suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, aVar, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                    throw new LifecycleDestroyedException();
                }
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    UpridWebPresenter upridWebPresenter = upridWebFullScreenDialog.presenter;
                    if (upridWebPresenter == null) {
                        aa4.j("presenter");
                        throw null;
                    }
                    upridWebPresenter.sendLink(str);
                    runnable.run();
                    j59 j59Var = j59.a;
                } else {
                    aVar = new a(upridWebFullScreenDialog, str, runnable);
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
