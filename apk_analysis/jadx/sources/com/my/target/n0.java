package com.my.target;

import android.os.SystemClock;
import android.view.View;
import defpackage.d9a;
import defpackage.n4a;
import defpackage.s5a;
import defpackage.xl;
import defpackage.y14;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class n0 {
    public long b;
    public final s5a d;
    public final s5a e;
    public WeakReference g;
    public final m1.b h;
    public boolean a = false;
    public final d9a c = d9a.f;
    public final xl f = new xl(this, 6);

    public n0(s5a s5aVar, s5a s5aVar2, m1.b bVar) {
        this.e = s5aVar2;
        this.d = s5aVar;
        this.h = bVar;
    }

    public static n0 a(n4a n4aVar, m1.b bVar) {
        return new n0(n4aVar.e(1), n4aVar.a(1), bVar);
    }

    public final void b(View view) {
        WeakReference weakReference;
        if (view != null || (weakReference = this.g) == null) {
            this.g = new WeakReference(view);
        } else {
            weakReference.clear();
        }
    }

    public final void c() {
        if (this.a) {
            y14.r("ViewabilityBannerTracker", "banner viewability already tracking");
            return;
        }
        this.a = true;
        this.b = SystemClock.elapsedRealtime();
        this.c.b(this.f);
    }

    public final void d() {
        this.c.e(this.f);
        WeakReference weakReference = this.g;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.e.b.clear();
        this.d.b.clear();
        this.g = null;
    }
}
