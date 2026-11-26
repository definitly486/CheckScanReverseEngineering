package com.my.target;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.media3.common.PlaybackException;
import com.iab.omid.library.corpmailru.adsession.CreativeType;
import com.my.target.common.MyTargetActivity;
import defpackage.ao9;
import defpackage.cha;
import defpackage.fo9;
import defpackage.i01;
import defpackage.jia;
import defpackage.k8a;
import defpackage.kha;
import defpackage.kia;
import defpackage.n4a;
import defpackage.n5;
import defpackage.p5;
import defpackage.rd0;
import defpackage.s5a;
import defpackage.vy9;
import defpackage.wv9;
import defpackage.x3;
import defpackage.xda;
import defpackage.y14;
import defpackage.z94;
import defpackage.zu;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class m2 extends r {
    public final s5a j;
    public final n0 k;
    public e3 l;
    public xda m;
    public WeakReference n;
    public x0 o;

    public static class b {
        public final m2 a;

        public b(m2 m2Var) {
            this.a = m2Var;
        }

        public final void a(float f) {
            m2 m2Var = this.a;
            b3.a aVar = m2Var.b;
            if (aVar != null) {
                String str = m2Var.m.B;
                z94.b bVar = (z94.b) aVar;
                if (y14.a(bVar.a, f) != 0) {
                    bVar.a = f;
                }
            }
        }

        public final void b() {
            m2 m2Var = this.a;
            b3.a aVar = m2Var.b;
            if (aVar != null) {
                String str = m2Var.m.B;
                z94 z94Var = z94.this;
                z94.a aVar2 = z94Var.h;
                if (aVar2 != null) {
                    aVar2.b(z94Var);
                }
            }
            if (!m2Var.e) {
                m2Var.e = true;
            }
            jia jiaVar = m2Var.m.a0;
            t1 t1VarW = m2Var.w();
            ViewParent parent = t1VarW != null ? t1VarW.i().getParent() : null;
            if (jiaVar == null || !(parent instanceof ViewGroup)) {
                return;
            }
            int i = m2Var.m.f0;
            ViewGroup viewGroup = (ViewGroup) parent;
            t1 t1VarW2 = m2Var.w();
            if (t1VarW2 != null) {
                t1VarW2.destroy();
            }
            if (jiaVar instanceof wv9) {
                viewGroup.removeAllViews();
                e3 e3Var = m2Var.l;
                if (i == 3) {
                    if (e3Var != null) {
                        e3Var.f();
                    }
                    e3 e3VarA = e3.a(jiaVar, 2, null, viewGroup.getContext());
                    m2Var.l = e3VarA;
                    b0 b0Var = new b0(new s(e3VarA, viewGroup.getContext()), (wv9) jiaVar, new a(m2Var));
                    m2Var.n = new WeakReference(b0Var);
                    viewGroup.addView(b0Var.b, new FrameLayout.LayoutParams(-1, -1));
                    return;
                }
                if (e3Var != null) {
                    e3Var.f();
                }
                m2Var.l = e3.a(jiaVar, 2, null, viewGroup.getContext());
                g1 w0Var = "mraid".equals(jiaVar.A) ? new w0(viewGroup.getContext()) : new w(viewGroup.getContext());
                m2Var.n = new WeakReference(w0Var);
                w0Var.e(new a(m2Var));
                w0Var.f((wv9) jiaVar);
                viewGroup.addView(w0Var.i(), new FrameLayout.LayoutParams(-1, -1));
                return;
            }
            if (!(jiaVar instanceof vy9)) {
                if (jiaVar instanceof xda) {
                    viewGroup.removeAllViews();
                    m2Var.v((xda) jiaVar, viewGroup);
                    return;
                }
                return;
            }
            viewGroup.removeAllViews();
            e3 e3Var2 = m2Var.l;
            if (i == 3) {
                vy9 vy9Var = (vy9) jiaVar;
                if (e3Var2 != null) {
                    e3Var2.f();
                }
                s sVar = new s(m2Var.l, viewGroup.getContext());
                m2Var.l = e3.a(vy9Var, 2, null, viewGroup.getContext());
                j0 j0Var = new j0(sVar, vy9Var, new a(m2Var));
                m2Var.n = new WeakReference(j0Var);
                viewGroup.addView(j0Var.g, new FrameLayout.LayoutParams(-1, -1));
                return;
            }
            vy9 vy9Var2 = (vy9) jiaVar;
            if (e3Var2 != null) {
                e3Var2.f();
            }
            m2Var.l = e3.a(vy9Var2, 2, null, viewGroup.getContext());
            a0 a0Var = new a0(new ha(viewGroup.getContext()), new a(m2Var));
            m2Var.n = new WeakReference(a0Var);
            a0Var.a(vy9Var2);
            viewGroup.addView(a0Var.c.a(), new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public m2(z94 z94Var, xda xdaVar, kia kiaVar, z94.b bVar, z94.b bVar2) {
        super(bVar, z94Var, bVar2);
        this.m = xdaVar;
        n4a n4aVar = xdaVar.a;
        this.k = n0.a(n4aVar, new i01(bVar, xdaVar));
        n4aVar.getClass();
        this.j = new s5a(new ArrayList(n4aVar.c), n4aVar.a, null);
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void f(MyTargetActivity myTargetActivity, Intent intent, FrameLayout frameLayout) {
        super.f(myTargetActivity, intent, frameLayout);
        v(this.m, frameLayout);
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void h() {
        t1 t1VarW = w();
        if (t1VarW != null) {
            t1VarW.stop();
        }
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void k() {
        this.d = true;
        t1 t1VarW = w();
        if (t1VarW != null) {
            t1VarW.resume();
            x0 x0Var = this.o;
            if (x0Var != null) {
                x0Var.c(t1VarW.i());
            }
            View viewI = t1VarW.i();
            n0 n0Var = this.k;
            n0Var.b(viewI);
            n0Var.c();
        }
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void p() {
        super.p();
        if (this.m.S <= 0.0f && !this.e) {
            this.e = true;
        }
        WeakReference weakReference = this.n;
        if (weakReference != null) {
            t1 t1Var = (t1) weakReference.get();
            if (t1Var != null) {
                View viewI = t1Var.i();
                ViewParent parent = viewI.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(viewI);
                }
                t1Var.destroy();
            }
            this.n.clear();
            this.n = null;
        }
        x0 x0Var = this.o;
        if (x0Var != null) {
            x0Var.e();
            this.o = null;
        }
        e3 e3Var = this.l;
        if (e3Var != null) {
            e3Var.f();
        }
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void q() {
        this.d = false;
        t1 t1VarW = w();
        if (t1VarW != null) {
            t1VarW.pause();
        }
        x0 x0Var = this.o;
        if (x0Var != null) {
            x0Var.e();
        }
        this.k.b(null);
    }

    @Override // com.my.target.r
    public final boolean u() {
        return this.m.W;
    }

    public final void v(xda xdaVar, ViewGroup viewGroup) {
        xda xdaVar2;
        t1 w2Var;
        t1 t1Var;
        z1 z1Var;
        yj yjVar;
        c3 c3Var;
        e3 e3Var = this.l;
        if (e3Var != null) {
            e3Var.f();
        }
        xdaVar.Q.c(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
        kha khaVar = xdaVar.Z;
        e3 e3VarA = e3.a(xdaVar, khaVar != null ? 3 : 2, khaVar, viewGroup.getContext());
        this.l = e3VarA;
        int i = xdaVar.f0;
        if (i == 2) {
            c3Var = new c3(new f3(xdaVar.X, e3VarA, viewGroup.getContext()), xdaVar, new a(this), new b(this), new rd0(this, xdaVar));
            xdaVar2 = xdaVar;
            t2 t2Var = c3Var.l;
            if (t2Var != null) {
                boolean z = t2Var.c.Y;
                c3 c3Var2 = t2Var.b;
                if (z) {
                    t1Var = c3Var;
                    c3Var2.l();
                    t2Var.i();
                    t1Var = c3Var;
                } else {
                    t1Var = c3Var;
                    hg hgVar = c3Var2.e;
                    hgVar.d(true);
                    hgVar.a(0, null);
                    hgVar.e(false);
                    c3Var2.g.setVisible(false);
                    t1Var = c3Var;
                }
            }
        } else {
            xdaVar2 = xdaVar;
            if (i == 3) {
                z1Var = new z1(new s(e3VarA, viewGroup.getContext()), xdaVar2, new a(this), new b(this), new defpackage.m5(this, xdaVar2));
                kha khaVar2 = z1Var.n;
                if (khaVar2 != null && (yjVar = z1Var.o) != null) {
                    if (khaVar2.Y) {
                        w2Var = z1Var;
                        w2Var = z1Var;
                        z1Var.v();
                        w2Var = z1Var;
                    } else {
                        w2Var = z1Var;
                        w2Var = z1Var;
                        yjVar.e();
                        w2Var = z1Var;
                    }
                }
            } else {
                w2Var = new w2(new x2(e3VarA, viewGroup.getContext()), xdaVar2, new a(this), new b(this), new n5(this, xdaVar2), viewGroup.getContext());
            }
            w2Var = z1Var;
            w2Var = z1Var;
            w2Var = z1Var;
            t1Var = w2Var;
        }
        t1Var = c3Var;
        this.n = new WeakReference(t1Var);
        viewGroup.addView(t1Var.i(), new FrameLayout.LayoutParams(-1, -1));
        this.m = xdaVar2;
    }

    public final t1 w() {
        WeakReference weakReference = this.n;
        if (weakReference != null) {
            return (t1) weakReference.get();
        }
        return null;
    }

    public static class a implements g1.a {
        public final m2 a;

        public a(m2 m2Var) {
            this.a = m2Var;
        }

        @Override // com.my.target.g1.a
        public final void a() {
            m2 m2Var = this.a;
            xda xdaVar = m2Var.m;
            m1.d(xdaVar.a, "error", 1, new x3(m2Var, xdaVar));
            xdaVar.Q.b(null, 0, 0, 5500, null);
            m2Var.m.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
            m2Var.t();
        }

        @Override // com.my.target.t1.a
        public final void b(ao9 ao9Var) {
            this.a.b(ao9Var);
        }

        @Override // com.my.target.g1.a
        public final void c(WebView webView) {
            m2 m2Var = this.a;
            e3 e3Var = m2Var.l;
            if (e3Var == null || e3Var.a != CreativeType.HTML_DISPLAY) {
                return;
            }
            e3Var.c(webView, new e3.b[0]);
            t1 t1VarW = m2Var.w();
            if (t1VarW == null) {
                return;
            }
            View closeButton = t1VarW.getCloseButton();
            if (closeButton != null) {
                m2Var.l.e(new e3.b(closeButton));
            }
            m2Var.l.g();
        }

        @Override // com.my.target.g1.a
        public final void d(float f, float f2) {
            m2 m2Var = this.a;
            s5a s5aVar = m2Var.j;
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
            m1.f(s5aVarA, new p5(m2Var, 5));
        }

        @Override // com.my.target.t1.a
        public final void e(ao9 ao9Var) {
            m2 m2Var = this.a;
            m2Var.getClass();
            ao9Var.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
            m1.d(ao9Var.a, "closedByUser", 999, null);
            m2Var.t();
        }

        @Override // com.my.target.t1.a
        public final void g(ao9 ao9Var, String str, int i, cha chaVar, Context context) {
            ao9 ao9Var2;
            int i2;
            if (ao9Var != null) {
                m2 m2Var = this.a;
                z94 z94Var = m2Var.c;
                if (m2Var.w() == null) {
                    return;
                }
                e2 e2Var = new e2(z94Var.a.a);
                if (TextUtils.isEmpty(str)) {
                    e2Var.a(ao9Var, i, chaVar, context);
                    ao9Var2 = ao9Var;
                    i2 = i;
                } else {
                    ao9Var2 = ao9Var;
                    i2 = i;
                    e2Var.b(ao9Var2, str, i2, chaVar, context);
                }
                boolean z = ao9Var2 instanceof fo9;
                if (z) {
                    m1.d(m2Var.m.a, (i2 != 2 || m2Var.m.G == null) ? "click" : "ctaClick", 2, null);
                }
                z94.b bVar = m2Var.a;
                String str2 = m2Var.m.B;
                z94 z94Var2 = z94.this;
                z94.a aVar = z94Var2.h;
                if (aVar != null) {
                    aVar.f(z94Var2);
                }
                if ((z || (ao9Var2 instanceof xda)) && m2Var.m.k()) {
                    m2Var.m.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
                    m2Var.t();
                }
            }
        }

        @Override // com.my.target.g1.a
        public final void l(wv9 wv9Var, String str) {
            this.a.getClass();
            m1.d(wv9Var.a, str, 999, null);
        }

        @Override // com.my.target.g1.a
        public final void m() {
        }

        @Override // com.my.target.t1.a
        public final void n(double d) {
            this.a.getClass();
        }

        @Override // com.my.target.t1.a
        public final void o(ao9 ao9Var, View view) {
            m2 m2Var = this.a;
            x0 x0Var = m2Var.o;
            if (x0Var != null) {
                x0Var.e();
            }
            x0 x0Var2 = new x0(ao9Var.b, ao9Var.a, new zu(m2Var));
            m2Var.o = x0Var2;
            x0Var2.l = new k2(m2Var, view);
            if (m2Var.d) {
                x0Var2.c(view);
            }
            i01.d(new StringBuilder("InterstitialAdPromoEngine: Ad shown, banner Id = "), ao9Var.B, null);
        }

        @Override // com.my.target.g1.a
        public final void e() {
            m2 m2Var = this.a;
            if (m2Var.e) {
                return;
            }
            m2Var.e = true;
        }

        @Override // com.my.target.t1.a
        public final void a(boolean z) {
            this.a.i = z;
        }
    }
}
