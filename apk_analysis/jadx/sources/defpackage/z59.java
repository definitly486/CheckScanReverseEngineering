package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$observeConnection$1", f = "UnityOfferwallController.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_GROUP}, m = "invokeSuspend")
public final class z59 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ s59 m;
    public final /* synthetic */ s59.c.C0329c n;

    @bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$observeConnection$1$1", f = "UnityOfferwallController.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_MORE}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ boolean m;
        public final /* synthetic */ s59.c.C0329c n;
        public final /* synthetic */ s59 o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e02 e02Var, s59.c.C0329c c0329c, s59 s59Var) {
            super(2, e02Var);
            this.n = c0329c;
            this.o = s59Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = new a(e02Var, this.n, this.o);
            aVar.m = ((Boolean) obj).booleanValue();
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((a) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            s59 s59Var = this.o;
            cy8 cy8Var = s59Var.c;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            s59.c.C0329c c0329c = this.n;
            if (i == 0) {
                r57.b(obj);
                boolean z = this.m;
                c0329c.g = z;
                boolean z2 = c0329c.h;
                if (z) {
                    if (z2) {
                        c0329c.h = false;
                        cy8Var.b = null;
                        AlertDialog alertDialog = cy8Var.c;
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                        cy8Var.c = null;
                        cy8Var.d = null;
                    }
                } else if (!z2) {
                    this.l = 1;
                    if (yk2.b(1500L, this) == a32Var) {
                        return a32Var;
                    }
                }
                return j59.a;
            }
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            c0329c.h = true;
            cy8Var.b = new cy8.a(new e69(s59Var, c0329c), new f69(s59Var, c0329c));
            Activity activity = cy8Var.a;
            if (activity != null) {
                cy8Var.a(activity);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z59(e02 e02Var, s59.c.C0329c c0329c, s59 s59Var) {
        super(2, e02Var);
        this.m = s59Var;
        this.n = c0329c;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new z59(e02Var, this.n, this.m);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((z59) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            s59 s59Var = this.m;
            hd3 hd3VarC = zd3.c(s59Var.b);
            a aVar = new a(null, this.n, s59Var);
            this.l = 1;
            if (px.c(hd3VarC, aVar, this) == a32Var) {
                return a32Var;
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
