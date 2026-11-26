package com.my.target;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.media3.common.PlaybackException;
import com.my.target.common.MyTargetActivity;
import defpackage.ao9;
import defpackage.i01;
import defpackage.j1a;
import defpackage.jia;
import defpackage.kia;
import defpackage.v2a;
import defpackage.vy9;
import defpackage.wv9;
import defpackage.xda;
import defpackage.y14;
import defpackage.y3;
import defpackage.z94;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class r implements b3, MyTargetActivity.a {
    public final z94.b a;
    public final b3.a b;
    public final z94 c;
    public boolean d;
    public boolean e;
    public WeakReference f;
    public boolean g;
    public boolean h = false;
    public boolean i = true;

    public r(z94.b bVar, z94 z94Var, z94.b bVar2) {
        this.a = bVar;
        this.c = z94Var;
        this.b = bVar2;
    }

    public static r r(z94 z94Var, ArrayList arrayList, kia kiaVar, z94.b bVar, z94.b bVar2) {
        if (arrayList.size() == 1) {
            return s(z94Var, (jia) arrayList.get(0), kiaVar, bVar, bVar2);
        }
        if (arrayList.size() <= 1) {
            return null;
        }
        ArrayList<xda> arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jia jiaVar = (jia) it.next();
            if (jiaVar instanceof xda) {
                xda xdaVar = (xda) jiaVar;
                if (xdaVar.f0 == 3) {
                    arrayList2.add(xdaVar);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return s(z94Var, (jia) arrayList.get(0), kiaVar, bVar, bVar2);
        }
        if (arrayList2.size() == 1) {
            return s(z94Var, (jia) arrayList2.get(0), kiaVar, bVar, bVar2);
        }
        p0 p0Var = new p0(bVar, z94Var, bVar2);
        p0Var.j = new ArrayList();
        for (xda xdaVar2 : arrayList2) {
            p0Var.j.add(new v2a(xdaVar2, n0.a(xdaVar2.a, new i01(bVar, xdaVar2))));
        }
        return p0Var;
    }

    public static r s(z94 z94Var, jia jiaVar, kia kiaVar, z94.b bVar, z94.b bVar2) {
        if (jiaVar instanceof xda) {
            return new m2(z94Var, (xda) jiaVar, kiaVar, bVar, bVar2);
        }
        if (jiaVar instanceof wv9) {
            return new d0(z94Var, (wv9) jiaVar, kiaVar, bVar, bVar2);
        }
        if (jiaVar instanceof vy9) {
            return new m0(z94Var, (vy9) jiaVar, bVar);
        }
        if (jiaVar instanceof j1a) {
            return new u0(z94Var, (j1a) jiaVar, bVar, bVar2);
        }
        return null;
    }

    @Override // com.my.target.b3
    public final void a(Context context) {
        boolean z = this.g;
        z94.b bVar = this.a;
        if (z) {
            bVar.c();
            y14.r(null, "InterstitialAdEngine: Unable to open Interstitial Ad twice, please dismiss currently showing ad first");
            return;
        }
        if (this.h) {
            bVar.c();
            y14.r(null, "InterstitialAdEngine: Unable to open Interstitial Ad twice, please use another ad object");
            this.c.a.g.a(null, 1, 1, PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED, null);
            return;
        }
        z94 z94Var = z94.this;
        t0.a aVar = z94Var.b;
        t0 t0Var = new t0(aVar.a, "myTarget", 4);
        t0Var.e = aVar.b;
        z94Var.g = t0Var;
        this.g = true;
        MyTargetActivity.f = this;
        Intent intent = new Intent(context, (Class<?>) MyTargetActivity.class);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    public void b(ao9 ao9Var) {
        ao9Var.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
        m1.d(ao9Var.a, "closedByUser", 1, new y3(this, ao9Var));
        t();
    }

    @Override // com.my.target.b3
    public final void destroy() {
        t();
    }

    public void f(MyTargetActivity myTargetActivity, Intent intent, FrameLayout frameLayout) {
        myTargetActivity.setTheme(R.style.Theme.NoTitleBar);
        this.f = new WeakReference(myTargetActivity);
        this.a.d();
    }

    public void h() {
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final boolean i() {
        return u() && this.i;
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void j(MyTargetActivity myTargetActivity) {
        DisplayCutout displayCutout;
        Window window = myTargetActivity.getWindow();
        if (window == null) {
            return;
        }
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(-16777216);
        View decorView = window.getDecorView();
        if (decorView == null) {
            window.setFlags(1024, 1024);
            return;
        }
        decorView.setBackgroundColor(-16777216);
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            displayCutout = null;
        } else if (i >= 29) {
            Display display = decorView.getDisplay();
            if (display == null) {
                window.setFlags(1024, 1024);
                return;
            }
            displayCutout = display.getCutout();
        } else {
            WindowInsets rootWindowInsets = decorView.getRootWindowInsets();
            if (rootWindowInsets == null) {
                window.setFlags(1024, 1024);
                return;
            }
            displayCutout = rootWindowInsets.getDisplayCutout();
        }
        if (displayCutout == null) {
            window.setFlags(1024, 1024);
        }
    }

    public void p() {
        this.g = false;
        this.f = null;
        this.a.a();
    }

    public final void t() {
        this.g = false;
        this.h = true;
        WeakReference weakReference = this.f;
        MyTargetActivity myTargetActivity = weakReference == null ? null : (MyTargetActivity) weakReference.get();
        if (myTargetActivity != null) {
            myTargetActivity.finish();
        }
    }

    public abstract boolean u();

    public final void a(boolean z) {
        this.i = z;
    }
}
