package yads;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import defpackage.j59;
import defpackage.mr7;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import yads.v55;

/* JADX INFO: loaded from: classes6.dex */
public final class v55 {
    public final wb5 a;
    public final HashMap b = new HashMap();
    public final Object c = new Object();
    public final LifecycleEventObserver d = new LifecycleEventObserver() { // from class: ffa
        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            v55.a(this.b, lifecycleOwner, event);
        }
    };

    public v55(wb5 wb5Var) {
        this.a = wb5Var;
    }

    public static final void a(v55 v55Var, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        synchronized (v55Var.c) {
            try {
                if (t55.a[event.ordinal()] == 1) {
                    Set<vq0> set = (Set) v55Var.b.get(lifecycleOwner);
                    if (set != null) {
                        for (vq0 vq0Var : set) {
                            vq0Var.j();
                            wb5 wb5Var = v55Var.a;
                            Set set2 = (Set) wb5Var.d.get(vq0Var);
                            if (set2 != null) {
                                Iterator it = set2.iterator();
                                while (it.hasNext()) {
                                    ub5 ub5Var = (ub5) wb5Var.c.get((String) it.next());
                                    if (ub5Var != null) {
                                        ub5Var.a(vq0Var);
                                    }
                                }
                            }
                            wb5Var.d.remove(vq0Var);
                        }
                    }
                    v55Var.b.remove(lifecycleOwner);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object a(LifecycleOwner lifecycleOwner, vq0 vq0Var) {
        Object objValueOf;
        synchronized (this.c) {
            try {
                boolean zContainsKey = this.b.containsKey(lifecycleOwner);
                HashMap map = this.b;
                if (zContainsKey) {
                    Set set = (Set) map.get(lifecycleOwner);
                    objValueOf = set != null ? Boolean.valueOf(set.add(vq0Var)) : null;
                } else {
                    map.put(lifecycleOwner, mr7.k(vq0Var));
                    lifecycleOwner.getLifecycle().addObserver(this.d);
                    objValueOf = j59.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objValueOf;
    }

    public final void a(vq0 vq0Var) {
        LifecycleOwner lifecycleOwner = vq0Var.l.c;
        if (lifecycleOwner != null) {
            a(lifecycleOwner, vq0Var);
            return;
        }
        if (vq0Var.isAttachedToWindow()) {
            LifecycleOwner lifecycleOwner2 = ViewTreeLifecycleOwner.get(vq0Var);
            if (lifecycleOwner2 != null) {
                a(lifecycleOwner2, vq0Var);
                return;
            } else {
                int i = rv3.a;
                vj5[] vj5VarArr = vj5.b;
                return;
            }
        }
        vq0Var.addOnAttachStateChangeListener(new u55(vq0Var, vq0Var, this));
    }
}
