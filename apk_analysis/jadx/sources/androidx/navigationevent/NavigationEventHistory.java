package androidx.navigationevent;

import defpackage.aa4;
import defpackage.ar4;
import defpackage.i2;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.n7;
import defpackage.nn1;
import defpackage.qg;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class NavigationEventHistory {
    private final int currentIndex;
    private final List<NavigationEventInfo> mergedHistory;

    /* JADX WARN: Multi-variable type inference failed */
    private NavigationEventHistory(List<? extends NavigationEventInfo> list, int i) {
        this.mergedHistory = list;
        this.currentIndex = i;
        if (list.isEmpty() && i == -1) {
            return;
        }
        if (!list.isEmpty()) {
            int size = list.size();
            if (i >= 0 && i < size) {
                return;
            }
        }
        i2.e(n7.c(i, "Invalid 'NavigationEventHistory' state:  'currentIndex' must be within the bounds of 'mergedHistory' (or -1 if empty). Received: currentIndex = '", "', bounds = '"), u96.f(list), "'.");
        throw null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NavigationEventHistory.class != obj.getClass()) {
            return false;
        }
        NavigationEventHistory navigationEventHistory = (NavigationEventHistory) obj;
        return this.currentIndex == navigationEventHistory.currentIndex && aa4.e(this.mergedHistory, navigationEventHistory.mergedHistory);
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    public final List<NavigationEventInfo> getMergedHistory() {
        return this.mergedHistory;
    }

    public int hashCode() {
        return this.mergedHistory.hashCode() + (this.currentIndex * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NavigationEventHistory(currentIndex=");
        sb.append(this.currentIndex);
        sb.append(", mergedHistory=");
        return qg.f(sb, this.mergedHistory, ')');
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventHistory(NavigationEventInfo navigationEventInfo, List<? extends NavigationEventInfo> list) {
        this(navigationEventInfo, list, null, 4, null);
        navigationEventInfo.getClass();
        list.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventHistory(NavigationEventInfo navigationEventInfo) {
        this(navigationEventInfo, null, null, 6, null);
        navigationEventInfo.getClass();
    }

    public NavigationEventHistory() {
        this(kx2.b, -1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ NavigationEventHistory(NavigationEventInfo navigationEventInfo, List list, List list2, int i, jh2 jh2Var) {
        int i2 = i & 2;
        kx2 kx2Var = kx2.b;
        this(navigationEventInfo, i2 != 0 ? kx2Var : list, (i & 4) != 0 ? kx2Var : list2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationEventHistory(NavigationEventInfo navigationEventInfo, List<? extends NavigationEventInfo> list, List<? extends NavigationEventInfo> list2) {
        navigationEventInfo.getClass();
        list.getClass();
        list2.getClass();
        ar4 ar4VarE = u96.e();
        nn1.s(list, ar4VarE);
        ar4VarE.add(navigationEventInfo);
        nn1.s(list2, ar4VarE);
        this(u96.d(ar4VarE), list.size());
    }
}
