package com.my.target;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.media3.common.PlaybackException;
import com.my.target.common.MyTargetActivity;
import defpackage.ao9;
import defpackage.cha;
import defpackage.f72;
import defpackage.gg;
import defpackage.i01;
import defpackage.k8a;
import defpackage.kia;
import defpackage.n4a;
import defpackage.s5a;
import defpackage.wv9;
import defpackage.x3;
import defpackage.z94;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class d0 extends r {
    public final wv9 j;
    public final s5a k;
    public WeakReference l;
    public x0 m;
    public final n0 n;
    public e3 o;

    public d0(z94 z94Var, wv9 wv9Var, kia kiaVar, z94.b bVar, z94.b bVar2) {
        super(bVar, z94Var, bVar2);
        this.j = wv9Var;
        n4a n4aVar = wv9Var.a;
        this.n = n0.a(n4aVar, new defpackage.hg(bVar, wv9Var));
        n4aVar.getClass();
        this.k = new s5a(new ArrayList(n4aVar.c), n4aVar.a, null);
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void f(MyTargetActivity myTargetActivity, Intent intent, FrameLayout frameLayout) {
        super.f(myTargetActivity, intent, frameLayout);
        wv9 wv9Var = this.j;
        wv9Var.Q.c(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
        this.o = e3.a(wv9Var, 1, null, frameLayout.getContext());
        g1 w0Var = "mraid".equals(wv9Var.A) ? new w0(frameLayout.getContext()) : new w(frameLayout.getContext());
        this.l = new WeakReference(w0Var);
        w0Var.e(new a(this, wv9Var, this.a, new gg(this), this.c.a.a));
        w0Var.f(wv9Var);
        frameLayout.addView(w0Var.i(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void k() {
        g1 g1Var;
        this.d = true;
        WeakReference weakReference = this.l;
        if (weakReference == null || (g1Var = (g1) weakReference.get()) == null) {
            return;
        }
        g1Var.resume();
        x0 x0Var = this.m;
        if (x0Var != null) {
            x0Var.c(g1Var.i());
        }
        View viewI = g1Var.i();
        n0 n0Var = this.n;
        n0Var.b(viewI);
        n0Var.c();
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void p() {
        g1 g1Var;
        super.p();
        x0 x0Var = this.m;
        if (x0Var != null) {
            x0Var.e();
            this.m = null;
        }
        e3 e3Var = this.o;
        if (e3Var != null) {
            e3Var.f();
        }
        WeakReference weakReference = this.l;
        if (weakReference != null && (g1Var = (g1) weakReference.get()) != null) {
            g1Var.a(this.o != null ? 7000 : 0);
        }
        this.l = null;
        n0 n0Var = this.n;
        n0Var.b(null);
        n0Var.d();
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void q() {
        g1 g1Var;
        this.d = false;
        WeakReference weakReference = this.l;
        if (weakReference != null && (g1Var = (g1) weakReference.get()) != null) {
            g1Var.pause();
        }
        x0 x0Var = this.m;
        if (x0Var != null) {
            x0Var.e();
        }
        this.n.b(null);
    }

    @Override // com.my.target.r
    public final boolean u() {
        return this.j.W;
    }

    public static class a implements g1.a {
        public final d0 a;
        public final wv9 b;
        public final z94.b c;
        public final gg d;
        public final f72 e;

        public a(d0 d0Var, wv9 wv9Var, z94.b bVar, gg ggVar, f72 f72Var) {
            this.a = d0Var;
            this.b = wv9Var;
            this.c = bVar;
            this.e = f72Var;
            this.d = ggVar;
        }

        @Override // com.my.target.g1.a
        public final void a() {
            wv9 wv9Var = this.b;
            n4a n4aVar = wv9Var.a;
            d0 d0Var = this.a;
            m1.d(n4aVar, "error", 1, new x3(d0Var, wv9Var));
            wv9Var.Q.b(null, 0, 0, 5500, null);
            wv9Var.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
            d0Var.t();
        }

        @Override // com.my.target.t1.a
        public final void b(ao9 ao9Var) {
            this.a.b(ao9Var);
        }

        @Override // com.my.target.g1.a
        public final void c(WebView webView) {
            d0 d0Var = this.a;
            if (d0Var.o == null) {
                return;
            }
            WeakReference weakReference = d0Var.l;
            g1 g1Var = weakReference != null ? (g1) weakReference.get() : null;
            if (g1Var == null) {
                return;
            }
            d0Var.o.c(webView, new e3.b[0]);
            View closeButton = g1Var.getCloseButton();
            if (closeButton != null) {
                d0Var.o.e(new e3.b(closeButton));
            }
            d0Var.o.g();
        }

        @Override // com.my.target.g1.a
        public final void d(float f, float f2) {
            d0 d0Var = this.a;
            s5a s5aVar = d0Var.k;
            List list = s5aVar.b;
            if (list.isEmpty()) {
                return;
            }
            float f3 = f2 - f;
            s5a s5aVarA = s5aVar.a();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                k8a k8aVar = (k8a) it.next();
                float f4 = k8aVar.f;
                if (f4 < 0.0f) {
                    float f5 = k8aVar.g;
                    if (f5 >= 0.0f) {
                        f4 = (f2 / 100.0f) * f5;
                    }
                }
                if (f4 >= 0.0f && f4 <= f3) {
                    s5aVarA.b.add(k8aVar);
                    it.remove();
                }
            }
            m1.f(s5aVarA, new gg(d0Var));
        }

        @Override // com.my.target.g1.a
        public final void e() {
            z94 z94Var;
            z94.a aVar;
            d0 d0Var = this.a;
            if (d0Var.e) {
                return;
            }
            d0Var.e = true;
            b3.a aVar2 = d0Var.b;
            if (aVar2 == null || (aVar = (z94Var = z94.this).h) == null) {
                return;
            }
            aVar.b(z94Var);
        }

        @Override // com.my.target.t1.a
        public final void g(ao9 ao9Var, String str, int i, cha chaVar, Context context) {
            e2 e2Var = new e2(this.e);
            boolean zIsEmpty = TextUtils.isEmpty(str);
            wv9 wv9Var = this.b;
            if (zIsEmpty) {
                e2Var.a(wv9Var, i, chaVar, context);
            } else {
                e2Var.b(wv9Var, str, i, chaVar, context);
            }
            z94 z94Var = z94.this;
            z94.a aVar = z94Var.h;
            if (aVar != null) {
                aVar.f(z94Var);
            }
        }

        @Override // com.my.target.g1.a
        public final void l(wv9 wv9Var, String str) {
            m1.d(wv9Var.a, str, 999, new defpackage.ig(this.a, wv9Var));
        }

        @Override // com.my.target.g1.a
        public final void m() {
            this.b.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
            this.a.t();
        }

        @Override // com.my.target.t1.a
        public final void n(double d) {
        }

        @Override // com.my.target.t1.a
        public final void o(ao9 ao9Var, View view) {
            i01.d(new StringBuilder("InterstitialAdHtmlEngine$InterstitialWebViewPresenterListener: Ad shown, banner Id = "), this.b.B, null);
            d0 d0Var = this.a;
            x0 x0Var = d0Var.m;
            if (x0Var != null) {
                x0Var.e();
            }
            wv9 wv9Var = d0Var.j;
            x0 x0Var2 = new x0(wv9Var.b, wv9Var.a, new gg(d0Var));
            d0Var.m = x0Var2;
            if (d0Var.d) {
                x0Var2.c(view);
            }
            i01.d(new StringBuilder("InterstitialAdHtmlEngine: Ad shown, banner Id = "), ao9Var.B, null);
        }

        @Override // com.my.target.t1.a
        public final void e(ao9 ao9Var) {
            ao9Var.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
            m1.d(ao9Var.a, "closedByUser", 999, this.d);
            this.a.t();
        }

        @Override // com.my.target.t1.a
        public final void a(boolean z) {
            this.a.i = z;
        }
    }
}
