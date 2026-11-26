package yads;

import android.net.Uri;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class si2 implements r02 {
    public final nc1 a;
    public final as2 b;
    public final as2 c;
    public final as2 d;
    public final JSONObject e;
    public final as2 f;
    public final String g;
    public final ry0 h;
    public final as2 i;
    public final as2 j;
    public final as2 k;

    static {
        wr2.a(Boolean.TRUE);
        wr2.a(1L);
        wr2.a(800L);
        wr2.a(50L);
    }

    public si2(String str, JSONObject jSONObject, ry0 ry0Var, nc1 nc1Var, as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, as2 as2Var5, as2 as2Var6, as2 as2Var7) {
        this.a = nc1Var;
        this.b = as2Var;
        this.c = as2Var2;
        this.d = as2Var3;
        this.e = jSONObject;
        this.f = as2Var4;
        this.g = str;
        this.h = ry0Var;
        this.i = as2Var5;
        this.j = as2Var6;
        this.k = as2Var7;
    }

    public final boolean a(si2 si2Var, fs2 fs2Var, fs2 fs2Var2) {
        boolean zA;
        boolean zA2;
        if (si2Var == null) {
            return false;
        }
        nc1 nc1Var = this.a;
        nc1 nc1Var2 = si2Var.a;
        if (nc1Var != null) {
            zA = nc1Var.a(nc1Var2, fs2Var, fs2Var2);
        } else {
            zA = nc1Var2 == null;
        }
        if (zA && ((Boolean) this.b.a(fs2Var)).booleanValue() == ((Boolean) si2Var.b.a(fs2Var2)).booleanValue() && defpackage.aa4.e(this.c.a(fs2Var), si2Var.c.a(fs2Var2)) && ((Number) this.d.a(fs2Var)).longValue() == ((Number) si2Var.d.a(fs2Var2)).longValue() && defpackage.aa4.e(this.e, si2Var.e)) {
            as2 as2Var = this.f;
            Uri uri = as2Var != null ? (Uri) as2Var.a(fs2Var) : null;
            as2 as2Var2 = si2Var.f;
            if (defpackage.aa4.e(uri, as2Var2 != null ? (Uri) as2Var2.a(fs2Var2) : null) && defpackage.aa4.e(this.g, si2Var.g)) {
                ry0 ry0Var = this.h;
                ry0 ry0Var2 = si2Var.h;
                if (ry0Var != null) {
                    zA2 = ry0Var.a(ry0Var2, fs2Var, fs2Var2);
                } else {
                    zA2 = ry0Var2 == null;
                }
                if (zA2) {
                    as2 as2Var3 = this.i;
                    Uri uri2 = as2Var3 != null ? (Uri) as2Var3.a(fs2Var) : null;
                    as2 as2Var4 = si2Var.i;
                    if (defpackage.aa4.e(uri2, as2Var4 != null ? (Uri) as2Var4.a(fs2Var2) : null) && ((Number) this.j.a(fs2Var)).longValue() == ((Number) si2Var.j.a(fs2Var2)).longValue() && ((Number) this.k.a(fs2Var)).longValue() == ((Number) si2Var.k.a(fs2Var2)).longValue()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // yads.r02
    public final String b() {
        return this.g;
    }

    @Override // yads.r02
    public final ry0 c() {
        return this.h;
    }

    @Override // yads.r02
    public final as2 d() {
        return this.b;
    }

    @Override // yads.r02
    public final nc1 e() {
        return this.a;
    }

    @Override // yads.r02
    public final as2 f() {
        return this.d;
    }

    @Override // yads.r02
    public final as2 g() {
        return this.c;
    }

    @Override // yads.r02
    public final as2 getUrl() {
        return this.i;
    }

    @Override // yads.r02
    public final JSONObject a() {
        return this.e;
    }
}
