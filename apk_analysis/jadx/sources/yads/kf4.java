package yads;

import android.os.SystemClock;
import android.view.View;
import defpackage.j59;
import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class kf4 implements View.OnClickListener {
    public final ak a;
    public final a4 b;
    public final dh4 c;
    public final l65 d;
    public final ot3 e;
    public final tz2 f;
    public final defpackage.y22 g = xn.a(rm9.b(), new i90());

    public kf4(ak akVar, a4 a4Var, dh4 dh4Var, l65 l65Var, ot3 ot3Var, tz2 tz2Var) {
        this.a = akVar;
        this.b = a4Var;
        this.c = dh4Var;
        this.d = l65Var;
        this.e = ot3Var;
        this.f = tz2Var;
    }

    public static final j59 a(Throwable th) {
        return j59.a;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        long jElapsedRealtime;
        Long l = this.d.a;
        if (l != null) {
            jElapsedRealtime = SystemClock.elapsedRealtime() - l.longValue();
        } else {
            jElapsedRealtime = 0;
        }
        ot3 ot3Var = this.e;
        if (ot3Var == null || jElapsedRealtime < ot3Var.e || !this.a.e) {
            return;
        }
        h90.a(this.g, new defpackage.zc2(9), new jf4(this, view, null));
    }
}
