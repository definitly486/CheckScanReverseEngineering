package yads;

import defpackage.mfa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class vk6 implements mt5 {
    public final List b;
    public final long[] c;
    public final long[] d;

    public vk6(ArrayList arrayList) {
        this.b = Collections.unmodifiableList(new ArrayList(arrayList));
        this.c = new long[arrayList.size() * 2];
        for (int i = 0; i < arrayList.size(); i++) {
            nk6 nk6Var = (nk6) arrayList.get(i);
            int i2 = i * 2;
            long[] jArr = this.c;
            jArr[i2] = nk6Var.b;
            jArr[i2 + 1] = nk6Var.c;
        }
        long[] jArr2 = this.c;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.d = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    @Override // yads.mt5
    public final long a(int i) {
        if (i < 0) {
            defpackage.mi2.b();
            return 0L;
        }
        long[] jArr = this.d;
        if (i < jArr.length) {
            return jArr[i];
        }
        defpackage.mi2.b();
        return 0L;
    }

    @Override // yads.mt5
    public final List b(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            long[] jArr = this.c;
            int i3 = i2 * 2;
            if (jArr[i3] <= j && j < jArr[i3 + 1]) {
                nk6 nk6Var = (nk6) this.b.get(i2);
                sb0 sb0Var = nk6Var.a;
                if (sb0Var.f == -3.4028235E38f) {
                    arrayList2.add(nk6Var);
                } else {
                    arrayList.add(sb0Var);
                }
            }
        }
        Collections.sort(arrayList2, new mfa());
        while (i < arrayList2.size()) {
            sb0 sb0Var2 = ((nk6) arrayList2.get(i)).a;
            sb0Var2.getClass();
            arrayList.add(new sb0(sb0Var2.b, sb0Var2.c, sb0Var2.d, sb0Var2.e, (-1) - i, 1, sb0Var2.h, sb0Var2.i, sb0Var2.j, sb0Var2.o, sb0Var2.p, sb0Var2.k, sb0Var2.l, sb0Var2.m, sb0Var2.n, sb0Var2.q, sb0Var2.r));
            i++;
            arrayList2 = arrayList2;
        }
        return arrayList;
    }

    @Override // yads.mt5
    public final int a() {
        return this.d.length;
    }

    @Override // yads.mt5
    public final int a(long j) {
        int iA = u56.a(this.d, j, false);
        if (iA < this.d.length) {
            return iA;
        }
        return -1;
    }
}
