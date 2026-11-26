package defpackage;

import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class ao0 implements tn0 {
    public final el0 a;
    public final cc8 b;
    public final ya c;
    public final uo1 d;
    public final jf6 e;

    public ao0(el0 el0Var, cc8 cc8Var, ya yaVar, uo1 uo1Var, jf6 jf6Var) {
        this.a = el0Var;
        this.b = cc8Var;
        this.c = yaVar;
        this.d = uo1Var;
        this.e = jf6Var;
    }

    @Override // defpackage.tn0
    public final tb7 a(int i, boolean z) {
        return new tb7(new zn0(this, i, z, null));
    }

    @Override // defpackage.tn0
    public final tb7 b(String str) {
        str.getClass();
        return new tb7(new yn0(this, str, null));
    }

    @Override // defpackage.tn0
    public final Object c(nm0 nm0Var) {
        return this.b.b(nm0Var);
    }

    @Override // defpackage.tn0
    public final Object d(int i, f02 f02Var) {
        return this.a.g(i, f02Var);
    }

    @Override // defpackage.tn0
    public final Object e(boolean z, jm0 jm0Var) {
        return this.a.c(this.e.O0(), z, jm0Var);
    }

    @Override // defpackage.tn0
    public final Object f(int i, BonusesMainNewPresenter.i iVar) {
        Object objA = this.a.a(new yv3(i), iVar);
        return objA == a32.COROUTINE_SUSPENDED ? objA : j59.a;
    }

    @Override // defpackage.tn0
    public final tb7 g(int i) {
        return new tb7(new wn0(this, i, null));
    }

    @Override // defpackage.tn0
    public final Object h(int i, int i2, om0 om0Var) {
        return this.a.h(i, i2, om0Var);
    }

    @Override // defpackage.tn0
    public final Object i(int i, cm0 cm0Var) {
        return this.a.f(i, cm0Var);
    }

    @Override // defpackage.tn0
    public final Object j(em0 em0Var) {
        return this.d.d(em0Var);
    }

    @Override // defpackage.tn0
    public final Object k(fm0 fm0Var) {
        return this.c.a(fm0Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.tn0
    public final Serializable l(int i, int i2, f02 f02Var) {
        xn0 xn0Var;
        if (f02Var instanceof xn0) {
            xn0Var = (xn0) f02Var;
            int i3 = xn0Var.n;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                xn0Var.n = i3 - Integer.MIN_VALUE;
            } else {
                xn0Var = new xn0(this, f02Var);
            }
        } else {
            xn0Var = new xn0(this, f02Var);
        }
        Object objD = xn0Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = xn0Var.n;
        if (i4 == 0) {
            r57.b(objD);
            Integer num = new Integer(i2);
            xn0Var.n = 1;
            objD = this.a.d(num, i, xn0Var);
            if (objD == a32Var) {
                return a32Var;
            }
        } else {
            if (i4 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objD);
        }
        k26 k26Var = (k26) objD;
        return new b36(k26Var.a(), new Integer(k26Var.b()));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.tn0
    public final Object m(int i, f02 f02Var) {
        vn0 vn0Var;
        if (f02Var instanceof vn0) {
            vn0Var = (vn0) f02Var;
            int i2 = vn0Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                vn0Var.n = i2 - Integer.MIN_VALUE;
            } else {
                vn0Var = new vn0(this, f02Var);
            }
        } else {
            vn0Var = new vn0(this, f02Var);
        }
        Object objJ = vn0Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = vn0Var.n;
        if (i3 == 0) {
            r57.b(objJ);
            vn0Var.n = 1;
            objJ = this.a.j(i, vn0Var);
            if (objJ == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objJ);
        }
        CharSequence charSequence = (CharSequence) objJ;
        Pattern patternCompile = Pattern.compile("<.*?>");
        patternCompile.getClass();
        charSequence.getClass();
        String strReplaceAll = patternCompile.matcher(charSequence).replaceAll("");
        strReplaceAll.getClass();
        Pattern patternCompile2 = Pattern.compile("[\\r\\n]+");
        patternCompile2.getClass();
        String strReplaceAll2 = patternCompile2.matcher(strReplaceAll).replaceAll("");
        strReplaceAll2.getClass();
        return ta8.f0(strReplaceAll2).toString();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.tn0
    public final Object n(int i, int i2, f02 f02Var) {
        un0 un0Var;
        if (f02Var instanceof un0) {
            un0Var = (un0) f02Var;
            int i3 = un0Var.n;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                un0Var.n = i3 - Integer.MIN_VALUE;
            } else {
                un0Var = new un0(this, f02Var);
            }
        } else {
            un0Var = new un0(this, f02Var);
        }
        Object objL = un0Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = un0Var.n;
        if (i4 == 0) {
            r57.b(objL);
            un0Var.n = 1;
            objL = this.a.l(i, 0, i2, un0Var);
            if (objL == a32Var) {
                return a32Var;
            }
        } else {
            if (i4 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objL);
        }
        return ((k26) objL).a();
    }

    @Override // defpackage.tn0
    public final Object o(int i, gc0 gc0Var, boolean z, mm0 mm0Var) {
        return this.a.m(gc0Var, i, null, z, mm0Var);
    }
}
