package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class w11 {
    /* JADX WARN: Code duplicated, block: B:110:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:120:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:123:0x0206 A[LOOP:3: B:116:0x01e8->B:123:0x0206, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:126:0x020c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x020e  */
    /* JADX WARN: Code duplicated, block: B:129:0x022a  */
    /* JADX WARN: Code duplicated, block: B:139:0x026c  */
    /* JADX WARN: Code duplicated, block: B:140:0x0273  */
    /* JADX WARN: Code duplicated, block: B:143:0x0278  */
    /* JADX WARN: Code duplicated, block: B:146:0x0285  */
    /* JADX WARN: Code duplicated, block: B:156:0x0291 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x00c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x0208 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x0291 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x008e  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c1 A[LOOP:1: B:44:0x00a3->B:51:0x00c1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x00c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:67:0x0125  */
    /* JADX WARN: Code duplicated, block: B:68:0x012c  */
    /* JADX WARN: Code duplicated, block: B:71:0x0131  */
    /* JADX WARN: Code duplicated, block: B:74:0x013e  */
    public final boolean a(w11 w11Var, fs2 fs2Var, fs2 fs2Var2) {
        List list;
        List list2;
        as2 as2Var;
        Double d;
        as2 as2Var2;
        int i;
        int i2;
        List list3;
        List list4;
        as2 as2Var3;
        Integer num;
        as2 as2Var4;
        int i3;
        int i4;
        if (w11Var == null) {
            return false;
        }
        if (this instanceof u11) {
            v71 v71Var = ((u11) this).a;
            x11 x11VarA = w11Var.a();
            v71 v71Var2 = x11VarA instanceof v71 ? (v71) x11VarA : null;
            if (v71Var2 != null) {
                List list5 = v71Var.a;
                List list6 = v71Var2.a;
                if (list5 != null) {
                    if (list6 != null && list5.size() == list6.size()) {
                        int i5 = 0;
                        for (Object obj : list5) {
                            int i6 = i5 + 1;
                            if (i5 < 0) {
                                u96.o();
                                throw null;
                            }
                            if (((xr0) obj).a((xr0) list6.get(i5), fs2Var, fs2Var2)) {
                                i5 = i6;
                            }
                        }
                        if (v71Var.b.a(fs2Var) == v71Var2.b.a(fs2Var2) && ((Number) v71Var.c.a(fs2Var)).longValue() == ((Number) v71Var2.c.a(fs2Var2)).longValue()) {
                            list3 = v71Var.d;
                            list4 = v71Var2.d;
                            if (list3 != null) {
                                if (list4 != null && list3.size() == list4.size()) {
                                    i3 = 0;
                                    for (Object obj2 : list3) {
                                        i4 = i3 + 1;
                                        if (i3 >= 0) {
                                            u96.o();
                                            throw null;
                                        }
                                        if (!((xr0) obj2).a((xr0) list4.get(i3), fs2Var, fs2Var2)) {
                                            i3 = i4;
                                        }
                                    }
                                    if (((Number) v71Var.e.a(fs2Var)).intValue() == ((Number) v71Var2.e.a(fs2Var2)).intValue() && defpackage.aa4.e(v71Var.f, v71Var2.f) && v71Var.g.a(fs2Var) == v71Var2.g.a(fs2Var2) && v71Var.h.a(v71Var2.h, fs2Var, fs2Var2) && ((Number) v71Var.i.a(fs2Var)).longValue() == ((Number) v71Var2.i.a(fs2Var2)).longValue()) {
                                        as2Var3 = v71Var.j;
                                        if (as2Var3 != null) {
                                            num = (Integer) as2Var3.a(fs2Var);
                                        } else {
                                            num = null;
                                        }
                                        as2Var4 = v71Var2.j;
                                        if (!defpackage.aa4.e(num, as2Var4 != null ? (Integer) as2Var4.a(fs2Var2) : null) && defpackage.aa4.e(v71Var.k, v71Var2.k)) {
                                            return true;
                                        }
                                    }
                                }
                            } else if (list4 == null) {
                                if (((Number) v71Var.e.a(fs2Var)).intValue() == ((Number) v71Var2.e.a(fs2Var2)).intValue()) {
                                    as2Var3 = v71Var.j;
                                    if (as2Var3 != null) {
                                        num = (Integer) as2Var3.a(fs2Var);
                                    } else {
                                        num = null;
                                    }
                                    as2Var4 = v71Var2.j;
                                    if (!defpackage.aa4.e(num, as2Var4 != null ? (Integer) as2Var4.a(fs2Var2) : null)) {
                                    }
                                }
                            }
                        }
                    }
                } else if (list6 == null) {
                    if (v71Var.b.a(fs2Var) == v71Var2.b.a(fs2Var2)) {
                        list3 = v71Var.d;
                        list4 = v71Var2.d;
                        if (list3 != null) {
                            if (list4 != null) {
                                i3 = 0;
                                while (r1.hasNext()) {
                                    i4 = i3 + 1;
                                    if (i3 >= 0) {
                                        u96.o();
                                        throw null;
                                    }
                                    if (!((xr0) obj2).a((xr0) list4.get(i3), fs2Var, fs2Var2)) {
                                        i3 = i4;
                                    }
                                }
                                if (((Number) v71Var.e.a(fs2Var)).intValue() == ((Number) v71Var2.e.a(fs2Var2)).intValue()) {
                                    as2Var3 = v71Var.j;
                                    if (as2Var3 != null) {
                                        num = (Integer) as2Var3.a(fs2Var);
                                    } else {
                                        num = null;
                                    }
                                    as2Var4 = v71Var2.j;
                                    if (!defpackage.aa4.e(num, as2Var4 != null ? (Integer) as2Var4.a(fs2Var2) : null)) {
                                    }
                                }
                            }
                        } else if (list4 == null) {
                            if (((Number) v71Var.e.a(fs2Var)).intValue() == ((Number) v71Var2.e.a(fs2Var2)).intValue()) {
                                as2Var3 = v71Var.j;
                                if (as2Var3 != null) {
                                    num = (Integer) as2Var3.a(fs2Var);
                                } else {
                                    num = null;
                                }
                                as2Var4 = v71Var2.j;
                                if (!defpackage.aa4.e(num, as2Var4 != null ? (Integer) as2Var4.a(fs2Var2) : null)) {
                                }
                            }
                        }
                    }
                }
            }
        } else {
            if (!(this instanceof v11)) {
                defpackage.me0.e();
                return false;
            }
            fq1 fq1Var = ((v11) this).a;
            x11 x11VarA2 = w11Var.a();
            fq1 fq1Var2 = x11VarA2 instanceof fq1 ? (fq1) x11VarA2 : null;
            if (fq1Var2 != null) {
                List list7 = fq1Var.a;
                List list8 = fq1Var2.a;
                if (list7 != null) {
                    if (list8 != null && list7.size() == list8.size()) {
                        int i7 = 0;
                        for (Object obj3 : list7) {
                            int i8 = i7 + 1;
                            if (i7 < 0) {
                                u96.o();
                                throw null;
                            }
                            if (((xr0) obj3).a((xr0) list8.get(i7), fs2Var, fs2Var2)) {
                                i7 = i8;
                            }
                        }
                        if (fq1Var.b.a(fs2Var) == fq1Var2.b.a(fs2Var2) && ((Number) fq1Var.c.a(fs2Var)).longValue() == ((Number) fq1Var2.c.a(fs2Var2)).longValue()) {
                            list = fq1Var.d;
                            list2 = fq1Var2.d;
                            if (list != null) {
                                if (list2 != null && list.size() == list2.size()) {
                                    i = 0;
                                    for (Object obj4 : list) {
                                        i2 = i + 1;
                                        if (i >= 0) {
                                            u96.o();
                                            throw null;
                                        }
                                        if (!((xr0) obj4).a((xr0) list2.get(i), fs2Var, fs2Var2)) {
                                            i = i2;
                                        }
                                    }
                                    if (((Number) fq1Var.e.a(fs2Var)).doubleValue() == ((Number) fq1Var2.e.a(fs2Var2)).doubleValue() && defpackage.aa4.e(fq1Var.f, fq1Var2.f) && fq1Var.g.a(fs2Var) == fq1Var2.g.a(fs2Var2) && fq1Var.h.a(fq1Var2.h, fs2Var, fs2Var2) && ((Number) fq1Var.i.a(fs2Var)).longValue() == ((Number) fq1Var2.i.a(fs2Var2)).longValue()) {
                                        as2Var = fq1Var.j;
                                        if (as2Var != null) {
                                            d = (Double) as2Var.a(fs2Var);
                                        } else {
                                            d = null;
                                        }
                                        as2Var2 = fq1Var2.j;
                                        if (!defpackage.aa4.b(d, as2Var2 != null ? (Double) as2Var2.a(fs2Var2) : null) && defpackage.aa4.e(fq1Var.k, fq1Var2.k)) {
                                            return true;
                                        }
                                    }
                                }
                            } else if (list2 == null) {
                                if (((Number) fq1Var.e.a(fs2Var)).doubleValue() == ((Number) fq1Var2.e.a(fs2Var2)).doubleValue()) {
                                    as2Var = fq1Var.j;
                                    if (as2Var != null) {
                                        d = (Double) as2Var.a(fs2Var);
                                    } else {
                                        d = null;
                                    }
                                    as2Var2 = fq1Var2.j;
                                    if (!defpackage.aa4.b(d, as2Var2 != null ? (Double) as2Var2.a(fs2Var2) : null)) {
                                    }
                                }
                            }
                        }
                    }
                } else if (list8 == null) {
                    if (fq1Var.b.a(fs2Var) == fq1Var2.b.a(fs2Var2)) {
                        list = fq1Var.d;
                        list2 = fq1Var2.d;
                        if (list != null) {
                            if (list2 != null) {
                                i = 0;
                                while (r1.hasNext()) {
                                    i2 = i + 1;
                                    if (i >= 0) {
                                        u96.o();
                                        throw null;
                                    }
                                    if (!((xr0) obj4).a((xr0) list2.get(i), fs2Var, fs2Var2)) {
                                        i = i2;
                                    }
                                }
                                if (((Number) fq1Var.e.a(fs2Var)).doubleValue() == ((Number) fq1Var2.e.a(fs2Var2)).doubleValue()) {
                                    as2Var = fq1Var.j;
                                    if (as2Var != null) {
                                        d = (Double) as2Var.a(fs2Var);
                                    } else {
                                        d = null;
                                    }
                                    as2Var2 = fq1Var2.j;
                                    if (!defpackage.aa4.b(d, as2Var2 != null ? (Double) as2Var2.a(fs2Var2) : null)) {
                                    }
                                }
                            }
                        } else if (list2 == null) {
                            if (((Number) fq1Var.e.a(fs2Var)).doubleValue() == ((Number) fq1Var2.e.a(fs2Var2)).doubleValue()) {
                                as2Var = fq1Var.j;
                                if (as2Var != null) {
                                    d = (Double) as2Var.a(fs2Var);
                                } else {
                                    d = null;
                                }
                                as2Var2 = fq1Var2.j;
                                if (!defpackage.aa4.b(d, as2Var2 != null ? (Double) as2Var2.a(fs2Var2) : null)) {
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final x11 a() {
        if (this instanceof u11) {
            return ((u11) this).a;
        }
        if (this instanceof v11) {
            return ((v11) this).a;
        }
        defpackage.me0.e();
        return null;
    }
}
