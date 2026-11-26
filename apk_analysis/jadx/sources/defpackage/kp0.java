package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class kp0 extends gh4 implements nl3<List<? extends sx5>, qq1> {
    public final /* synthetic */ lp0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kp0(lp0 lp0Var) {
        super(1);
        this.f = lp0Var;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(List<? extends sx5> list) {
        final List<? extends sx5> list2 = list;
        list2.getClass();
        final lp0 lp0Var = this.f;
        return new dq1(new Callable() { // from class: jp0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                hi0<x68<en1>> hi0Var = lp0Var.g;
                List list3 = list2;
                ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    arrayList.add(((sx5) it.next()).d());
                }
                hi0Var.onNext(new x68.a(arrayList));
                return j59.a;
            }
        });
    }
}
