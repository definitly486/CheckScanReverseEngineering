package yads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class jk0 {
    public final su3 a;
    public final ns b;
    public final int[] c;
    public final int d;
    public final wc0 e;
    public final long f;
    public final int g;
    public final nw4 h;
    public final hk0[] i;
    public er2 j;
    public kc0 k;
    public int l;
    public vs m;
    public boolean n;

    public jk0(dz dzVar, su3 su3Var, kc0 kc0Var, ns nsVar, int i, int[] iArr, er2 er2Var, int i2, wc0 wc0Var, long j, int i3, boolean z, ArrayList arrayList, nw4 nw4Var, rw4 rw4Var) {
        this.a = su3Var;
        this.k = kc0Var;
        this.b = nsVar;
        this.c = iArr;
        this.j = er2Var;
        int i4 = i2;
        this.d = i4;
        this.e = wc0Var;
        this.l = i;
        this.f = j;
        this.g = i3;
        nw4 nw4Var2 = nw4Var;
        this.h = nw4Var2;
        long jA = u56.a(kc0Var.a(i));
        List list = ((au4) this.k.m.get(this.l)).c;
        ArrayList arrayList2 = new ArrayList();
        int i5 = 0;
        for (int i6 : iArr) {
            arrayList2.addAll(((eb) list.get(i6)).c);
        }
        this.i = new hk0[er2Var.length()];
        int i7 = 0;
        while (i7 < this.i.length) {
            o75 o75Var = (o75) arrayList2.get(er2Var.b(i7));
            ms msVarB = nsVar.b(o75Var.b);
            hk0[] hk0VarArr = this.i;
            ms msVar = msVarB == null ? (ms) o75Var.b.get(i5) : msVarB;
            vz2 vz2Var = o75Var.a;
            ((defpackage.ch) dzVar).getClass();
            ez ezVarA = nv.a(i4, vz2Var, z, arrayList, nw4Var2, rw4Var);
            long j2 = jA;
            hk0VarArr[i7] = new hk0(j2, o75Var, msVar, ezVarA, 0L, o75Var.d());
            i7++;
            i4 = i2;
            i5 = i5;
            jA = j2;
            nw4Var2 = nw4Var;
        }
    }
}
