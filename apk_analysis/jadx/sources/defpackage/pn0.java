package defpackage;

import java.util.ArrayList;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class pn0 extends gh4 implements nl3<n32, qq1> {
    public final /* synthetic */ bm0 f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pn0(bm0 bm0Var, int i) {
        super(1);
        this.f = bm0Var;
        this.g = i;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(n32 n32Var) {
        final n32 n32Var2 = n32Var;
        n32Var2.getClass();
        final bm0 bm0Var = this.f;
        final int i = this.g;
        return new dq1(new Callable() { // from class: on0
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v10, types: [en1, en1$a] */
            /* JADX WARN: Type inference failed for: r4v11, types: [en1$a] */
            /* JADX WARN: Type inference failed for: r4v4, types: [cs0] */
            /* JADX WARN: Type inference failed for: r4v5, types: [er6] */
            /* JADX WARN: Type inference failed for: r4v6, types: [er6] */
            /* JADX WARN: Type inference failed for: r4v7, types: [en1, en1$b] */
            /* JADX WARN: Type inference failed for: r4v8, types: [en1$b] */
            /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Object] */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Iterable iterable;
                hi0<x68<er6>> hi0Var = bm0Var.n;
                x68<er6> x68VarJ = hi0Var.j();
                if (x68VarJ == null || (iterable = x68VarJ.a) == null) {
                    iterable = kx2.b;
                }
                boolean zH = n32Var2.h();
                Iterable<??> iterable2 = iterable;
                ArrayList arrayList = new ArrayList(kn1.q(iterable2, 10));
                for (?? D : iterable2) {
                    boolean z = D instanceof en1.a;
                    int i2 = i;
                    if (z) {
                        D = (en1.a) D;
                        dn1 dn1Var = D.a;
                        if (dn1Var.a == i2) {
                            D = new en1.a(dn1.a(dn1Var, zH));
                        }
                    } else if (D instanceof en1.b) {
                        D = (en1.b) D;
                        dn1 dn1Var2 = D.a;
                        if (dn1Var2.a == i2) {
                            D = new en1.b(dn1.a(dn1Var2, zH));
                        }
                    } else if (D instanceof er6) {
                        D = (er6) D;
                        if (D.b == i2) {
                            D = er6.d(D, zH);
                        }
                    }
                    arrayList.add(D);
                }
                hi0Var.onNext(new x68.a(arrayList));
                return j59.a;
            }
        });
    }
}
