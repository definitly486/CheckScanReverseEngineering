package androidx.room;

import defpackage.ah;
import defpackage.ir7;
import defpackage.l1;
import defpackage.ox2;
import defpackage.ra8;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ObserverWrapper {
    private final InvalidationTracker.Observer observer;
    private final Set<String> singleTableSet;
    private final int[] tableIds;
    private final String[] tableNames;

    public ObserverWrapper(InvalidationTracker.Observer observer, int[] iArr, String[] strArr) {
        observer.getClass();
        iArr.getClass();
        strArr.getClass();
        this.observer = observer;
        this.tableIds = iArr;
        this.tableNames = strArr;
        if (iArr.length == strArr.length) {
            this.singleTableSet = !(strArr.length == 0) ? l1.f(strArr[0]) : ox2.b;
        } else {
            ah.f("Check failed.");
            throw null;
        }
    }

    public final InvalidationTracker.Observer getObserver$room_runtime() {
        return this.observer;
    }

    public final int[] getTableIds$room_runtime() {
        return this.tableIds;
    }

    public final void notifyByTableIds$room_runtime(Set<Integer> set) {
        set.getClass();
        int[] iArr = this.tableIds;
        int length = iArr.length;
        Set<String> setD = ox2.b;
        if (length != 0) {
            int i = 0;
            if (length != 1) {
                ir7 ir7Var = new ir7();
                int[] iArr2 = this.tableIds;
                int length2 = iArr2.length;
                int i2 = 0;
                while (i < length2) {
                    int i3 = i2 + 1;
                    if (set.contains(Integer.valueOf(iArr2[i]))) {
                        ir7Var.add(this.tableNames[i2]);
                    }
                    i++;
                    i2 = i3;
                }
                setD = l1.d(ir7Var);
            } else if (set.contains(Integer.valueOf(iArr[0]))) {
                setD = this.singleTableSet;
            }
        }
        if (setD.isEmpty()) {
            return;
        }
        this.observer.onInvalidated(setD);
    }

    public final void notifyByTableNames$room_runtime(Set<String> set) {
        set.getClass();
        int length = this.tableNames.length;
        Set<String> setD = ox2.b;
        if (length != 0) {
            if (length == 1) {
                Set<String> set2 = set;
                if (!(set2 instanceof Collection) || !set2.isEmpty()) {
                    Iterator<T> it = set2.iterator();
                    while (it.hasNext()) {
                        if (ra8.v((String) it.next(), this.tableNames[0], true)) {
                            setD = this.singleTableSet;
                            break;
                        }
                    }
                }
            } else {
                ir7 ir7Var = new ir7();
                for (String str : set) {
                    for (String str2 : this.tableNames) {
                        if (ra8.v(str2, str, true)) {
                            ir7Var.add(str2);
                            break;
                        }
                    }
                }
                setD = l1.d(ir7Var);
            }
        }
        if (setD.isEmpty()) {
            return;
        }
        this.observer.onInvalidated(setD);
    }
}
