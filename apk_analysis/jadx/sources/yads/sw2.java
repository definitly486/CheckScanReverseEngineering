package yads;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import defpackage.j59;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class sw2 {
    public String A;
    public float A0;
    public String B;
    public float B0;
    public Integer C;
    public String C0;
    public Integer D;
    public String D0;
    public String E;
    public String E0;
    public String F;
    public String F0;
    public Location G;
    public String G0;
    public Integer H;
    public String H0;
    public Integer I;
    public String I0;
    public Float J;
    public String J0;
    public Integer K;
    public Boolean K0;
    public Integer L;
    public String L0;
    public String M;
    public String N;
    public String N0;
    public n8 O;
    public String O0;
    public Integer P;
    public String P0;
    public Integer Q;
    public String Q0;
    public String R;
    public String R0;
    public Boolean S;
    public Boolean S0;
    public Boolean T;
    public Boolean T0;
    public String U;
    public Long U0;
    public Boolean V;
    public Integer V0;
    public String W;
    public String W0;
    public Integer X;
    public String X0;
    public Boolean Y;
    public Long Y0;
    public String Z;
    public Long Z0;
    public final boolean a;
    public String a0;
    public Long a1;
    public String b0;
    public String b1;
    public String c0;
    public Long d0;
    public String e0;
    public String f0;
    public String g0;
    public String h0;
    public String i0;
    public String j0;
    public boolean k;
    public String k0;
    public boolean l;
    public String l0;
    public String m0;
    public String n0;
    public Boolean o;
    public String o0;
    public Boolean p;
    public String p0;
    public String q;
    public List q0;
    public String r;
    public String r0;
    public Integer s;
    public String s0;
    public boolean t;
    public String t0;
    public String u;
    public String u0;
    public String v;
    public int v0;
    public String w;
    public float w0;
    public String x;
    public float x0;
    public String y;
    public float y0;
    public String z;
    public float z0;
    public final zn0 b = new zn0();
    public final zg c = new zg();
    public final gh5 d = new gh5();
    public final fd e = new fd();
    public final o83 f = new o83();
    public final iu5 g = new iu5();
    public final qp0 h = new qp0();
    public final ex5 i = new ex5();
    public final dd6 j = new dd6();
    public final HashMap m = new HashMap();
    public final HashMap n = new HashMap();
    public Map M0 = defpackage.mx2.b;

    public sw2(boolean z) {
        this.a = z;
    }

    public final sw2 a(Context context, String str) {
        this.j0 = this.b.a(context);
        this.b.getClass();
        this.k0 = "android";
        this.b.getClass();
        this.l0 = Build.VERSION.RELEASE;
        this.b.getClass();
        this.m0 = zn0.a();
        this.b.getClass();
        this.n0 = Build.MODEL;
        this.b.b.getClass();
        this.o0 = dv3.a(context.getResources().getConfiguration().locale);
        this.p0 = this.b.b.a(context);
        this.q0 = this.b.b.b(context);
        if (this.a) {
            str = null;
        }
        this.u0 = str;
        this.b.c.getClass();
        this.Y = Boolean.valueOf(kb5.a());
        return this;
    }

    public final sw2 b() {
        zg5 zg5Var;
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
        this.p = zg5Var2.c();
        return this;
    }

    public final sw2 c(Context context) {
        String strValueOf;
        this.r0 = context.getPackageName();
        String str = null;
        try {
            strValueOf = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception unused) {
            strValueOf = null;
        }
        this.s0 = strValueOf;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused2) {
        }
        this.t0 = str;
        return this;
    }

    public final sw2 d(Context context) {
        if (u10.a == null) {
            synchronized (u10.b) {
                try {
                    if (u10.a == null) {
                        u10.a = v10.a(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        w10 w10Var = u10.a;
        if (w10Var != null) {
            this.t = w10Var.a();
            return this;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }

    public final sw2 e(Context context) {
        if (u10.a == null) {
            synchronized (u10.b) {
                try {
                    if (u10.a == null) {
                        u10.a = v10.a(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        w10 w10Var = u10.a;
        if (w10Var != null) {
            this.v = w10Var.b();
            return this;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }

    public final sw2 f(Context context) {
        if (u10.a == null) {
            synchronized (u10.b) {
                try {
                    if (u10.a == null) {
                        u10.a = v10.a(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        w10 w10Var = u10.a;
        if (w10Var != null) {
            this.w = w10Var.d();
            return this;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }

    public final sw2 g(Context context) {
        zg5 zg5Var;
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
        Map map = fe5VarA != null ? fe5VarA.g0 : null;
        if (map != null) {
            this.M0 = map;
        }
        return this;
    }

    public final sw2 h(Context context) {
        zg5 zg5Var;
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
            this.L0 = fe5VarA.f0;
        }
        return this;
    }

    public final sw2 i(Context context) {
        if (u10.a == null) {
            synchronized (u10.b) {
                try {
                    if (u10.a == null) {
                        u10.a = v10.a(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        w10 w10Var = u10.a;
        if (w10Var != null) {
            this.x = w10Var.e();
            return this;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }

    public final sw2 b(Context context) {
        String str;
        w10 w10VarA = u10.a(context);
        synchronized (w10.i) {
            str = w10VarA.h;
        }
        this.y = str;
        return this;
    }

    public final sw2 c() {
        zg5 zg5Var;
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
        this.o = zg5Var2.e();
        return this;
    }

    public final sw2 a() {
        zg5 zg5Var;
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
        zg5Var2.a();
        return this;
    }

    public static boolean a(Context context) {
        zg5 zg5Var;
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
        return fe5VarA != null && fe5VarA.S0;
    }
}
