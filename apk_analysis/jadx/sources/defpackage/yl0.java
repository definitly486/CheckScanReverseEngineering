package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class yl0 extends gh4 implements nl3<rx5, qq1> {
    public final /* synthetic */ bm0 f;
    public final /* synthetic */ int g;
    public final /* synthetic */ boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yl0(bm0 bm0Var, int i, boolean z) {
        super(1);
        this.f = bm0Var;
        this.g = i;
        this.h = z;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(rx5 rx5Var) {
        final rx5 rx5Var2 = rx5Var;
        rx5Var2.getClass();
        final bm0 bm0Var = this.f;
        final int i = this.g;
        final boolean z = this.h;
        return new dq1(new Callable() { // from class: xl0
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
                int i2 = i;
                rx5 rx5Var3 = rx5Var2;
                boolean zC = rx5Var3.c();
                bm0 bm0Var2 = bm0Var;
                bm0Var2.d.b(i2, zC);
                boolean z2 = z;
                hi0<List<cs0>> hi0Var = z2 ? bm0Var2.i : bm0Var2.h;
                List<cs0> listJ = hi0Var.j();
                if (listJ == null) {
                    listJ = kx2.b;
                }
                if (z2) {
                    Iterator<cs0> it = listJ.iterator();
                    int i3 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i3 = -1;
                            break;
                        }
                        if (aa4.e(it.next().id(), Integer.valueOf(i2))) {
                            break;
                        }
                        i3++;
                    }
                    ArrayList arrayList = new ArrayList(listJ);
                    if (i3 != -1) {
                        arrayList.remove(i3);
                    }
                    hi0Var.onNext(arrayList);
                } else {
                    boolean zC2 = rx5Var3.c();
                    List<cs0> list = listJ;
                    ArrayList arrayList2 = new ArrayList(kn1.q(list, 10));
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        ?? D = (cs0) it2.next();
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
                        arrayList2.add(D);
                    }
                    hi0Var.onNext(arrayList2);
                }
                return j59.a;
            }
        });
    }
}
