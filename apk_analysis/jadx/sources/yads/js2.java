package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public abstract class js2 {
    public static final void a(hs2 hs2Var, x02 x02Var, fs2 fs2Var, nl3 nl3Var) {
        as2 as2Var;
        as2 as2Var2;
        as2 as2Var3;
        as2 as2Var4;
        as2 as2Var5;
        as2 as2Var6;
        as2 as2Var7;
        as2 as2Var8;
        if (x02Var != null) {
            if (x02Var instanceof u02) {
                af1 af1Var = ((u02) x02Var).a;
                hs2Var.a(af1Var.b.a(fs2Var, nl3Var));
                hs2Var.a(af1Var.a.a(fs2Var, nl3Var));
                return;
            }
            tp0 tp0VarA = null;
            if (x02Var instanceof v02) {
                pp1 pp1Var = ((v02) x02Var).a;
                as2 as2Var9 = pp1Var.c;
                hs2Var.a(as2Var9 != null ? as2Var9.a(fs2Var, nl3Var) : null);
                h12 h12Var = pp1Var.b;
                hs2Var.a((h12Var == null || (as2Var8 = h12Var.b) == null) ? null : as2Var8.a(fs2Var, nl3Var));
                h12 h12Var2 = pp1Var.b;
                hs2Var.a((h12Var2 == null || (as2Var7 = h12Var2.a) == null) ? null : as2Var7.a(fs2Var, nl3Var));
                h12 h12Var3 = pp1Var.a;
                hs2Var.a((h12Var3 == null || (as2Var6 = h12Var3.b) == null) ? null : as2Var6.a(fs2Var, nl3Var));
                h12 h12Var4 = pp1Var.a;
                if (h12Var4 != null && (as2Var5 = h12Var4.a) != null) {
                    tp0VarA = as2Var5.a(fs2Var, nl3Var);
                }
                hs2Var.a(tp0VarA);
                return;
            }
            if (x02Var instanceof w02) {
                ej2 ej2Var = ((w02) x02Var).a;
                as2 as2Var10 = ej2Var.a;
                hs2Var.a(as2Var10 != null ? as2Var10.a(fs2Var, nl3Var) : null);
                h12 h12Var5 = ej2Var.c;
                hs2Var.a((h12Var5 == null || (as2Var4 = h12Var5.b) == null) ? null : as2Var4.a(fs2Var, nl3Var));
                h12 h12Var6 = ej2Var.c;
                hs2Var.a((h12Var6 == null || (as2Var3 = h12Var6.a) == null) ? null : as2Var3.a(fs2Var, nl3Var));
                h12 h12Var7 = ej2Var.b;
                hs2Var.a((h12Var7 == null || (as2Var2 = h12Var7.b) == null) ? null : as2Var2.a(fs2Var, nl3Var));
                h12 h12Var8 = ej2Var.b;
                if (h12Var8 != null && (as2Var = h12Var8.a) != null) {
                    tp0VarA = as2Var.a(fs2Var, nl3Var);
                }
                hs2Var.a(tp0VarA);
            }
        }
    }

    public static final void a(hs2 hs2Var, tc1 tc1Var, fs2 fs2Var, nl3 nl3Var) {
        if (tc1Var != null) {
            g02 g02Var = tc1Var.a;
            hs2Var.a(g02Var.a.a(fs2Var, nl3Var));
            a(hs2Var, g02Var.b, fs2Var, nl3Var);
            l42 l42Var = g02Var.c;
            if (l42Var == null) {
                return;
            }
            hs2Var.a(l42Var.a.a(fs2Var, nl3Var));
            hs2Var.a(l42Var.d.a(fs2Var, nl3Var));
            hs2Var.a(l42Var.c.a(fs2Var, nl3Var));
        }
    }

    public static final void a(hs2 hs2Var, af1 af1Var, fs2 fs2Var, nl3 nl3Var) {
        if (af1Var == null) {
            return;
        }
        hs2Var.a(af1Var.b.a(fs2Var, nl3Var));
        hs2Var.a(af1Var.a.a(fs2Var, nl3Var));
    }

    public static final void a(hs2 hs2Var, yc1 yc1Var, fs2 fs2Var, nl3 nl3Var) {
        if (yc1Var == null) {
            return;
        }
        hs2Var.a(yc1Var.f.a(fs2Var, nl3Var));
        hs2Var.a(yc1Var.a.a(fs2Var, nl3Var));
        as2 as2Var = yc1Var.e;
        if (as2Var == null && yc1Var.b == null) {
            hs2Var.a(yc1Var.c.a(fs2Var, nl3Var));
            hs2Var.a(yc1Var.d.a(fs2Var, nl3Var));
        } else {
            hs2Var.a(as2Var != null ? as2Var.a(fs2Var, nl3Var) : null);
            as2 as2Var2 = yc1Var.b;
            hs2Var.a(as2Var2 != null ? as2Var2.a(fs2Var, nl3Var) : null);
        }
    }

    public static final void a(hs2 hs2Var, ru1 ru1Var, fs2 fs2Var, nl3 nl3Var) {
        if (ru1Var != null) {
            if (ru1Var instanceof pu1) {
                su1 su1Var = ((pu1) ru1Var).a;
                as2 as2Var = su1Var.b;
                hs2Var.a(as2Var != null ? as2Var.a(fs2Var, nl3Var) : null);
                hs2Var.a(su1Var.a.a(fs2Var, nl3Var));
                return;
            }
            if (ru1Var instanceof qu1) {
                hs2Var.a(((qu1) ru1Var).a.a.a(fs2Var, nl3Var));
            }
        }
    }

    public static final void a(hs2 hs2Var, f02 f02Var, fs2 fs2Var, nl3 nl3Var) {
        if (f02Var != null) {
            if (f02Var instanceof e02) {
                a(hs2Var, ((e02) f02Var).a, fs2Var, nl3Var);
                return;
            }
            if (f02Var instanceof d02) {
                q61 q61Var = ((d02) f02Var).a;
                as2 as2Var = q61Var.a;
                hs2Var.a(as2Var != null ? as2Var.a(fs2Var, nl3Var) : null);
                a(hs2Var, q61Var.b, fs2Var, nl3Var);
                l42 l42Var = q61Var.c;
                if (l42Var == null) {
                    return;
                }
                hs2Var.a(l42Var.a.a(fs2Var, nl3Var));
                hs2Var.a(l42Var.d.a(fs2Var, nl3Var));
                hs2Var.a(l42Var.c.a(fs2Var, nl3Var));
            }
        }
    }

    public static final void a(hs2 hs2Var, gy1 gy1Var, fs2 fs2Var, nl3 nl3Var) {
        if (gy1Var == null) {
            return;
        }
        as2 as2Var = gy1Var.a;
        hs2Var.a(as2Var != null ? as2Var.a(fs2Var, nl3Var) : null);
        a(hs2Var, gy1Var.b, fs2Var, nl3Var);
        a(hs2Var, gy1Var.d, fs2Var, nl3Var);
        a(hs2Var, gy1Var.c, fs2Var, nl3Var);
        l42 l42Var = gy1Var.e;
        if (l42Var == null) {
            return;
        }
        hs2Var.a(l42Var.a.a(fs2Var, nl3Var));
        hs2Var.a(l42Var.d.a(fs2Var, nl3Var));
        hs2Var.a(l42Var.c.a(fs2Var, nl3Var));
    }

    public static final void a(hs2 hs2Var, jw1 jw1Var, fs2 fs2Var, nl3 nl3Var) {
        if (jw1Var != null) {
            if (jw1Var instanceof hw1) {
                hw1 hw1Var = (hw1) jw1Var;
                hs2Var.a(hw1Var.a.a.a(fs2Var, nl3Var));
                hs2Var.a(hw1Var.a.b.a(fs2Var, nl3Var));
            } else if (jw1Var instanceof iw1) {
                hs2Var.a(((iw1) jw1Var).a.a.a(fs2Var, nl3Var));
            }
        }
    }
}
