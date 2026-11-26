package yads;

import android.os.Handler;
import androidx.media3.common.C;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class e84 extends h50 {
    public static final p04 r;
    public final cs[] k;
    public final kx5[] l;
    public final ArrayList m;
    public final dk0 n;
    public int o;
    public long[][] p;
    public d84 q;

    static {
        e04 e04Var = new e04();
        le3 le3Var = oe3.c;
        k55 k55Var = k55.f;
        r = new p04("MergingMediaSource", new g04(e04Var), null, new j04(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, -3.4028235E38f, -3.4028235E38f), t04.H, m04.d);
    }

    public e84(cs... csVarArr) {
        dk0 dk0Var = new dk0();
        this.k = csVarArr;
        this.n = dk0Var;
        this.m = new ArrayList(Arrays.asList(csVarArr));
        this.o = -1;
        this.l = new kx5[csVarArr.length];
        this.p = new long[0][];
        new HashMap();
        h20.a(8, "expectedKeys");
        new bd4().a().a();
    }

    @Override // yads.cs
    public final z04 a(h14 h14Var, aj0 aj0Var, long j) {
        int length = this.k.length;
        z04[] z04VarArr = new z04[length];
        int iA = this.l[0].a(h14Var.a);
        for (int i = 0; i < length; i++) {
            z04VarArr[i] = this.k[i].a(h14Var.a(this.l[i].a(iA)), aj0Var, j - this.p[iA][i]);
        }
        return new c84(this.n, this.p[iA], z04VarArr);
    }

    @Override // yads.h50
    /* JADX INFO: renamed from: b */
    public final void a(Object obj, cs csVar, kx5 kx5Var) {
        int iA;
        Integer num = (Integer) obj;
        if (this.q != null) {
            return;
        }
        if (this.o == -1) {
            iA = kx5Var.a();
            this.o = iA;
        } else {
            int iA2 = kx5Var.a();
            int i = this.o;
            if (iA2 != i) {
                this.q = new d84();
                return;
            }
            iA = i;
        }
        if (this.p.length == 0) {
            this.p = (long[][]) Array.newInstance((Class<?>) Long.TYPE, iA, this.l.length);
        }
        this.m.remove(csVar);
        this.l[num.intValue()] = kx5Var;
        if (this.m.isEmpty()) {
            a(this.l[0]);
        }
    }

    @Override // yads.cs
    public final p04 c() {
        cs[] csVarArr = this.k;
        return csVarArr.length > 0 ? csVarArr[0].c() : r;
    }

    @Override // yads.h50, yads.cs
    public final void d() throws d84 {
        d84 d84Var = this.q;
        if (d84Var != null) {
            throw d84Var;
        }
        super.d();
    }

    @Override // yads.h50, yads.cs
    public final void e() {
        super.e();
        Arrays.fill(this.l, (Object) null);
        this.o = -1;
        this.q = null;
        this.m.clear();
        Collections.addAll(this.m, this.k);
    }

    @Override // yads.cs
    public final void a(p16 p16Var) {
        this.j = p16Var;
        this.i = u56.a((Handler.Callback) null);
        for (int i = 0; i < this.k.length; i++) {
            a(Integer.valueOf(i), this.k[i]);
        }
    }

    @Override // yads.h50
    public final h14 a(Object obj, h14 h14Var) {
        if (((Integer) obj).intValue() == 0) {
            return h14Var;
        }
        return null;
    }

    @Override // yads.cs
    public final void a(z04 z04Var) {
        c84 c84Var = (c84) z04Var;
        int i = 0;
        while (true) {
            cs[] csVarArr = this.k;
            if (i >= csVarArr.length) {
                return;
            }
            cs csVar = csVarArr[i];
            z04 z04Var2 = c84Var.b[i];
            if (z04Var2 instanceof a84) {
                z04Var2 = ((a84) z04Var2).b;
            }
            csVar.a(z04Var2);
            i++;
        }
    }
}
