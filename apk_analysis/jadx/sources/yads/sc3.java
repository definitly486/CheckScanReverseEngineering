package yads;

import android.content.Context;
import defpackage.fh8;
import defpackage.r57;
import defpackage.rm9;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes6.dex */
public final class sc3 {
    public final Context a;
    public final y74 b;
    public final defpackage.cl4 c;
    public final defpackage.cl4 d;

    public sc3(Context context, y74 y74Var) {
        this.a = context;
        this.b = y74Var;
        this.c = new fh8(new defpackage.d80(1));
        this.d = new fh8(new defpackage.uj(this, 10));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Set set, defpackage.f02 f02Var) {
        nc3 nc3Var;
        if (f02Var instanceof nc3) {
            nc3Var = (nc3) f02Var;
            int i = nc3Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                nc3Var.e = i - Integer.MIN_VALUE;
            } else {
                nc3Var = new nc3(this, f02Var);
            }
        } else {
            nc3Var = new nc3(this, f02Var);
        }
        Object objC = nc3Var.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = nc3Var.e;
        if (i2 == 0) {
            r57.b(objC);
            if (set.isEmpty()) {
                return new de3(defpackage.mx2.b);
            }
            nc3Var.b = this;
            nc3Var.e = 1;
            objC = defpackage.z22.c(new jc3(this, set, null), nc3Var);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            this = nc3Var.b;
            r57.b(objC);
        }
        List<ac3> list = (List) objC;
        this.getClass();
        int iB = defpackage.m05.b(defpackage.kn1.q(list, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (ac3 ac3Var : list) {
            linkedHashMap.put(ac3Var.a, ac3Var.b);
        }
        return new de3(linkedHashMap);
    }

    public /* synthetic */ sc3(Context context) {
        this(context, new y74());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(sc3 sc3Var, zc3 zc3Var, rd3 rd3Var, defpackage.f02 f02Var) {
        oc3 oc3Var;
        sc3Var.getClass();
        if (f02Var instanceof oc3) {
            oc3Var = (oc3) f02Var;
            int i = oc3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                oc3Var.d = i - Integer.MIN_VALUE;
            } else {
                oc3Var = new oc3(sc3Var, f02Var);
            }
        } else {
            oc3Var = new oc3(sc3Var, f02Var);
        }
        Object objD = oc3Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = oc3Var.d;
        try {
            if (i2 == 0) {
                r57.b(objD);
                String str = rd3Var.c;
                if (sc3Var.a(rd3Var)) {
                    int i3 = rd3Var.a;
                    int i4 = rd3Var.b;
                    oc3Var.d = 1;
                    defpackage.oi2 oi2Var = defpackage.qo2.a;
                    objD = defpackage.av0.d(defpackage.uy4.a.k0(), new qc3(zc3Var, str, i3, i4, sc3Var, null), oc3Var);
                    if (objD == a32Var) {
                        return a32Var;
                    }
                }
                return null;
            }
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objD);
            return (ac3) objD;
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable unused) {
        }
    }

    public static final defpackage.y22 a(defpackage.y22 y22Var) {
        if (y22Var != null) {
            return y22Var;
        }
        return xn.a(rm9.b(), new i90());
    }

    public static final un4 a(sc3 sc3Var) {
        return un4.d.a(sc3Var.a);
    }

    public final void a(Set set, ce3 ce3Var) {
        if (set.isEmpty()) {
            ce3Var.a(defpackage.mx2.b);
        } else {
            defpackage.av0.c((defpackage.y22) this.c.getValue(), null, null, new mc3(this, set, ce3Var, null), 3);
        }
    }

    public final boolean a(rd3 rd3Var) {
        this.b.getClass();
        return ((float) y74.a()) >= ((float) ((rd3Var.b() * rd3Var.a()) * 4)) + 1048576.0f;
    }
}
