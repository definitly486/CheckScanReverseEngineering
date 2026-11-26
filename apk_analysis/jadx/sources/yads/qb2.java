package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class qb2 {
    public final k11 a;
    public final k11 b;
    public final as2 c;
    public final as2 d;
    public final br0 e;
    public final as2 f;
    public final String g;
    public final fc2 h;
    public final nv1 i;
    public final as2 j;
    public final List k;

    public qb2(k11 k11Var, k11 k11Var2, as2 as2Var, as2 as2Var2, br0 br0Var, as2 as2Var3, String str, fc2 fc2Var, nv1 nv1Var, as2 as2Var4, List list) {
        this.a = k11Var;
        this.b = k11Var2;
        this.c = as2Var;
        this.d = as2Var2;
        this.e = br0Var;
        this.f = as2Var3;
        this.g = str;
        this.h = fc2Var;
        this.i = nv1Var;
        this.j = as2Var4;
        this.k = list;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x013c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x014a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:74:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:80:0x010a  */
    /* JADX WARN: Code duplicated, block: B:88:0x0123  */
    /* JADX WARN: Code duplicated, block: B:90:0x012b  */
    /* JADX WARN: Code duplicated, block: B:93:0x013a A[LOOP:0: B:86:0x011d->B:93:0x013a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:96:0x0140 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0142 A[RETURN] */
    public final boolean a(qb2 qb2Var, fs2 fs2Var, fs2 fs2Var2) {
        Object obj;
        nv1 nv1Var;
        nv1 nv1Var2;
        boolean zA;
        List list;
        List list2;
        int i;
        int i2;
        Object obj2;
        if (qb2Var == null) {
            return false;
        }
        k11 k11Var = this.a;
        k11 k11Var2 = qb2Var.a;
        if (k11Var != null ? k11Var.a(k11Var2, fs2Var, fs2Var2) : k11Var2 == null) {
            k11 k11Var3 = this.b;
            k11 k11Var4 = qb2Var.b;
            if (k11Var3 != null ? k11Var3.a(k11Var4, fs2Var, fs2Var2) : k11Var4 == null) {
                as2 as2Var = this.c;
                String str = as2Var != null ? (String) as2Var.a(fs2Var) : null;
                as2 as2Var2 = qb2Var.c;
                if (defpackage.aa4.e(str, as2Var2 != null ? (String) as2Var2.a(fs2Var2) : null) && ((Boolean) this.d.a(fs2Var)).booleanValue() == ((Boolean) qb2Var.d.a(fs2Var2)).booleanValue() && this.e.a(qb2Var.e, fs2Var, fs2Var2) && ((Number) this.f.a(fs2Var)).longValue() == ((Number) qb2Var.f.a(fs2Var2)).longValue() && defpackage.aa4.e(this.g, qb2Var.g)) {
                    fc2 fc2Var = this.h;
                    fc2 fc2Var2 = qb2Var.h;
                    fc2Var.getClass();
                    if (fc2Var2 != null) {
                        if (fc2Var instanceof ec2) {
                            if (fc2Var2 instanceof ec2) {
                                obj2 = ((ec2) fc2Var2).a;
                            } else {
                                if (!(fc2Var2 instanceof dc2)) {
                                    defpackage.me0.e();
                                    return false;
                                }
                                obj2 = ((dc2) fc2Var2).a;
                            }
                            if ((obj2 instanceof oc2 ? (oc2) obj2 : null) != null) {
                                nv1Var = this.i;
                                nv1Var2 = qb2Var.i;
                                if (nv1Var != null) {
                                    zA = nv1Var.a(nv1Var2, fs2Var, fs2Var2);
                                } else if (nv1Var2 == null) {
                                    zA = true;
                                } else {
                                    zA = false;
                                }
                                if (zA && this.j.a(fs2Var) == qb2Var.j.a(fs2Var2)) {
                                    list = this.k;
                                    list2 = qb2Var.k;
                                    if (list != null) {
                                        if (list2 == null && list.size() == list2.size()) {
                                            i = 0;
                                            for (Object obj3 : list) {
                                                i2 = i + 1;
                                                if (i >= 0) {
                                                    u96.o();
                                                    throw null;
                                                }
                                                if (!((xr0) obj3).a((xr0) list2.get(i), fs2Var, fs2Var2)) {
                                                    i = i2;
                                                }
                                            }
                                            return true;
                                        }
                                    } else if (list2 == null) {
                                        return true;
                                    }
                                }
                            }
                        } else if (fc2Var instanceof dc2) {
                            if (fc2Var2 instanceof ec2) {
                                obj = ((ec2) fc2Var2).a;
                            } else {
                                if (!(fc2Var2 instanceof dc2)) {
                                    defpackage.me0.e();
                                    return false;
                                }
                                obj = ((dc2) fc2Var2).a;
                            }
                            if ((obj instanceof jc2 ? (jc2) obj : null) != null) {
                                nv1Var = this.i;
                                nv1Var2 = qb2Var.i;
                                if (nv1Var != null) {
                                    zA = nv1Var.a(nv1Var2, fs2Var, fs2Var2);
                                } else if (nv1Var2 == null) {
                                    zA = true;
                                } else {
                                    zA = false;
                                }
                                if (zA) {
                                    list = this.k;
                                    list2 = qb2Var.k;
                                    if (list != null) {
                                        if (list2 == null) {
                                            return false;
                                        }
                                        i = 0;
                                        while (r8.hasNext()) {
                                            i2 = i + 1;
                                            if (i >= 0) {
                                                u96.o();
                                                throw null;
                                            }
                                            if (!((xr0) obj3).a((xr0) list2.get(i), fs2Var, fs2Var2)) {
                                                i = i2;
                                            }
                                        }
                                        return true;
                                    }
                                    if (list2 == null) {
                                        return true;
                                    }
                                }
                            }
                        } else {
                            defpackage.me0.e();
                        }
                    }
                }
            }
        }
        return false;
    }
}
