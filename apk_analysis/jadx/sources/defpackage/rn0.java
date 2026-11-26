package defpackage;

import java.util.ArrayList;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class rn0 extends gh4 implements nl3<rx5, qq1> {
    public final /* synthetic */ bm0 f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rn0(bm0 bm0Var, int i) {
        super(1);
        this.f = bm0Var;
        this.g = i;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(rx5 rx5Var) {
        final rx5 rx5Var2 = rx5Var;
        rx5Var2.getClass();
        final bm0 bm0Var = this.f;
        final int i = this.g;
        return new dq1(new Callable() { // from class: qn0
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r4v11, types: [en1, en1$a] */
            /* JADX WARN: Type inference failed for: r4v12, types: [en1$a] */
            /* JADX WARN: Type inference failed for: r4v5, types: [cs0] */
            /* JADX WARN: Type inference failed for: r4v6, types: [er6] */
            /* JADX WARN: Type inference failed for: r4v7, types: [er6] */
            /* JADX WARN: Type inference failed for: r4v8, types: [en1, en1$b] */
            /* JADX WARN: Type inference failed for: r4v9, types: [en1$b] */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Iterable iterable;
                int i2 = i;
                rx5 rx5Var3 = rx5Var2;
                boolean zC = rx5Var3.c();
                bm0 bm0Var2 = bm0Var;
                bm0Var2.d.b(i2, zC);
                hi0<x68<cs0>> hi0Var = bm0Var2.m;
                x68<cs0> x68VarJ = hi0Var.j();
                if (x68VarJ == null || (iterable = x68VarJ.a) == null) {
                    iterable = kx2.b;
                }
                boolean zC2 = rx5Var3.c();
                Iterable<??> iterable2 = iterable;
                ArrayList arrayList = new ArrayList(kn1.q(iterable2, 10));
                for (?? D : iterable2) {
                    if (D instanceof en1.a) {
                        D = (en1.a) D;
                        dn1 dn1Var = D.a;
                        if (dn1Var.a == i2) {
                            D = new en1.a(dn1.a(dn1Var, zC2));
                        }
                    } else if (D instanceof en1.b) {
                        D = (en1.b) D;
                        dn1 dn1Var2 = D.a;
                        if (dn1Var2.a == i2) {
                            D = new en1.b(dn1.a(dn1Var2, zC2));
                        }
                    } else if (D instanceof er6) {
                        D = (er6) D;
                        if (D.b == i2) {
                            D = er6.d(D, zC2);
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
