package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class ep0 extends gh4 implements nl3<rx5, c18<? extends Boolean>> {
    public final /* synthetic */ lp0 f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ep0(lp0 lp0Var, int i) {
        super(1);
        this.f = lp0Var;
        this.g = i;
    }

    @Override // defpackage.nl3
    public final c18<? extends Boolean> invoke(rx5 rx5Var) {
        final rx5 rx5Var2 = rx5Var;
        rx5Var2.getClass();
        final lp0 lp0Var = this.f;
        final int i = this.g;
        return new l08(new Callable() { // from class: dp0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<en1> list;
                lp0 lp0Var2 = lp0Var;
                x68<en1> x68VarJ = lp0Var2.g.j();
                ArrayList arrayList = (x68VarJ == null || (list = x68VarJ.a) == null) ? new ArrayList() : new ArrayList(list);
                rx5 rx5Var3 = rx5Var2;
                boolean zC = rx5Var3.c();
                Iterator it = arrayList.iterator();
                int i2 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i2 = -1;
                        break;
                    }
                    if (aa4.e(((en1) it.next()).id(), Integer.valueOf(i))) {
                        break;
                    }
                    i2++;
                }
                if (i2 != -1) {
                    en1 en1Var = (en1) arrayList.get(i2);
                    arrayList.set(i2, en1Var instanceof en1.a ? new en1.a(dn1.a(en1Var.a, zC)) : new en1.b(dn1.a(en1Var.a, zC)));
                }
                lp0Var2.g.onNext(new x68.a(arrayList));
                return Boolean.valueOf(rx5Var3.c());
            }
        });
    }
}
