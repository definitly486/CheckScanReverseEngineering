package com.my.target;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import defpackage.a0a;
import defpackage.d9a;
import defpackage.l3a;
import defpackage.m3a;
import defpackage.n4a;
import defpackage.ou;
import defpackage.pu;
import defpackage.s5a;
import defpackage.y14;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class x0 {
    public final ArrayList a;
    public final d9a b;
    public final float c;
    public final boolean d;
    public WeakReference j;
    public WeakReference k;
    public a l;
    public final m3a f = new ViewTreeObserver.OnScrollChangedListener() { // from class: m3a
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public final void onScrollChanged() {
            this.b.b();
        }
    };
    public boolean g = false;
    public boolean h = false;
    public boolean i = false;
    public final ou e = new ou(this, 2);

    public static abstract class a {
        public abstract void a();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [m3a] */
    public x0(a0a a0aVar, n4a n4aVar, m1.b bVar) {
        x0 x0Var;
        m1.b bVar2;
        float f = a0aVar.a;
        if (f == 1.0f) {
            this.b = d9a.f;
        } else {
            this.b = d9a.a((int) (f * 1000.0f));
        }
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        long j = (long) (a0aVar.c * 1000.0f);
        s5a s5aVarF = n4aVar.f("viewabilityDuration");
        StringBuilder sb = new StringBuilder("ViewabilityDuration stats count = ");
        List list = s5aVarF.b;
        sb.append(list.size());
        y14.r("ViewabilityTracker", sb.toString());
        if (list.isEmpty()) {
            x0Var = this;
            bVar2 = bVar;
        } else {
            x0Var = this;
            bVar2 = bVar;
            arrayList.add(new s0(x0Var, s5aVarF, j, bVar2));
        }
        s5a s5aVarF2 = n4aVar.f("show");
        y14.r("ViewabilityTracker", "Show stats count = " + s5aVarF2.b.size());
        m1.b bVar3 = bVar2;
        arrayList.add(new i1(x0Var, s5aVarF2, j, n4aVar, bVar3));
        s5a s5aVarF3 = n4aVar.f("viewin");
        y14.r("ViewabilityTracker", "View In stats count = " + s5aVarF3.b.size());
        arrayList.add(new g0(x0Var, s5aVarF3));
        s5a s5aVarF4 = n4aVar.f("render");
        y14.r("ViewabilityTracker", "Render stats count = " + s5aVarF4.b.size());
        s5a s5aVarF5 = n4aVar.f("viewabilityMeasurable");
        y14.r("ViewabilityTracker", "ViewabilityMeasurable stats count = " + s5aVarF5.b.size());
        arrayList.add(new u1(x0Var, s5aVarF4, s5aVarF5, bVar3));
        x0Var.c = a0aVar.b * 100.0f;
        x0Var.d = true;
    }

    public final void a(View view, float f, boolean z) {
        boolean z2 = this.h;
        ArrayList arrayList = this.a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((g3) arrayList.get(size)).a(z, f, view.getContext());
        }
        if (z2 == z) {
            return;
        }
        this.h = this.g && z;
    }

    public final void b() {
        WeakReference weakReference = this.j;
        View view = weakReference == null ? null : (View) weakReference.get();
        if (view == null) {
            y14.r("ViewabilityTracker", "Tracking view disappeared");
            e();
            return;
        }
        float fA = l3a.a(view);
        boolean z = y14.a(fA, this.c) != -1;
        y14.r("ViewabilityTracker", "View visibility " + fA + "% (isVisible = " + z + ")");
        if (z) {
            view.getViewTreeObserver().removeOnScrollChangedListener(this.f);
            this.i = true;
        }
        a(view, fA, z);
    }

    public final void c(View view) {
        if (this.g) {
            return;
        }
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty() && this.d) {
            return;
        }
        y14.r("ViewabilityTracker", "start tracking");
        this.g = true;
        this.j = new WeakReference(view);
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((g3) arrayList.get(size)).c();
        }
        b();
        if (this.g) {
            this.b.b(this.e);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                d();
                try {
                    sk skVar = new sk(viewGroup.getContext());
                    l3a.n(skVar, "viewability_view");
                    viewGroup.addView(skVar);
                    y14.r("ViewabilityTracker", "help view added");
                    skVar.setStateChangedListener(new pu(this));
                    this.k = new WeakReference(skVar);
                } catch (Throwable th) {
                    y14.u("ViewabilityTracker", "Unable to add Viewability View - " + th.getMessage());
                    this.k = null;
                }
            }
        }
        if (this.i) {
            return;
        }
        view.getViewTreeObserver().addOnScrollChangedListener(this.f);
    }

    public final void d() {
        WeakReference weakReference = this.k;
        sk skVar = weakReference == null ? null : (sk) weakReference.get();
        this.k = null;
        if (skVar == null) {
            return;
        }
        skVar.setStateChangedListener(null);
        ViewParent parent = skVar.getParent();
        if (parent == null) {
            return;
        }
        ((ViewGroup) parent).removeView(skVar);
        y14.r("ViewabilityTracker", "help view removed");
    }

    public final void e() {
        View view;
        if (this.g) {
            this.g = false;
            y14.r("ViewabilityTracker", "stop tracking");
            d();
            this.b.e(this.e);
            this.h = false;
            WeakReference weakReference = this.j;
            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                view.getViewTreeObserver().removeOnScrollChangedListener(this.f);
            }
            this.j = null;
            ArrayList arrayList = this.a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((g3) arrayList.get(size)).d();
            }
        }
    }
}
