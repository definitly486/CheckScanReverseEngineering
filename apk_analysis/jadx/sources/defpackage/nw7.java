package defpackage;

import android.graphics.Rect;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class nw7 {
    public final RecyclerView a;
    public final qw7 b;
    public final nl3<Boolean, j59> c;
    public final nl3<lw7, j59> d;
    public final float e;
    public List<? extends List<? extends sw7>> f;
    public boolean g;
    public boolean h;
    public final Rect i;
    public boolean j;
    public boolean k;
    public Long l;
    public final LinkedHashMap m;
    public final hq n;
    public final b o;
    public final mw7 p;

    public static final class a implements DefaultLifecycleObserver {
        public a() {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onDestroy(LifecycleOwner lifecycleOwner) {
            lifecycleOwner.getClass();
            nw7 nw7Var = nw7.this;
            RecyclerView recyclerView = nw7Var.a;
            recyclerView.removeCallbacks(nw7Var.n);
            recyclerView.removeOnScrollListener(nw7Var.o);
            if (recyclerView.getViewTreeObserver().isAlive()) {
                recyclerView.getViewTreeObserver().removeOnGlobalLayoutListener(nw7Var.p);
            }
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onPause(LifecycleOwner lifecycleOwner) {
            lifecycleOwner.getClass();
            nw7 nw7Var = nw7.this;
            nw7Var.j = false;
            nw7Var.b();
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onResume(LifecycleOwner lifecycleOwner) {
            lifecycleOwner.getClass();
            nw7 nw7Var = nw7.this;
            nw7Var.j = true;
            nw7Var.b();
        }
    }

    public static final class b extends RecyclerView.OnScrollListener {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
            recyclerView.getClass();
            nw7.this.b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [mw7] */
    public nw7(RecyclerView recyclerView, qw7 qw7Var, nl3<? super Boolean, j59> nl3Var, nl3<? super lw7, j59> nl3Var2, float f) {
        qw7Var.getClass();
        nl3Var.getClass();
        this.a = recyclerView;
        this.b = qw7Var;
        this.c = nl3Var;
        this.d = nl3Var2;
        this.e = f;
        this.f = kx2.b;
        this.g = true;
        this.i = new Rect();
        this.m = new LinkedHashMap();
        this.n = new hq(this, 1);
        this.o = new b();
        this.p = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: mw7
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.b.b();
            }
        };
    }

    public final void a(LifecycleOwner lifecycleOwner) {
        b bVar = this.o;
        RecyclerView recyclerView = this.a;
        recyclerView.addOnScrollListener(bVar);
        recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(this.p);
        lifecycleOwner.getLifecycle().addObserver(new a());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0066  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void b() {
        int childAdapterPosition;
        Throwable th;
        long j;
        String str;
        RecyclerView recyclerView = this.a;
        hq hqVar = this.n;
        recyclerView.removeCallbacks(hqVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = this.j;
        LinkedHashMap linkedHashMap = this.m;
        if (!z || this.k || !recyclerView.isShown()) {
            if (this.l == null) {
                this.l = Long.valueOf(jElapsedRealtime);
            }
            linkedHashMap.clear();
            return;
        }
        Long l = this.l;
        Throwable th2 = null;
        qw7 qw7Var = this.b;
        if (l != null) {
            if (jElapsedRealtime - l.longValue() >= 500 && !this.h && !qw7Var.c().isEmpty()) {
                c(false);
            }
            this.l = null;
        }
        this.h = false;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        int size = qw7Var.c().size();
        int childCount = recyclerView.getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = recyclerView.getChildAt(i);
            if (childAt == null || (childAdapterPosition = recyclerView.getChildAdapterPosition(childAt)) == -1) {
                j = jElapsedRealtime;
                th = th2;
            } else {
                List list = (List) qn1.W(childAdapterPosition, this.f);
                if (list == null) {
                    list = kx2.b;
                }
                if (list.isEmpty() || childAt.getWidth() <= 0 || childAt.getHeight() <= 0) {
                    j = jElapsedRealtime;
                    th = th2;
                } else {
                    th = th2;
                    Rect rect = this.i;
                    if (childAt.getGlobalVisibleRect(rect) && (rect.width() * rect.height()) / (childAt.getWidth() * childAt.getHeight()) >= this.e) {
                        Iterator it = qn1.o0(this.f, childAdapterPosition).iterator();
                        int size2 = 0;
                        while (it.hasNext()) {
                            size2 += ((List) it.next()).size();
                        }
                        int i2 = size2 + 1;
                        Iterator it2 = list.iterator();
                        int i3 = 0;
                        while (it2.hasNext()) {
                            Object next = it2.next();
                            int i4 = i3 + 1;
                            if (i3 < 0) {
                                u96.o();
                                throw th;
                            }
                            sw7 sw7Var = (sw7) next;
                            int i5 = i3 + i2;
                            Integer numA = sw7Var.a();
                            if (numA != null) {
                                int iIntValue = numA.intValue();
                                str = sw7Var.b() + StringUtils.PROCESS_POSTFIX_DELIMITER + iIntValue;
                            } else {
                                str = sw7Var.b() + "@" + i5;
                            }
                            linkedHashMap2.put(str, new lw7(sw7Var.a(), sw7Var.b(), i5, size));
                            i3 = i4;
                            it2 = it2;
                            jElapsedRealtime = jElapsedRealtime;
                        }
                    }
                    j = jElapsedRealtime;
                }
            }
            i++;
            th2 = th;
            jElapsedRealtime = j;
        }
        long j2 = jElapsedRealtime;
        Throwable th3 = th2;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            if (!qw7Var.b((String) entry.getKey())) {
                linkedHashMap3.put(entry.getKey(), entry.getValue());
            }
        }
        linkedHashMap.keySet().retainAll(linkedHashMap3.keySet());
        Long lValueOf = th3;
        for (Map.Entry entry2 : linkedHashMap3.entrySet()) {
            String str2 = (String) entry2.getKey();
            lw7 lw7Var = (lw7) entry2.getValue();
            Object objValueOf = linkedHashMap.get(str2);
            if (objValueOf == null) {
                objValueOf = Long.valueOf(j2);
                linkedHashMap.put(str2, objValueOf);
            }
            long jLongValue = j2 - ((Number) objValueOf).longValue();
            if (jLongValue >= 1000) {
                linkedHashMap.remove(str2);
                qw7Var.a(str2);
                this.d.invoke(lw7Var);
            } else {
                long j3 = 1000 - jLongValue;
                lValueOf = Long.valueOf(Math.min(lValueOf != 0 ? lValueOf.longValue() : j3, j3));
            }
        }
        if (lValueOf != 0) {
            recyclerView.postDelayed(hqVar, lValueOf.longValue());
        }
    }

    public final void c(boolean z) {
        if (z) {
            this.b.d();
            this.m.clear();
        }
        this.h = true;
        this.c.invoke(Boolean.valueOf(z));
    }

    public final void d(List<? extends List<? extends sw7>> list) {
        list.getClass();
        this.f = list;
        ArrayList<sw7> arrayListR = kn1.r(list);
        ArrayList arrayList = new ArrayList(kn1.q(arrayListR, 10));
        for (sw7 sw7Var : arrayListR) {
            arrayList.add(new b36(sw7Var.b(), sw7Var.a()));
        }
        if (arrayList.isEmpty()) {
            b();
            return;
        }
        qw7 qw7Var = this.b;
        boolean zEquals = arrayList.equals(qw7Var.c());
        qw7Var.e(arrayList);
        if (!zEquals) {
            c(true);
        } else if (this.g) {
            c(false);
        }
        this.g = false;
        b();
    }
}
