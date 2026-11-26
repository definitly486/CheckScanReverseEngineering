package yads;

import android.os.SystemClock;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class ar0 {
    public final ll3 a;
    public final ll3 b;
    public String c;
    public boolean d;
    public Long e;
    public Long f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public Long k;
    public final defpackage.cl4 l = defpackage.nm4.a(defpackage.po4.NONE, zq0.b);

    public ar0(ll3 ll3Var, ll3 ll3Var2) {
        this.a = ll3Var;
        this.b = ll3Var2;
    }

    public final void a() {
        Long l = this.k;
        if (l != null) {
            ((g65) this.l.getValue()).e += SystemClock.uptimeMillis() - l.longValue();
        }
        if (this.d) {
            g65 g65Var = (g65) this.l.getValue();
            n93 n93Var = (n93) this.a.invoke();
            f65 f65Var = (f65) this.b.invoke();
            n93.a(n93Var, "Div.Render.Total", Math.max(g65Var.a, g65Var.b) + g65Var.c + g65Var.d + g65Var.e, this.c, null, f65Var.d, 8);
            n93.a(n93Var, "Div.Render.Measure", g65Var.c, this.c, null, f65Var.a, 8);
            n93.a(n93Var, "Div.Render.Layout", g65Var.d, this.c, null, f65Var.b, 8);
            n93.a(n93Var, "Div.Render.Draw", g65Var.e, this.c, null, f65Var.c, 8);
        }
        this.d = false;
        this.j = null;
        this.i = null;
        this.k = null;
        g65 g65Var2 = (g65) this.l.getValue();
        g65Var2.c = 0L;
        g65Var2.d = 0L;
        g65Var2.e = 0L;
        g65Var2.a = 0L;
        g65Var2.b = 0L;
    }

    public final void b() {
        Long l = this.h;
        g65 g65Var = (g65) this.l.getValue();
        if (l != null) {
            long jUptimeMillis = SystemClock.uptimeMillis() - l.longValue();
            g65Var.b = jUptimeMillis;
            n93.a((n93) this.a.invoke(), "Div.Rebinding", jUptimeMillis, this.c, null, null, 24);
        }
        this.h = null;
    }
}
