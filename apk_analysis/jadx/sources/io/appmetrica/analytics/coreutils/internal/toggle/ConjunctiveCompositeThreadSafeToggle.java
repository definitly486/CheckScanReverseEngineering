package io.appmetrica.analytics.coreutils.internal.toggle;

import defpackage.j59;
import defpackage.lt0;
import defpackage.x07;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.control.ToggleObserver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes5.dex */
public final class ConjunctiveCompositeThreadSafeToggle implements Toggle {
    private final ReentrantLock a;
    private final ArrayList b;
    private final HashMap c;
    private final String d;
    private volatile boolean e;

    public ConjunctiveCompositeThreadSafeToggle(List<? extends Toggle> list, String str, ReentrantLock reentrantLock) {
        this.a = reentrantLock;
        this.b = new ArrayList();
        this.c = new HashMap();
        this.d = lt0.d(']', "[ConjunctiveCompositeToggle-", str);
        try {
            access$acquireLock(this);
            for (final Toggle toggle : list) {
                ToggleObserver toggleObserver = new ToggleObserver() { // from class: io.appmetrica.analytics.coreutils.internal.toggle.ConjunctiveCompositeThreadSafeToggle$1$1$observer$1
                    @Override // io.appmetrica.analytics.coreapi.internal.control.ToggleObserver
                    public void onStateChanged(boolean z) {
                        ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle = this.a;
                        Toggle toggle2 = toggle;
                        try {
                            ConjunctiveCompositeThreadSafeToggle.access$acquireLock(conjunctiveCompositeThreadSafeToggle);
                            ConjunctiveCompositeThreadSafeToggle.access$updateState(conjunctiveCompositeThreadSafeToggle, this, z, String.valueOf(x07.a(toggle2.getClass()).f()));
                        } finally {
                            ConjunctiveCompositeThreadSafeToggle.access$releaseLock(conjunctiveCompositeThreadSafeToggle);
                        }
                    }
                };
                this.c.put(toggleObserver, Boolean.valueOf(toggle.getActualState()));
                toggle.registerObserver(toggleObserver, false);
            }
            setActualState(a(this.c.values()));
        } finally {
            access$releaseLock(this);
        }
    }

    private static boolean a(Collection collection) {
        if ((collection instanceof Collection) && collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!((Boolean) it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final void access$acquireLock(ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle) {
        conjunctiveCompositeThreadSafeToggle.getClass();
        boolean zTryLock = false;
        while (!zTryLock) {
            try {
                zTryLock = conjunctiveCompositeThreadSafeToggle.a.tryLock(100L, TimeUnit.MILLISECONDS);
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
            if (!zTryLock) {
                try {
                    Thread.sleep(100L);
                    j59 j59Var2 = j59.a;
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public static final void access$releaseLock(ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle) {
        conjunctiveCompositeThreadSafeToggle.a.unlock();
    }

    public static final void access$updateState(ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle, ToggleObserver toggleObserver, boolean z, String str) {
        conjunctiveCompositeThreadSafeToggle.c.put(toggleObserver, Boolean.valueOf(z));
        boolean zA = a(conjunctiveCompositeThreadSafeToggle.c.values());
        if (zA != conjunctiveCompositeThreadSafeToggle.getActualState()) {
            conjunctiveCompositeThreadSafeToggle.setActualState(zA);
            Iterator it = conjunctiveCompositeThreadSafeToggle.b.iterator();
            while (it.hasNext()) {
                ((ToggleObserver) it.next()).onStateChanged(zA);
            }
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.Toggle
    public boolean getActualState() {
        return this.e;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.Toggle
    public void registerObserver(ToggleObserver toggleObserver, boolean z) {
        try {
            access$acquireLock(this);
            this.b.add(toggleObserver);
            if (z) {
                toggleObserver.onStateChanged(getActualState());
            }
        } finally {
            access$releaseLock(this);
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.Toggle
    public void removeObserver(ToggleObserver toggleObserver) {
        try {
            access$acquireLock(this);
            this.b.remove(toggleObserver);
        } finally {
            access$releaseLock(this);
        }
    }

    public void setActualState(boolean z) {
        this.e = z;
    }

    public String toString() {
        return "ConjunctiveCompositeThreadSafeToggle(toggleStates=" + this.c + ", tag='" + this.d + "', actualState=" + getActualState() + ')';
    }

    public ConjunctiveCompositeThreadSafeToggle(List<? extends Toggle> list, String str) {
        this(list, str, new ReentrantLock());
    }
}
