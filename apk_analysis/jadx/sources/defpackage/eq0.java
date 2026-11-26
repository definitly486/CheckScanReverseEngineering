package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class eq0 extends gh4 implements nl3 {
    public static final eq0 g;
    public static final eq0 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new eq0(i, 0);
        h = new eq0(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ eq0(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                j26 j26Var = (j26) obj;
                j26Var.getClass();
                List listA = j26Var.a();
                ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    arrayList.add(((o81) it.next()).a());
                }
                return new j26(arrayList, j26Var.c(), 0, 0, 0, null, null, 124, null);
            default:
                List list = (List) obj;
                list.getClass();
                List list2 = list;
                ArrayList arrayList2 = new ArrayList(kn1.q(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((gq6) it2.next()).d());
                }
                return arrayList2;
        }
    }
}
