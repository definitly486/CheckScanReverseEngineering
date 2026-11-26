package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.internal.SynchronizedObject;
import defpackage.aa4;
import defpackage.ag;
import defpackage.bf3;
import defpackage.j59;
import defpackage.kx2;
import defpackage.mr7;
import defpackage.ox2;
import defpackage.px;
import defpackage.qn1;
import defpackage.xg5;
import defpackage.y68;
import defpackage.z68;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NavigatorState {
    private final xg5<List<NavBackStackEntry>> _backStack;
    private final xg5<Set<NavBackStackEntry>> _transitionsInProgress;
    private final y68<List<NavBackStackEntry>> backStack;
    private final SynchronizedObject backStackLock = new SynchronizedObject();
    private boolean isNavigating;
    private final y68<Set<NavBackStackEntry>> transitionsInProgress;

    public NavigatorState() {
        z68 z68VarA = px.a(kx2.b);
        this._backStack = z68VarA;
        z68 z68VarA2 = px.a(ox2.b);
        this._transitionsInProgress = z68VarA2;
        this.backStack = bf3.b(z68VarA);
        this.transitionsInProgress = bf3.b(z68VarA2);
    }

    public abstract NavBackStackEntry createBackStackEntry(NavDestination navDestination, Bundle bundle);

    public final y68<List<NavBackStackEntry>> getBackStack() {
        return this.backStack;
    }

    public final y68<Set<NavBackStackEntry>> getTransitionsInProgress() {
        return this.transitionsInProgress;
    }

    public final boolean isNavigating() {
        return this.isNavigating;
    }

    public void markTransitionComplete(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        xg5<Set<NavBackStackEntry>> xg5Var = this._transitionsInProgress;
        xg5Var.setValue(mr7.i(xg5Var.getValue(), navBackStackEntry));
    }

    public void onLaunchSingleTop(NavBackStackEntry navBackStackEntry) {
        int iNextIndex;
        navBackStackEntry.getClass();
        synchronized (this.backStackLock) {
            try {
                ArrayList arrayListV0 = qn1.v0(getBackStack().getValue());
                ListIterator listIterator = arrayListV0.listIterator(arrayListV0.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        iNextIndex = -1;
                        break;
                    } else if (aa4.e(((NavBackStackEntry) listIterator.previous()).getId(), navBackStackEntry.getId())) {
                        iNextIndex = listIterator.nextIndex();
                        break;
                    }
                }
                arrayListV0.set(iNextIndex, navBackStackEntry);
                this._backStack.setValue(arrayListV0);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onLaunchSingleTopWithTransition(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        List<NavBackStackEntry> value = this.backStack.getValue();
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        while (listIterator.hasPrevious()) {
            NavBackStackEntry navBackStackEntryPrevious = listIterator.previous();
            if (aa4.e(navBackStackEntryPrevious.getId(), navBackStackEntry.getId())) {
                xg5<Set<NavBackStackEntry>> xg5Var = this._transitionsInProgress;
                xg5Var.setValue(mr7.m(mr7.m(xg5Var.getValue(), navBackStackEntryPrevious), navBackStackEntry));
                onLaunchSingleTop(navBackStackEntry);
                return;
            }
        }
        ag.g("List contains no element matching the predicate.");
    }

    public void pop(NavBackStackEntry navBackStackEntry, boolean z) {
        navBackStackEntry.getClass();
        synchronized (this.backStackLock) {
            try {
                xg5 xg5Var = this._backStack;
                Iterable iterable = (Iterable) this._backStack.getValue();
                ArrayList arrayList = new ArrayList();
                for (Object obj : iterable) {
                    if (aa4.e((NavBackStackEntry) obj, navBackStackEntry)) {
                        break;
                    } else {
                        arrayList.add(obj);
                    }
                }
                xg5Var.setValue(arrayList);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void popWithTransition(NavBackStackEntry navBackStackEntry, boolean z) {
        NavBackStackEntry navBackStackEntryPrevious;
        navBackStackEntry.getClass();
        Set<NavBackStackEntry> value = this._transitionsInProgress.getValue();
        if (!(value instanceof Collection) || !value.isEmpty()) {
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                if (((NavBackStackEntry) it.next()) == navBackStackEntry) {
                    List<NavBackStackEntry> value2 = this.backStack.getValue();
                    if ((value2 instanceof Collection) && value2.isEmpty()) {
                        return;
                    }
                    Iterator<T> it2 = value2.iterator();
                    while (it2.hasNext()) {
                        if (((NavBackStackEntry) it2.next()) == navBackStackEntry) {
                            break;
                        }
                    }
                    return;
                }
            }
        }
        xg5<Set<NavBackStackEntry>> xg5Var = this._transitionsInProgress;
        xg5Var.setValue(mr7.m(xg5Var.getValue(), navBackStackEntry));
        List<NavBackStackEntry> value3 = this.backStack.getValue();
        ListIterator<NavBackStackEntry> listIterator = value3.listIterator(value3.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntryPrevious = null;
                break;
            }
            navBackStackEntryPrevious = listIterator.previous();
            NavBackStackEntry navBackStackEntry2 = navBackStackEntryPrevious;
            if (!aa4.e(navBackStackEntry2, navBackStackEntry) && this.backStack.getValue().lastIndexOf(navBackStackEntry2) < this.backStack.getValue().lastIndexOf(navBackStackEntry)) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry3 = navBackStackEntryPrevious;
        if (navBackStackEntry3 != null) {
            xg5<Set<NavBackStackEntry>> xg5Var2 = this._transitionsInProgress;
            xg5Var2.setValue(mr7.m(xg5Var2.getValue(), navBackStackEntry3));
        }
        pop(navBackStackEntry, z);
    }

    public void prepareForTransition(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        xg5<Set<NavBackStackEntry>> xg5Var = this._transitionsInProgress;
        xg5Var.setValue(mr7.m(xg5Var.getValue(), navBackStackEntry));
    }

    public void push(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        synchronized (this.backStackLock) {
            this._backStack.setValue(qn1.i0(navBackStackEntry, (Collection) this._backStack.getValue()));
            j59 j59Var = j59.a;
        }
    }

    public void pushWithTransition(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        Set<NavBackStackEntry> value = this._transitionsInProgress.getValue();
        if (!(value instanceof Collection) || !value.isEmpty()) {
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                if (((NavBackStackEntry) it.next()) == navBackStackEntry) {
                    List<NavBackStackEntry> value2 = this.backStack.getValue();
                    if (!(value2 instanceof Collection) || !value2.isEmpty()) {
                        Iterator<T> it2 = value2.iterator();
                        while (it2.hasNext()) {
                            if (((NavBackStackEntry) it2.next()) == navBackStackEntry) {
                                return;
                            }
                        }
                        break;
                    }
                    break;
                }
            }
        }
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) qn1.c0(this.backStack.getValue());
        if (navBackStackEntry2 != null) {
            xg5<Set<NavBackStackEntry>> xg5Var = this._transitionsInProgress;
            xg5Var.setValue(mr7.m(xg5Var.getValue(), navBackStackEntry2));
        }
        xg5<Set<NavBackStackEntry>> xg5Var2 = this._transitionsInProgress;
        xg5Var2.setValue(mr7.m(xg5Var2.getValue(), navBackStackEntry));
        push(navBackStackEntry);
    }

    public final void setNavigating(boolean z) {
        this.isNavigating = z;
    }
}
