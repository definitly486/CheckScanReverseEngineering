package yads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import defpackage.j48;
import defpackage.j59;
import defpackage.nl3;
import defpackage.t17;
import java.lang.ref.WeakReference;
import yads.hh1;

/* JADX INFO: loaded from: classes6.dex */
public final class hh1 extends oh2 {
    public final oi1 b;
    public final jv1 c;
    public final bo2 d;

    public hh1(v41 v41Var, oi1 oi1Var, jv1 jv1Var, bo2 bo2Var) {
        super(v41Var);
        this.b = oi1Var;
        this.c = jv1Var;
        this.d = bo2Var;
    }

    @Override // yads.oh2
    public final void a(final nh1 nh1Var, tt ttVar, final eh1 eh1Var, eh1 eh1Var2) {
        final vq0 vq0Var = ttVar.a;
        final fs2 fs2Var = ttVar.b;
        final ao2 ao2VarA = this.d.a(vq0Var.Q, vq0Var.O);
        pq.a(nh1Var, ttVar, eh1Var.b, eh1Var.d, eh1Var.A, eh1Var.q, eh1Var.x, eh1Var.w, eh1Var.G, eh1Var.F, eh1Var.c, eh1Var.l);
        tq.a(nh1Var, eh1Var.i, eh1Var2 != null ? eh1Var2.i : null, fs2Var);
        nh1Var.m.a(eh1Var.K.b(fs2Var, new defpackage.ny2(nh1Var, 6)));
        a(nh1Var, fs2Var, eh1Var.n, eh1Var.o);
        nh1Var.m.a(eh1Var.u.b(fs2Var, new nl3() { // from class: gx9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return hh1.a(this.b, nh1Var, vq0Var, fs2Var, eh1Var, ao2VarA, (Uri) obj);
            }
        }));
    }

    public static final void a(hh1 hh1Var, nh1 nh1Var, uw uwVar) {
        hh1Var.getClass();
        new fh1(new WeakReference(nh1Var), uwVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static final j59 a(nh1 nh1Var, vi1 vi1Var) {
        nh1Var.setImageScale(jf2.a(vi1Var));
        return j59.a;
    }

    public static final j59 a(hh1 hh1Var, nh1 nh1Var, vq0 vq0Var, fs2 fs2Var, eh1 eh1Var, ao2 ao2Var, Uri uri) {
        hh1Var.a(nh1Var, vq0Var, fs2Var, eh1Var, ao2Var);
        return j59.a;
    }

    public static final j59 a(hh1 hh1Var, nh1 nh1Var, fs2 fs2Var, as2 as2Var, as2 as2Var2, Object obj) {
        hh1Var.getClass();
        nh1Var.setGravity(jf2.a((f11) as2Var.a(fs2Var), (h11) as2Var2.a(fs2Var)));
        return j59.a;
    }

    public final void a(final nh1 nh1Var, final fs2 fs2Var, final as2 as2Var, final as2 as2Var2) {
        nh1Var.setGravity(jf2.a((f11) as2Var.a(fs2Var), (h11) as2Var2.a(fs2Var)));
        nl3 nl3Var = new nl3() { // from class: hx9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return hh1.a(this.b, nh1Var, fs2Var, as2Var, as2Var2, obj);
            }
        };
        nh1Var.m.a(as2Var.a(fs2Var, nl3Var));
        nh1Var.m.a(as2Var2.a(fs2Var, nl3Var));
    }

    public final void a(nh1 nh1Var, vq0 vq0Var, fs2 fs2Var, eh1 eh1Var, ao2 ao2Var) {
        Uri uri = (Uri) eh1Var.u.a(fs2Var);
        if (defpackage.aa4.e(uri, nh1Var.n)) {
            return;
        }
        nh1Var.o();
        du3 du3Var = nh1Var.h;
        if (du3Var != null) {
            du3Var.cancel();
        }
        jv1 jv1Var = this.c;
        as2 as2Var = eh1Var.H;
        jv1Var.a(nh1Var, ao2Var, as2Var != null ? (String) as2Var.a(fs2Var) : null, ((Number) eh1Var.D.a(fs2Var)).intValue(), false, new t17(nh1Var, 2), new j48(nh1Var, 4));
        nh1Var.setGifUrl$mobileads_externalRelease(uri);
        du3 du3VarA = this.b.a(uri.toString(), new gh1(vq0Var, this, nh1Var));
        vq0Var.a(du3VarA);
        nh1Var.setLoadReference$mobileads_externalRelease(du3VarA);
    }

    public static final j59 a(nh1 nh1Var, Drawable drawable) {
        if (!nh1Var.l() && !nh1Var.m()) {
            nh1Var.setPlaceholder(drawable);
        }
        return j59.a;
    }

    public static final j59 a(nh1 nh1Var, hd3 hd3Var) {
        if (!nh1Var.l()) {
            if (hd3Var instanceof gd3) {
                nh1Var.setPreview(((gd3) hd3Var).a);
            }
            nh1Var.n();
        }
        return j59.a;
    }
}
