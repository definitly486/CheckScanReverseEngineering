package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class uf2 {
    /* JADX WARN: Code duplicated, block: B:136:0x025b A[ORIG_RETURN, RETURN] */
    public final boolean a(uf2 uf2Var, fs2 fs2Var, fs2 fs2Var2) {
        if (uf2Var == null) {
            return false;
        }
        if (this instanceof sf2) {
            ur5 ur5Var = ((sf2) this).a;
            Object objA = uf2Var.a();
            ur5 ur5Var2 = objA instanceof ur5 ? (ur5) objA : null;
            if (ur5Var2 != null && defpackage.aa4.e(ur5Var.a, ur5Var2.a) && defpackage.aa4.e(ur5Var.b.a(fs2Var), ur5Var2.b.a(fs2Var2))) {
                return true;
            }
        } else if (this instanceof qf2) {
            yo4 yo4Var = ((qf2) this).a;
            Object objA2 = uf2Var.a();
            yo4 yo4Var2 = objA2 instanceof yo4 ? (yo4) objA2 : null;
            if (yo4Var2 != null && defpackage.aa4.e(yo4Var.a, yo4Var2.a) && ((Number) yo4Var.b.a(fs2Var)).doubleValue() == ((Number) yo4Var2.b.a(fs2Var2)).doubleValue()) {
                return true;
            }
        } else if (this instanceof pf2) {
            pm3 pm3Var = ((pf2) this).a;
            Object objA3 = uf2Var.a();
            pm3 pm3Var2 = objA3 instanceof pm3 ? (pm3) objA3 : null;
            if (pm3Var2 != null && defpackage.aa4.e(pm3Var.a, pm3Var2.a) && ((Number) pm3Var.b.a(fs2Var)).longValue() == ((Number) pm3Var2.b.a(fs2Var2)).longValue()) {
                return true;
            }
        } else if (this instanceof mf2) {
            pu puVar = ((mf2) this).a;
            Object objA4 = uf2Var.a();
            pu puVar2 = objA4 instanceof pu ? (pu) objA4 : null;
            if (puVar2 != null && defpackage.aa4.e(puVar.a, puVar2.a) && ((Boolean) puVar.b.a(fs2Var)).booleanValue() == ((Boolean) puVar2.b.a(fs2Var2)).booleanValue()) {
                return true;
            }
        } else if (this instanceof nf2) {
            t30 t30Var = ((nf2) this).a;
            Object objA5 = uf2Var.a();
            t30 t30Var2 = objA5 instanceof t30 ? (t30) objA5 : null;
            if (t30Var2 != null && defpackage.aa4.e(t30Var.a, t30Var2.a) && ((Number) t30Var.b.a(fs2Var)).intValue() == ((Number) t30Var2.b.a(fs2Var2)).intValue()) {
                return true;
            }
        } else if (this instanceof tf2) {
            k56 k56Var = ((tf2) this).a;
            Object objA6 = uf2Var.a();
            k56 k56Var2 = objA6 instanceof k56 ? (k56) objA6 : null;
            if (k56Var2 != null && defpackage.aa4.e(k56Var.a, k56Var2.a) && defpackage.aa4.e(k56Var.b.a(fs2Var), k56Var2.b.a(fs2Var2))) {
                return true;
            }
        } else if (this instanceof of2) {
            cp0 cp0Var = ((of2) this).a;
            Object objA7 = uf2Var.a();
            cp0 cp0Var2 = objA7 instanceof cp0 ? (cp0) objA7 : null;
            if (cp0Var2 != null && defpackage.aa4.e(cp0Var.a, cp0Var2.a) && defpackage.aa4.e(cp0Var.b.a(fs2Var), cp0Var2.b.a(fs2Var2))) {
                return true;
            }
        } else if (this instanceof lf2) {
            jj jjVar = ((lf2) this).a;
            Object objA8 = uf2Var.a();
            jj jjVar2 = objA8 instanceof jj ? (jj) objA8 : null;
            if (jjVar2 != null && defpackage.aa4.e(jjVar.a, jjVar2.a) && defpackage.aa4.e(jjVar.b.a(fs2Var), jjVar2.b.a(fs2Var2))) {
                return true;
            }
        } else {
            if (!(this instanceof rf2)) {
                defpackage.me0.e();
                return false;
            }
            f25 f25Var = ((rf2) this).a;
            Object objA9 = uf2Var.a();
            f25 f25Var2 = objA9 instanceof f25 ? (f25) objA9 : null;
            if (f25Var2 != null && defpackage.aa4.e(f25Var.a.a(fs2Var), f25Var2.a.a(fs2Var2)) && defpackage.aa4.e(f25Var.b, f25Var2.b) && defpackage.aa4.e(f25Var.c, f25Var2.c)) {
                List list = f25Var.d;
                List list2 = f25Var2.d;
                if (list != null) {
                    if (list2 != null && list.size() == list2.size()) {
                        int i = 0;
                        for (Object obj : list) {
                            int i2 = i + 1;
                            if (i < 0) {
                                u96.o();
                                throw null;
                            }
                            if (((xr0) obj).a((xr0) list2.get(i), fs2Var, fs2Var2)) {
                                i = i2;
                            }
                        }
                        if (f25Var.e.a(fs2Var) == f25Var2.e.a(fs2Var2)) {
                            return true;
                        }
                    }
                } else if (list2 == null) {
                    if (f25Var.e.a(fs2Var) == f25Var2.e.a(fs2Var2)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final Object a() {
        if (this instanceof sf2) {
            return ((sf2) this).a;
        }
        if (this instanceof qf2) {
            return ((qf2) this).a;
        }
        if (this instanceof pf2) {
            return ((pf2) this).a;
        }
        if (this instanceof mf2) {
            return ((mf2) this).a;
        }
        if (this instanceof nf2) {
            return ((nf2) this).a;
        }
        if (this instanceof tf2) {
            return ((tf2) this).a;
        }
        if (this instanceof of2) {
            return ((of2) this).a;
        }
        if (this instanceof lf2) {
            return ((lf2) this).a;
        }
        if (this instanceof rf2) {
            return ((rf2) this).a;
        }
        defpackage.me0.e();
        return null;
    }
}
