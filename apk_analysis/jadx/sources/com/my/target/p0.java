package com.my.target;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.media3.common.PlaybackException;
import com.my.target.common.MyTargetActivity;
import defpackage.ao9;
import defpackage.cha;
import defpackage.i01;
import defpackage.kha;
import defpackage.ud;
import defpackage.v2a;
import defpackage.xda;
import defpackage.z94;
import defpackage.zc5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class p0 extends r {
    public ArrayList j;
    public WeakReference k;

    public static class a {
        public final p0 a;

        public a(p0 p0Var) {
            this.a = p0Var;
        }

        public final void a(ao9 ao9Var, int i, cha chaVar, Context context) {
            ao9 ao9Var2;
            p0 p0Var = this.a;
            z94 z94Var = p0Var.c;
            if (p0Var.v() == null) {
                return;
            }
            e2 e2Var = new e2(z94Var.a.a);
            if (TextUtils.isEmpty(null)) {
                e2Var.a(ao9Var, i, chaVar, context);
                ao9Var2 = ao9Var;
            } else {
                ao9Var2 = ao9Var;
                e2Var.b(ao9Var2, null, i, chaVar, context);
            }
            z94.b bVar = p0Var.a;
            String str = ao9Var2.B;
            z94 z94Var2 = z94.this;
            z94.a aVar = z94Var2.h;
            if (aVar != null) {
                aVar.f(z94Var2);
            }
            if ((ao9Var2 instanceof xda) && ((xda) ao9Var2).k()) {
                ao9Var2.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
                p0Var.t();
            }
        }

        public final void b(v2a v2aVar, ViewGroup viewGroup) {
            x0 x0Var = v2aVar.d;
            if (x0Var != null) {
                x0Var.e();
            }
            xda xdaVar = v2aVar.a;
            x0 x0Var2 = new x0(xdaVar.b, xdaVar.a, new zc5());
            p0 p0Var = this.a;
            x0Var2.l = new o0(p0Var, v2aVar);
            if (p0Var.d) {
                x0Var2.c(viewGroup);
            }
            v2aVar.d = x0Var2;
            v2aVar.g = true;
            i01.d(new StringBuilder("InterstitialAdDoublePromoEngine: Ad shown, banner Id = "), xdaVar.B, null);
        }
    }

    @Override // com.my.target.r
    public final void b(ao9 ao9Var) {
        ao9Var.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
        m1.d(ao9Var.a, "closedByUser", 1, new ud());
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            if (!((v2a) it.next()).e) {
                return;
            }
        }
        t();
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void f(MyTargetActivity myTargetActivity, Intent intent, FrameLayout frameLayout) {
        super.f(myTargetActivity, intent, frameLayout);
        ArrayList<v2a> arrayList = this.j;
        for (v2a v2aVar : arrayList) {
            xda xdaVar = v2aVar.a;
            xdaVar.Q.c(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
            e3 e3Var = v2aVar.b;
            if (e3Var != null) {
                e3Var.f();
                kha khaVar = xdaVar.Z;
                v2aVar.b = e3.a(xdaVar, khaVar != null ? 3 : 2, khaVar, frameLayout.getContext());
            }
        }
        w1 w1Var = new w1(new j1(frameLayout.getContext()), arrayList, new a(this));
        this.k = new WeakReference(w1Var);
        frameLayout.addView(w1Var.i.getRootLayout(), new FrameLayout.LayoutParams(-1, -1));
        this.j = arrayList;
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void h() {
        t1 t1VarV = v();
        if (t1VarV != null) {
            t1VarV.stop();
        }
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void k() {
        this.d = true;
        t1 t1VarV = v();
        if (t1VarV != null) {
            t1VarV.resume();
            for (v2a v2aVar : this.j) {
                x0 x0Var = v2aVar.d;
                if (x0Var != null) {
                    x0Var.c(t1VarV.i());
                }
                n0 n0Var = v2aVar.c;
                n0Var.b(t1VarV.i());
                n0Var.c();
            }
        }
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void p() {
        super.p();
        WeakReference weakReference = this.k;
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
            this.k.clear();
            this.k = null;
        }
        for (v2a v2aVar : this.j) {
            x0 x0Var = v2aVar.d;
            if (x0Var != null) {
                x0Var.e();
                v2aVar.d = null;
            }
            e3 e3Var = v2aVar.b;
            if (e3Var != null) {
                e3Var.f();
            }
        }
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void q() {
        this.d = false;
        t1 t1VarV = v();
        if (t1VarV != null) {
            t1VarV.pause();
        }
        for (v2a v2aVar : this.j) {
            x0 x0Var = v2aVar.d;
            if (x0Var != null) {
                x0Var.e();
            }
            v2aVar.c.b(null);
        }
    }

    @Override // com.my.target.r
    public final boolean u() {
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            if (!((v2a) it.next()).g) {
                return false;
            }
        }
        return true;
    }

    public final t1 v() {
        WeakReference weakReference = this.k;
        if (weakReference != null) {
            return (t1) weakReference.get();
        }
        return null;
    }
}
