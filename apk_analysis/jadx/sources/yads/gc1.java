package yads;

import android.net.Uri;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class gc1 implements r02 {
    public final as2 a;
    public final nc1 b;
    public final as2 c;
    public final as2 d;
    public final as2 e;
    public final JSONObject f;
    public final as2 g;
    public final String h;
    public final ry0 i;
    public final as2 j;
    public final as2 k;

    static {
        wr2.a(800L);
        wr2.a(Boolean.TRUE);
        wr2.a(1L);
        wr2.a(0L);
    }

    public gc1(String str, JSONObject jSONObject, ry0 ry0Var, nc1 nc1Var, as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, as2 as2Var5, as2 as2Var6, as2 as2Var7) {
        this.a = as2Var;
        this.b = nc1Var;
        this.c = as2Var2;
        this.d = as2Var3;
        this.e = as2Var4;
        this.f = jSONObject;
        this.g = as2Var5;
        this.h = str;
        this.i = ry0Var;
        this.j = as2Var6;
        this.k = as2Var7;
    }

    public final boolean a(gc1 gc1Var, fs2 fs2Var, fs2 fs2Var2) {
        boolean zA;
        boolean zA2;
        if (gc1Var != null && ((Number) this.a.a(fs2Var)).longValue() == ((Number) gc1Var.a.a(fs2Var2)).longValue()) {
            nc1 nc1Var = this.b;
            nc1 nc1Var2 = gc1Var.b;
            if (nc1Var != null) {
                zA = nc1Var.a(nc1Var2, fs2Var, fs2Var2);
            } else {
                zA = nc1Var2 == null;
            }
            if (zA && ((Boolean) this.c.a(fs2Var)).booleanValue() == ((Boolean) gc1Var.c.a(fs2Var2)).booleanValue() && defpackage.aa4.e(this.d.a(fs2Var), gc1Var.d.a(fs2Var2)) && ((Number) this.e.a(fs2Var)).longValue() == ((Number) gc1Var.e.a(fs2Var2)).longValue() && defpackage.aa4.e(this.f, gc1Var.f)) {
                as2 as2Var = this.g;
                Uri uri = as2Var != null ? (Uri) as2Var.a(fs2Var) : null;
                as2 as2Var2 = gc1Var.g;
                if (defpackage.aa4.e(uri, as2Var2 != null ? (Uri) as2Var2.a(fs2Var2) : null) && defpackage.aa4.e(this.h, gc1Var.h)) {
                    ry0 ry0Var = this.i;
                    ry0 ry0Var2 = gc1Var.i;
                    if (ry0Var != null) {
                        zA2 = ry0Var.a(ry0Var2, fs2Var, fs2Var2);
                    } else {
                        zA2 = ry0Var2 == null;
                    }
                    if (zA2) {
                        as2 as2Var3 = this.j;
                        Uri uri2 = as2Var3 != null ? (Uri) as2Var3.a(fs2Var) : null;
                        as2 as2Var4 = gc1Var.j;
                        if (defpackage.aa4.e(uri2, as2Var4 != null ? (Uri) as2Var4.a(fs2Var2) : null) && ((Number) this.k.a(fs2Var)).longValue() == ((Number) gc1Var.k.a(fs2Var2)).longValue()) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // yads.r02
    public final String b() {
        return this.h;
    }

    @Override // yads.r02
    public final ry0 c() {
        return this.i;
    }

    @Override // yads.r02
    public final as2 d() {
        return this.c;
    }

    @Override // yads.r02
    public final nc1 e() {
        return this.b;
    }

    @Override // yads.r02
    public final as2 f() {
        return this.e;
    }

    @Override // yads.r02
    public final as2 g() {
        return this.d;
    }

    @Override // yads.r02
    public final as2 getUrl() {
        return this.j;
    }

    @Override // yads.r02
    public final JSONObject a() {
        return this.f;
    }
}
