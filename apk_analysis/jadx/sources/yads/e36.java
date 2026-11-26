package yads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes6.dex */
public final class e36 implements mt5 {
    public final a36 b;
    public final long[] c;
    public final Map d;
    public final HashMap e;
    public final HashMap f;

    public e36(a36 a36Var, HashMap map, HashMap map2, HashMap map3) {
        this.b = a36Var;
        this.e = map2;
        this.f = map3;
        this.d = Collections.unmodifiableMap(map);
        TreeSet treeSet = new TreeSet();
        int i = 0;
        a36Var.a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = ((Long) it.next()).longValue();
            i++;
        }
        this.c = jArr;
    }

    @Override // yads.mt5
    public final int a(long j) {
        int iA = u56.a(this.c, j, false);
        if (iA < this.c.length) {
            return iA;
        }
        return -1;
    }

    @Override // yads.mt5
    public final List b(long j) {
        return this.b.a(j, this.d, this.e, this.f);
    }

    @Override // yads.mt5
    public final int a() {
        return this.c.length;
    }

    @Override // yads.mt5
    public final long a(int i) {
        return this.c[i];
    }
}
