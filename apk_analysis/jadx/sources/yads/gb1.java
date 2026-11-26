package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gb1 {
    public static final boolean a(m31 m31Var, m31 m31Var2) {
        if (m31Var == null) {
            if (m31Var2 == null) {
                return true;
            }
        } else if (!(m31Var instanceof l31)) {
            boolean z = m31Var instanceof h31;
            List list = defpackage.kx2.b;
            if (z) {
                h31 h31Var = (h31) m31Var;
                bi1 bi1Var = h31Var.a;
                List list2 = bi1Var.d;
                if (list2 == null) {
                    list2 = list;
                }
                if (m31Var2 instanceof h31) {
                    h31 h31Var2 = (h31) m31Var2;
                    if (ls2.a(bi1Var.a, h31Var2.a.a) && ls2.a(h31Var.a.b, h31Var2.a.b) && ls2.a(h31Var.a.c, h31Var2.a.c)) {
                        List list3 = h31Var2.a.d;
                        if (list3 != null) {
                            list = list3;
                        }
                        if (list2.size() == list.size()) {
                            int i = 0;
                            for (Object obj : list2) {
                                int i2 = i + 1;
                                if (i < 0) {
                                    u96.o();
                                    throw null;
                                }
                                if (a((wd1) obj, (wd1) list.get(i))) {
                                    i = i2;
                                }
                            }
                            if (ls2.a(h31Var.a.e, h31Var2.a.e) && ls2.a(h31Var.a.f, h31Var2.a.f) && ls2.a(h31Var.a.g, h31Var2.a.g)) {
                                return true;
                            }
                        }
                    }
                }
            } else if (m31Var instanceof i31) {
                i31 i31Var = (i31) m31Var;
                dp1 dp1Var = i31Var.a;
                List list4 = dp1Var.b;
                if (list4 == null) {
                    list4 = list;
                }
                if (m31Var2 instanceof i31) {
                    i31 i31Var2 = (i31) m31Var2;
                    if (ls2.a(dp1Var.a, i31Var2.a.a) && ls2.a(i31Var.a.c, i31Var2.a.c)) {
                        List list5 = i31Var2.a.b;
                        if (list5 != null) {
                            list = list5;
                        }
                        if (list4.size() == list.size()) {
                            int i3 = 0;
                            for (Object obj2 : list4) {
                                int i4 = i3 + 1;
                                if (i3 < 0) {
                                    u96.o();
                                    throw null;
                                }
                                if (a((cp1) obj2, (cp1) list.get(i3))) {
                                    i3 = i4;
                                }
                            }
                            return true;
                        }
                    }
                }
            } else if (!(m31Var instanceof k31)) {
                if (!(m31Var instanceof j31)) {
                    defpackage.me0.e();
                    return false;
                }
                if (m31Var2 instanceof j31) {
                    j31 j31Var = (j31) m31Var;
                    j31 j31Var2 = (j31) m31Var2;
                    if (ls2.a(j31Var.a.a, j31Var2.a.a)) {
                        cr0 cr0Var = j31Var.a.b;
                        cr0 cr0Var2 = j31Var2.a.b;
                        if (cr0Var == null && cr0Var2 == null) {
                            return true;
                        }
                        if (ls2.a(cr0Var != null ? cr0Var.b : null, cr0Var2 != null ? cr0Var2.b : null)) {
                            if (ls2.a(cr0Var != null ? cr0Var.d : null, cr0Var2 != null ? cr0Var2.d : null)) {
                                if (ls2.a(cr0Var != null ? cr0Var.c : null, cr0Var2 != null ? cr0Var2.c : null)) {
                                    if (ls2.a(cr0Var != null ? cr0Var.a : null, cr0Var2 != null ? cr0Var2.a : null)) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            } else if (m31Var2 instanceof k31) {
                k31 k31Var = (k31) m31Var;
                k31 k31Var2 = (k31) m31Var2;
                if (a(k31Var.a.a, k31Var2.a.a) && a(k31Var.a.b, k31Var2.a.b) && ls2.a(k31Var.a.d, k31Var2.a.d)) {
                    gx1 gx1Var = k31Var.a.e;
                    gx1 gx1Var2 = k31Var2.a.e;
                    if (gx1Var == null) {
                        if (gx1Var2 == null) {
                            return true;
                        }
                    } else if (!(gx1Var instanceof ex1)) {
                        if (!(gx1Var instanceof fx1)) {
                            defpackage.me0.e();
                            return false;
                        }
                        if ((gx1Var2 instanceof fx1) && ls2.a(((fx1) gx1Var).a.a, ((fx1) gx1Var2).a.a)) {
                            return true;
                        }
                    } else if (gx1Var2 instanceof ex1) {
                        ex1 ex1Var = (ex1) gx1Var;
                        ex1 ex1Var2 = (ex1) gx1Var2;
                        if (ls2.a(ex1Var.a.a, ex1Var2.a.a) && ls2.a(ex1Var.a.b, ex1Var2.a.b)) {
                            return true;
                        }
                    }
                }
            }
        } else if ((m31Var2 instanceof l31) && ls2.a(((l31) m31Var).a.a, ((l31) m31Var2).a.a)) {
            return true;
        }
        return false;
    }

    public static final boolean a(x02 x02Var, x02 x02Var2) {
        if (x02Var == null) {
            if (x02Var2 == null) {
                return true;
            }
        } else if (x02Var instanceof u02) {
            if (x02Var2 instanceof u02) {
                u02 u02Var = (u02) x02Var;
                u02 u02Var2 = (u02) x02Var2;
                if (ls2.a(u02Var.a.b, u02Var2.a.b) && ls2.a(u02Var.a.a, u02Var2.a.a)) {
                    return true;
                }
            }
        } else {
            if (x02Var instanceof v02) {
                if (x02Var2 instanceof v02) {
                    v02 v02Var = (v02) x02Var;
                    v02 v02Var2 = (v02) x02Var2;
                    if (ls2.a(v02Var.a.c, v02Var2.a.c)) {
                        h12 h12Var = v02Var.a.b;
                        as2 as2Var = h12Var != null ? h12Var.b : null;
                        h12 h12Var2 = v02Var2.a.b;
                        if (ls2.a(as2Var, h12Var2 != null ? h12Var2.b : null)) {
                            h12 h12Var3 = v02Var.a.b;
                            as2 as2Var2 = h12Var3 != null ? h12Var3.a : null;
                            h12 h12Var4 = v02Var2.a.b;
                            if (ls2.a(as2Var2, h12Var4 != null ? h12Var4.a : null)) {
                                h12 h12Var5 = v02Var.a.a;
                                as2 as2Var3 = h12Var5 != null ? h12Var5.b : null;
                                h12 h12Var6 = v02Var2.a.a;
                                if (ls2.a(as2Var3, h12Var6 != null ? h12Var6.b : null)) {
                                    h12 h12Var7 = v02Var.a.a;
                                    as2 as2Var4 = h12Var7 != null ? h12Var7.a : null;
                                    h12 h12Var8 = v02Var2.a.a;
                                    if (ls2.a(as2Var4, h12Var8 != null ? h12Var8.a : null)) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                if (!(x02Var instanceof w02)) {
                    defpackage.me0.e();
                    return false;
                }
                if (x02Var2 instanceof w02) {
                    w02 w02Var = (w02) x02Var;
                    w02 w02Var2 = (w02) x02Var2;
                    if (ls2.a(w02Var.a.a, w02Var2.a.a)) {
                        h12 h12Var9 = w02Var.a.c;
                        as2 as2Var5 = h12Var9 != null ? h12Var9.b : null;
                        h12 h12Var10 = w02Var2.a.c;
                        if (ls2.a(as2Var5, h12Var10 != null ? h12Var10.b : null)) {
                            h12 h12Var11 = w02Var.a.c;
                            as2 as2Var6 = h12Var11 != null ? h12Var11.a : null;
                            h12 h12Var12 = w02Var2.a.c;
                            if (ls2.a(as2Var6, h12Var12 != null ? h12Var12.a : null)) {
                                h12 h12Var13 = w02Var.a.b;
                                as2 as2Var7 = h12Var13 != null ? h12Var13.b : null;
                                h12 h12Var14 = w02Var2.a.b;
                                if (ls2.a(as2Var7, h12Var14 != null ? h12Var14.b : null)) {
                                    h12 h12Var15 = w02Var.a.b;
                                    as2 as2Var8 = h12Var15 != null ? h12Var15.a : null;
                                    h12 h12Var16 = w02Var2.a.b;
                                    if (ls2.a(as2Var8, h12Var16 != null ? h12Var16.a : null)) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final boolean a(x02 x02Var) {
        if (x02Var == null) {
            return true;
        }
        if (x02Var instanceof u02) {
            af1 af1Var = ((u02) x02Var).a;
            if ((af1Var.b instanceof xr2) && (af1Var.a instanceof xr2)) {
                return true;
            }
        } else {
            if (x02Var instanceof v02) {
                v02 v02Var = (v02) x02Var;
                if (ls2.a(v02Var.a.c)) {
                    h12 h12Var = v02Var.a.b;
                    if (ls2.a(h12Var != null ? h12Var.b : null)) {
                        h12 h12Var2 = v02Var.a.b;
                        if (ls2.a(h12Var2 != null ? h12Var2.a : null)) {
                            h12 h12Var3 = v02Var.a.a;
                            if (ls2.a(h12Var3 != null ? h12Var3.b : null)) {
                                h12 h12Var4 = v02Var.a.a;
                                if (ls2.a(h12Var4 != null ? h12Var4.a : null)) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            } else {
                if (!(x02Var instanceof w02)) {
                    defpackage.me0.e();
                    return false;
                }
                w02 w02Var = (w02) x02Var;
                if (ls2.a(w02Var.a.a)) {
                    h12 h12Var5 = w02Var.a.c;
                    if (ls2.a(h12Var5 != null ? h12Var5.b : null)) {
                        h12 h12Var6 = w02Var.a.c;
                        if (ls2.a(h12Var6 != null ? h12Var6.a : null)) {
                            h12 h12Var7 = w02Var.a.b;
                            if (ls2.a(h12Var7 != null ? h12Var7.b : null)) {
                                h12 h12Var8 = w02Var.a.b;
                                if (ls2.a(h12Var8 != null ? h12Var8.a : null)) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final boolean a(af1 af1Var, af1 af1Var2) {
        if (af1Var == null && af1Var2 == null) {
            return true;
        }
        if (ls2.a(af1Var != null ? af1Var.b : null, af1Var2 != null ? af1Var2.b : null)) {
            return ls2.a(af1Var != null ? af1Var.a : null, af1Var2 != null ? af1Var2.a : null);
        }
        return false;
    }

    public static final boolean a(af1 af1Var) {
        if (af1Var == null) {
            return true;
        }
        return (af1Var.b instanceof xr2) && (af1Var.a instanceof xr2);
    }

    public static final boolean a(yc1 yc1Var, yc1 yc1Var2) {
        if (yc1Var == null && yc1Var2 == null) {
            return true;
        }
        if (!ls2.a(yc1Var != null ? yc1Var.c : null, yc1Var2 != null ? yc1Var2.c : null)) {
            return false;
        }
        if (!ls2.a(yc1Var != null ? yc1Var.f : null, yc1Var2 != null ? yc1Var2.f : null)) {
            return false;
        }
        if (!ls2.a(yc1Var != null ? yc1Var.d : null, yc1Var2 != null ? yc1Var2.d : null)) {
            return false;
        }
        if (!ls2.a(yc1Var != null ? yc1Var.a : null, yc1Var2 != null ? yc1Var2.a : null)) {
            return false;
        }
        if (ls2.a(yc1Var != null ? yc1Var.e : null, yc1Var2 != null ? yc1Var2.e : null)) {
            return ls2.a(yc1Var != null ? yc1Var.b : null, yc1Var2 != null ? yc1Var2.b : null);
        }
        return false;
    }

    public static final boolean a(yc1 yc1Var) {
        if (yc1Var == null) {
            return true;
        }
        return (yc1Var.c instanceof xr2) && (yc1Var.f instanceof xr2) && (yc1Var.d instanceof xr2) && (yc1Var.a instanceof xr2) && ls2.a(yc1Var.e) && ls2.a(yc1Var.b);
    }

    public static final boolean a(ru1 ru1Var, ru1 ru1Var2) {
        if (ru1Var == null) {
            if (ru1Var2 == null) {
                return true;
            }
        } else if (ru1Var instanceof pu1) {
            if (ru1Var2 instanceof pu1) {
                pu1 pu1Var = (pu1) ru1Var;
                pu1 pu1Var2 = (pu1) ru1Var2;
                if (ls2.a(pu1Var.a.b, pu1Var2.a.b) && ls2.a(pu1Var.a.a, pu1Var2.a.a)) {
                    return true;
                }
            }
        } else {
            if (!(ru1Var instanceof qu1)) {
                defpackage.me0.e();
                return false;
            }
            if ((ru1Var2 instanceof qu1) && ls2.a(((qu1) ru1Var).a.a, ((qu1) ru1Var2).a.a)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean a(ru1 ru1Var) {
        if (ru1Var == null) {
            return true;
        }
        if (ru1Var instanceof pu1) {
            pu1 pu1Var = (pu1) ru1Var;
            return ls2.a(pu1Var.a.b) && ls2.a(pu1Var.a.b);
        }
        if (ru1Var instanceof qu1) {
            return ((qu1) ru1Var).a.a instanceof xr2;
        }
        defpackage.me0.e();
        return false;
    }

    public static final boolean a(wd1 wd1Var, wd1 wd1Var2) {
        if (wd1Var == null) {
            if (wd1Var2 == null) {
                return true;
            }
        } else {
            if (wd1Var instanceof vd1) {
                return wd1Var2 instanceof vd1;
            }
            if (!(wd1Var instanceof ud1)) {
                defpackage.me0.e();
                return false;
            }
            if ((wd1Var2 instanceof ud1) && ls2.a(((ud1) wd1Var).a.a, ((ud1) wd1Var2).a.a)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:40:0x00bc A[ORIG_RETURN, RETURN] */
    public static final boolean a(tc1 tc1Var, tc1 tc1Var2) {
        if (tc1Var == null) {
            if (tc1Var2 == null) {
                return true;
            }
        } else if (tc1Var2 != null && ls2.a(tc1Var.a.a, tc1Var2.a.a)) {
            f02 f02Var = tc1Var.a.b;
            f02 f02Var2 = tc1Var2.a.b;
            if (f02Var == null) {
                if (f02Var2 == null) {
                    if (a(tc1Var.a.c, tc1Var2.a.c)) {
                        return true;
                    }
                }
            } else if (f02Var instanceof e02) {
                if (f02Var2 instanceof e02) {
                    e02 e02Var = (e02) f02Var;
                    e02 e02Var2 = (e02) f02Var2;
                    if (ls2.a(e02Var.a.a, e02Var2.a.a) && a(e02Var.a.e, e02Var2.a.e) && a(e02Var.a.d, e02Var2.a.d) && a(e02Var.a.c, e02Var2.a.c) && a(e02Var.a.b, e02Var2.a.b)) {
                        if (a(tc1Var.a.c, tc1Var2.a.c)) {
                            return true;
                        }
                    }
                }
            } else if (f02Var instanceof d02) {
                if (f02Var2 instanceof d02) {
                    d02 d02Var = (d02) f02Var;
                    d02 d02Var2 = (d02) f02Var2;
                    if (ls2.a(d02Var.a.a, d02Var2.a.a) && a(d02Var.a.c, d02Var2.a.c) && a(d02Var.a.b, d02Var2.a.b)) {
                        if (a(tc1Var.a.c, tc1Var2.a.c)) {
                            return true;
                        }
                    }
                }
            } else {
                defpackage.me0.e();
            }
        }
        return false;
    }

    public static final boolean a(l42 l42Var, l42 l42Var2) {
        if (l42Var == null && l42Var2 == null) {
            return true;
        }
        if (!ls2.a(l42Var != null ? l42Var.a : null, l42Var2 != null ? l42Var2.a : null)) {
            return false;
        }
        if (ls2.a(l42Var != null ? l42Var.d : null, l42Var2 != null ? l42Var2.d : null)) {
            return ls2.a(l42Var != null ? l42Var.c : null, l42Var2 != null ? l42Var2.c : null);
        }
        return false;
    }

    public static final boolean a(l42 l42Var) {
        if (l42Var == null) {
            return true;
        }
        return (l42Var.a instanceof xr2) && (l42Var.d instanceof xr2) && (l42Var.c instanceof xr2);
    }

    public static final boolean a(ac1 ac1Var, ac1 ac1Var2) {
        if (ac1Var == null && ac1Var2 == null) {
            return true;
        }
        if (ls2.a(ac1Var != null ? ac1Var.a : null, ac1Var2 != null ? ac1Var2.a : null)) {
            return ls2.a(ac1Var != null ? ac1Var.b : null, ac1Var2 != null ? ac1Var2.b : null);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0072  */
    /* JADX WARN: Code duplicated, block: B:35:0x007c A[ORIG_RETURN, RETURN] */
    public static final boolean a(tc1 tc1Var) {
        l42 l42Var;
        if (tc1Var == null) {
            return true;
        }
        g02 g02Var = tc1Var.a;
        if (g02Var.a instanceof xr2) {
            f02 f02Var = g02Var.b;
            if (f02Var != null) {
                if (f02Var instanceof e02) {
                    e02 e02Var = (e02) f02Var;
                    if (ls2.a(e02Var.a.a) && a(e02Var.a.e) && a(e02Var.a.d) && a(e02Var.a.c) && a(e02Var.a.b)) {
                        if (a(tc1Var.a.c)) {
                            return true;
                        }
                    }
                } else if (f02Var instanceof d02) {
                    d02 d02Var = (d02) f02Var;
                    if (ls2.a(d02Var.a.a) && (((l42Var = d02Var.a.c) == null || a(l42Var)) && a(d02Var.a.b))) {
                        if (a(tc1Var.a.c)) {
                            return true;
                        }
                    }
                } else {
                    defpackage.me0.e();
                }
            } else if (a(tc1Var.a.c)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:73:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:98:0x0113 A[RETURN] */
    public static final boolean a(m31 m31Var) {
        cr0 cr0Var;
        gw1 gw1Var;
        ds2 ds2Var;
        boolean z;
        ds2 ds2Var2;
        bi1 bi1Var;
        boolean z2;
        if (m31Var != null) {
            if (m31Var instanceof l31) {
                return ((l31) m31Var).a.a instanceof xr2;
            }
            if (m31Var instanceof h31) {
                h31 h31Var = (h31) m31Var;
                bi1 bi1Var2 = h31Var.a;
                if ((bi1Var2.a instanceof xr2) && (bi1Var2.b instanceof xr2) && (bi1Var2.c instanceof xr2)) {
                    List<wd1> list = bi1Var2.d;
                    if (list != null && !list.isEmpty()) {
                        for (wd1 wd1Var : list) {
                            if (wd1Var == null || (wd1Var instanceof vd1)) {
                                z2 = true;
                            } else if (wd1Var instanceof ud1) {
                                z2 = ((ud1) wd1Var).a.a instanceof xr2;
                            } else {
                                defpackage.me0.e();
                                return false;
                            }
                            if (!z2) {
                            }
                        }
                        bi1Var = h31Var.a;
                        if (bi1Var.e instanceof xr2) {
                        }
                    } else {
                        bi1Var = h31Var.a;
                        if ((bi1Var.e instanceof xr2) || !(bi1Var.f instanceof xr2) || !(bi1Var.g instanceof xr2)) {
                        }
                    }
                }
                return false;
            }
            if (m31Var instanceof i31) {
                dp1 dp1Var = ((i31) m31Var).a;
                if (!(dp1Var.a instanceof xr2) || ((ds2Var2 = dp1Var.c) != null && !(ds2Var2 instanceof y50))) {
                    return false;
                }
            } else {
                if (m31Var instanceof k31) {
                    k31 k31Var = (k31) m31Var;
                    if (a(k31Var.a.a) && a(k31Var.a.b) && ((ds2Var = (gw1Var = k31Var.a).d) == null || (ds2Var instanceof y50))) {
                        gx1 gx1Var = gw1Var.e;
                        if (gx1Var == null) {
                            z = true;
                        } else if (gx1Var instanceof ex1) {
                            af1 af1Var = ((ex1) gx1Var).a;
                            if ((af1Var.a instanceof xr2) && (af1Var.b instanceof xr2)) {
                                z = true;
                            } else {
                                z = false;
                            }
                        } else if (gx1Var instanceof fx1) {
                            z = ((fx1) gx1Var).a.a instanceof xr2;
                        } else {
                            defpackage.me0.e();
                            return false;
                        }
                        if (z) {
                        }
                    }
                    return false;
                }
                if (m31Var instanceof j31) {
                    aq1 aq1Var = ((j31) m31Var).a;
                    if (!(aq1Var.a instanceof xr2) || ((cr0Var = aq1Var.b) != null && (!(cr0Var.b instanceof xr2) || !(cr0Var.d instanceof xr2) || !(cr0Var.c instanceof xr2) || !(cr0Var.a instanceof xr2)))) {
                        return false;
                    }
                } else {
                    defpackage.me0.e();
                    return false;
                }
            }
        }
        return true;
    }

    public static final boolean a(cp1 cp1Var, cp1 cp1Var2) {
        if (cp1Var == null && cp1Var2 == null) {
            return true;
        }
        if (ls2.a(cp1Var != null ? cp1Var.a : null, cp1Var2 != null ? cp1Var2.a : null)) {
            return ls2.a(cp1Var != null ? cp1Var.b : null, cp1Var2 != null ? cp1Var2.b : null);
        }
        return false;
    }

    public static final y30 a(dp1 dp1Var, fs2 fs2Var) {
        List list = dp1Var.b;
        List listN0 = list != null ? defpackage.qn1.n0(list, new fb1(fs2Var)) : null;
        ds2 ds2Var = dp1Var.c;
        if (listN0 == null) {
            if (ds2Var != null) {
                return new y30(defpackage.qn1.s0(ds2Var.a(fs2Var)), null);
            }
            return y30.c;
        }
        int[] iArr = new int[listN0.size()];
        float[] fArr = new float[listN0.size()];
        int size = listN0.size();
        for (int i = 0; i < size; i++) {
            iArr[i] = ((Number) ((cp1) listN0.get(i)).a.a(fs2Var)).intValue();
            fArr[i] = (float) ((Number) ((cp1) listN0.get(i)).b.a(fs2Var)).doubleValue();
        }
        return new y30(iArr, fArr);
    }

    public static final boolean a(jw1 jw1Var, jw1 jw1Var2) {
        if (jw1Var == null) {
            if (jw1Var2 == null) {
                return true;
            }
        } else if (jw1Var instanceof hw1) {
            if (jw1Var2 instanceof hw1) {
                hw1 hw1Var = (hw1) jw1Var;
                hw1 hw1Var2 = (hw1) jw1Var2;
                if (ls2.a(hw1Var.a.a, hw1Var2.a.a) && ls2.a(hw1Var.a.b, hw1Var2.a.b)) {
                    return true;
                }
            }
        } else {
            if (!(jw1Var instanceof iw1)) {
                defpackage.me0.e();
                return false;
            }
            if ((jw1Var2 instanceof iw1) && ls2.a(((iw1) jw1Var).a.a, ((iw1) jw1Var2).a.a)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean a(jw1 jw1Var) {
        if (jw1Var == null) {
            return true;
        }
        if (jw1Var instanceof hw1) {
            uw1 uw1Var = ((hw1) jw1Var).a;
            return (uw1Var.a instanceof xr2) && (uw1Var.b instanceof xr2);
        }
        if (jw1Var instanceof iw1) {
            return ((iw1) jw1Var).a.a instanceof xr2;
        }
        defpackage.me0.e();
        return false;
    }
}
