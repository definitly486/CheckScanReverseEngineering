package yads;

import android.content.Context;
import android.view.View;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class jf4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ kf4 c;
    public final /* synthetic */ View d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jf4(kf4 kf4Var, View view, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = kf4Var;
        this.d = view;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new jf4(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new jf4(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object objA;
        zg5 zg5Var;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            kf4 kf4Var = this.c;
            a4 a4Var = kf4Var.b;
            View view = this.d;
            ak akVar = kf4Var.a;
            ot3 ot3Var = kf4Var.e;
            dh4 dh4Var = kf4Var.c;
            this.b = 1;
            o1 o1Var = a4Var.d.b;
            n1 n1Var = new n1(o1Var.e, o1Var.a, o1Var.b, o1Var.c, o1Var.d, ot3Var.b);
            o1Var.f = n1Var;
            zh4 zh4Var = o1Var.g;
            if (zh4Var != null) {
                o1Var.g = zh4Var;
                n1Var.b.k = zh4Var;
            }
            Context context = view.getContext();
            h9 h9Var = a4Var.i.a;
            qe4 qe4Var = a4Var.g;
            l00 l00Var = new l00(qe4Var.d, qe4Var.c, qe4Var.a, qe4Var.b, new re4(akVar.a, qe4Var.e, dh4Var.c));
            hv5 hv5Var = a4Var.e;
            bf5 bf5Var = a4Var.a;
            e4 e4Var = a4Var.c;
            d9 d9Var = a4Var.b;
            boolean z = ot3Var.f;
            hv5Var.getClass();
            zg5 zg5Var2 = zg5.l;
            if (zg5Var2 == null) {
                synchronized (zg5.k) {
                    zg5Var = zg5.l;
                    if (zg5Var == null) {
                        zg5Var = new zg5();
                        zg5.l = zg5Var;
                    }
                }
                zg5Var2 = zg5Var;
            }
            fe5 fe5VarA = zg5Var2.a(context);
            if (fe5VarA != null) {
                boolean z2 = fe5VarA.f;
            }
            xi0 xi0Var = new xi0(context, bf5Var, e4Var, d9Var, h9Var, z);
            mk4 mk4Var = new mk4(xi0Var);
            nk4 nk4Var = new nk4(new lk4(xi0Var), a4Var.h);
            objA = a4Var.a(view, ot3Var, new d1(a4Var.c, a4Var.a, a4Var.b, l00Var, mk4Var, a4Var.d, a4Var.h, nk4Var), nk4Var, new ji4(l00Var), this);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            objA = obj;
        }
        if (((m83) objA).a) {
            this.c.f.a();
        }
        return j59.a;
    }
}
