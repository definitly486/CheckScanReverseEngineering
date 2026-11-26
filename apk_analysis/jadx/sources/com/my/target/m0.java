package com.my.target;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.media3.common.PlaybackException;
import com.my.target.common.MyTargetActivity;
import defpackage.ao9;
import defpackage.cha;
import defpackage.eh;
import defpackage.fh;
import defpackage.i01;
import defpackage.n4a;
import defpackage.vy9;
import defpackage.wy9;
import defpackage.z94;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class m0 extends r {
    public final vy9 j;
    public final n0 k;
    public x0 l;
    public WeakReference m;
    public e3 n;

    public static class a implements t1.a {
        public final m0 a;

        public a(m0 m0Var) {
            this.a = m0Var;
        }

        @Override // com.my.target.t1.a
        public final void a(boolean z) {
            this.a.i = z;
        }

        @Override // com.my.target.t1.a
        public final void b(ao9 ao9Var) {
            this.a.b(ao9Var);
        }

        @Override // com.my.target.t1.a
        public final void e(ao9 ao9Var) {
            ao9Var.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
            n4a n4aVar = ao9Var.a;
            m0 m0Var = this.a;
            m1.d(n4aVar, "closedByUser", 999, new fh(m0Var));
            m0Var.t();
        }

        @Override // com.my.target.t1.a
        public final void g(ao9 ao9Var, String str, int i, cha chaVar, Context context) {
            m0 m0Var = this.a;
            e2 e2Var = new e2(m0Var.c.a.a);
            vy9 vy9Var = m0Var.j;
            e2Var.a(vy9Var, i, chaVar, context);
            z94 z94Var = z94.this;
            z94.a aVar = z94Var.h;
            if (aVar != null) {
                aVar.f(z94Var);
            }
            vy9Var.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
            m0Var.t();
        }

        @Override // com.my.target.t1.a
        public final void n(double d) {
        }

        @Override // com.my.target.t1.a
        public final void o(ao9 ao9Var, View view) {
            i01.d(new StringBuilder("InterstitialAdImagineEngine$InterstitialImageListener: Ad shown, banner Id = "), ao9Var.B, null);
            m0 m0Var = this.a;
            x0 x0Var = m0Var.l;
            if (x0Var != null) {
                x0Var.e();
            }
            vy9 vy9Var = m0Var.j;
            x0 x0Var2 = new x0(vy9Var.b, vy9Var.a, new fh(m0Var));
            m0Var.l = x0Var2;
            x0Var2.l = new l0(m0Var, view);
            if (m0Var.d) {
                x0Var2.c(view);
            }
            i01.d(new StringBuilder("InterstitialAdImagineEngine: Ad shown, banner Id = "), ao9Var.B, null);
        }
    }

    public m0(z94 z94Var, vy9 vy9Var, z94.b bVar) {
        super(bVar, z94Var, null);
        this.j = vy9Var;
        this.k = n0.a(vy9Var.a, new eh());
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void f(MyTargetActivity myTargetActivity, Intent intent, FrameLayout frameLayout) {
        super.f(myTargetActivity, intent, frameLayout);
        vy9 vy9Var = this.j;
        vy9Var.Q.c(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
        this.n = e3.a(vy9Var, 2, null, frameLayout.getContext());
        Context context = frameLayout.getContext();
        a0 a0Var = new a0(vy9Var.P.b ? new ja(context) : new ha(context), new a(this));
        this.m = new WeakReference(a0Var);
        a0Var.a(vy9Var);
        frameLayout.addView(a0Var.c.a(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void k() {
        a0 a0Var;
        this.d = true;
        WeakReference weakReference = this.m;
        if (weakReference == null || (a0Var = (a0) weakReference.get()) == null) {
            return;
        }
        wy9 wy9Var = a0Var.c;
        x0 x0Var = this.l;
        if (x0Var != null) {
            x0Var.c(wy9Var.a());
        }
        View viewA = wy9Var.a();
        n0 n0Var = this.k;
        n0Var.b(viewA);
        n0Var.c();
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void p() {
        super.p();
        x0 x0Var = this.l;
        if (x0Var != null) {
            x0Var.e();
            this.l = null;
        }
        e3 e3Var = this.n;
        if (e3Var != null) {
            e3Var.f();
        }
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void q() {
        this.d = false;
        x0 x0Var = this.l;
        if (x0Var != null) {
            x0Var.e();
        }
        this.k.b(null);
    }

    @Override // com.my.target.r
    public final boolean u() {
        return this.j.W;
    }
}
