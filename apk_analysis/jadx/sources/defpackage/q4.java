package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class q4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q4(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                if (bool.booleanValue()) {
                    ((c4) obj2).a.T("");
                }
                return j59.a;
            default:
                final List list = (List) obj;
                list.getClass();
                final bm0 bm0Var = (bm0) obj2;
                return new l08(new Callable() { // from class: zm0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        bm0 bm0Var2 = bm0Var;
                        List<cs0> listJ = bm0Var2.i.j();
                        ArrayList arrayList = listJ != null ? new ArrayList(listJ) : new ArrayList();
                        List list2 = list;
                        List list3 = list2;
                        ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
                        Iterator it = list3.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(((sx5) it.next()).d());
                        }
                        arrayList.addAll(arrayList2);
                        bm0Var2.i.onNext(arrayList);
                        return new k57(Boolean.valueOf(!list2.isEmpty()));
                    }
                });
        }
    }
}
