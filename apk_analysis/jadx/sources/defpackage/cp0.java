package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class cp0 extends gh4 implements nl3<n32, qq1> {
    public final /* synthetic */ lp0 f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cp0(lp0 lp0Var, int i) {
        super(1);
        this.f = lp0Var;
        this.g = i;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(n32 n32Var) {
        final n32 n32Var2 = n32Var;
        n32Var2.getClass();
        final lp0 lp0Var = this.f;
        final int i = this.g;
        return new dq1(new Callable() { // from class: bp0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<er6> list;
                lp0 lp0Var2 = lp0Var;
                x68<er6> x68VarJ = lp0Var2.f.j();
                ArrayList arrayList = (x68VarJ == null || (list = x68VarJ.a) == null) ? new ArrayList() : new ArrayList(list);
                boolean zH = n32Var2.h();
                Iterator it = arrayList.iterator();
                int i2 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i2 = -1;
                        break;
                    }
                    if (((er6) it.next()).b == i) {
                        break;
                    }
                    i2++;
                }
                if (i2 != -1) {
                    er6 er6VarD = er6.d((er6) arrayList.get(i2), zH);
                    arrayList.remove(i2);
                    arrayList.add(i2, er6VarD);
                }
                lp0Var2.f.onNext(new x68.a(arrayList));
                return j59.a;
            }
        });
    }
}
