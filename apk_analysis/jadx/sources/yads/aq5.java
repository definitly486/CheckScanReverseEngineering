package yads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class aq5 implements mt5 {
    public final ArrayList b;
    public final ArrayList c;

    public aq5(ArrayList arrayList, ArrayList arrayList2) {
        this.b = arrayList;
        this.c = arrayList2;
    }

    @Override // yads.mt5
    public final int a(long j) {
        int i;
        ArrayList arrayList = this.c;
        Long lValueOf = Long.valueOf(j);
        int i2 = u56.a;
        int iBinarySearch = Collections.binarySearch(arrayList, lValueOf);
        if (iBinarySearch < 0) {
            i = ~iBinarySearch;
        } else {
            int size = arrayList.size();
            do {
                iBinarySearch++;
                if (iBinarySearch >= size) {
                    break;
                }
            } while (((Comparable) arrayList.get(iBinarySearch)).compareTo(lValueOf) == 0);
            i = iBinarySearch;
        }
        if (i < this.c.size()) {
            return i;
        }
        return -1;
    }

    @Override // yads.mt5
    public final List b(long j) {
        int iA = u56.a(this.c, Long.valueOf(j), false);
        return iA == -1 ? Collections.EMPTY_LIST : (List) this.b.get(iA);
    }

    @Override // yads.mt5
    public final int a() {
        return this.c.size();
    }

    @Override // yads.mt5
    public final long a(int i) {
        if (i >= 0) {
            if (i < this.c.size()) {
                return ((Long) this.c.get(i)).longValue();
            }
            defpackage.mi2.b();
            return 0L;
        }
        defpackage.mi2.b();
        return 0L;
    }
}
