package yads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class hx4 extends f {
    public final int e;
    public final int f;
    public final int[] g;
    public final int[] h;
    public final kx5[] i;
    public final Object[] j;
    public final HashMap k;

    public hx4(ArrayList arrayList, ik5 ik5Var) {
        super(ik5Var);
        int size = arrayList.size();
        this.g = new int[size];
        this.h = new int[size];
        this.i = new kx5[size];
        this.j = new Object[size];
        this.k = new HashMap();
        Iterator it = arrayList.iterator();
        int iB = 0;
        int iA = 0;
        int i = 0;
        while (it.hasNext()) {
            m14 m14Var = (m14) it.next();
            this.i[i] = m14Var.b();
            this.h[i] = iB;
            this.g[i] = iA;
            iB += this.i[i].b();
            iA += this.i[i].a();
            this.j[i] = m14Var.a();
            this.k.put(this.j[i], Integer.valueOf(i));
            i++;
        }
        this.e = iB;
        this.f = iA;
    }

    @Override // yads.kx5
    public final int a() {
        return this.f;
    }

    @Override // yads.kx5
    public final int b() {
        return this.e;
    }
}
