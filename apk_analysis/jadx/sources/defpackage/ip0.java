package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ip0 extends gh4 implements nl3<List<? extends sx5>, k57<? extends Boolean>> {
    public final /* synthetic */ lp0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ip0(lp0 lp0Var) {
        super(1);
        this.f = lp0Var;
    }

    @Override // defpackage.nl3
    public final k57<? extends Boolean> invoke(List<? extends sx5> list) {
        List<en1> list2;
        List<? extends sx5> list3 = list;
        list3.getClass();
        lp0 lp0Var = this.f;
        x68<en1> x68VarJ = lp0Var.g.j();
        ArrayList arrayList = (x68VarJ == null || (list2 = x68VarJ.a) == null) ? new ArrayList() : new ArrayList(list2);
        List<? extends sx5> list4 = list3;
        ArrayList arrayList2 = new ArrayList(kn1.q(list4, 10));
        Iterator<T> it = list4.iterator();
        while (it.hasNext()) {
            arrayList2.add(((sx5) it.next()).d());
        }
        arrayList.addAll(arrayList2);
        lp0Var.g.onNext(new x68.a(qn1.t0(qn1.x0(arrayList))));
        return new k57<>(Boolean.valueOf(!list3.isEmpty()));
    }
}
