package defpackage;

import android.graphics.Rect;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public final class k07 {
    public final RecyclerView a;
    public final nl3<Integer, Object> b;
    public final nl3<Integer, j59> c;
    public final float d;
    public boolean g;
    public boolean h;
    public Long i;
    public final LinkedHashSet e = new LinkedHashSet();
    public final Rect f = new Rect();
    public final b j = new b();
    public final j07 k = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: j07
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            this.b.c(false);
        }
    };

    public static final class a implements DefaultLifecycleObserver {
        public a() {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onDestroy(LifecycleOwner lifecycleOwner) {
            lifecycleOwner.getClass();
            k07 k07Var = k07.this;
            RecyclerView recyclerView = k07Var.a;
            recyclerView.removeOnScrollListener(k07Var.j);
            if (recyclerView.getViewTreeObserver().isAlive()) {
                recyclerView.getViewTreeObserver().removeOnGlobalLayoutListener(k07Var.k);
            }
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onPause(LifecycleOwner lifecycleOwner) {
            lifecycleOwner.getClass();
            k07 k07Var = k07.this;
            k07Var.g = false;
            k07Var.c(false);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onResume(LifecycleOwner lifecycleOwner) {
            lifecycleOwner.getClass();
            k07 k07Var = k07.this;
            k07Var.g = true;
            k07Var.c(false);
        }
    }

    public static final class b extends RecyclerView.OnScrollListener {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
            recyclerView.getClass();
            k07.this.c((i == 0 && i2 == 0) ? false : true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [j07] */
    public k07(RecyclerView recyclerView, nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, j59> nl3Var2, float f) {
        this.a = recyclerView;
        this.b = nl3Var;
        this.c = nl3Var2;
        this.d = f;
    }

    public final void a(LifecycleOwner lifecycleOwner) {
        b bVar = this.j;
        RecyclerView recyclerView = this.a;
        recyclerView.addOnScrollListener(bVar);
        recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(this.k);
        lifecycleOwner.getLifecycle().addObserver(new a());
    }

    public final void b(boolean z) {
        this.h = z;
        c(false);
    }

    public final void c(boolean z) {
        int childAdapterPosition;
        if (this.g && !this.h) {
            RecyclerView recyclerView = this.a;
            if (recyclerView.isShown()) {
                Long l = this.i;
                LinkedHashSet linkedHashSet = this.e;
                if (l != null) {
                    if (SystemClock.elapsedRealtime() - l.longValue() >= 500) {
                        linkedHashSet.clear();
                    }
                    this.i = null;
                }
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                int childCount = recyclerView.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = recyclerView.getChildAt(i);
                    if (childAt != null && (childAdapterPosition = recyclerView.getChildAdapterPosition(childAt)) != -1) {
                        Object objInvoke = this.b.invoke(Integer.valueOf(childAdapterPosition));
                        f34 f34Var = objInvoke instanceof f34 ? (f34) objInvoke : null;
                        if (f34Var != null && childAt.getWidth() > 0 && childAt.getHeight() > 0) {
                            Rect rect = this.f;
                            if (childAt.getGlobalVisibleRect(rect) && (rect.width() * rect.height()) / (childAt.getWidth() * childAt.getHeight()) >= this.d) {
                                linkedHashSet2.add(Integer.valueOf(f34Var.d()));
                            }
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj : linkedHashSet2) {
                    if (!linkedHashSet.contains(Integer.valueOf(((Number) obj).intValue()))) {
                        arrayList.add(obj);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    this.c.invoke(Integer.valueOf(((Number) it.next()).intValue()));
                }
                if (z) {
                    linkedHashSet.retainAll(linkedHashSet2);
                }
                linkedHashSet.addAll(linkedHashSet2);
                return;
            }
        }
        if (this.i == null) {
            this.i = Long.valueOf(SystemClock.elapsedRealtime());
        }
    }
}
