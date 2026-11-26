package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class c68 extends gh4 implements nl3<Object[], List<? extends hc0.c>> {
    public final /* synthetic */ ArrayList f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c68(b68 b68Var, ArrayList arrayList) {
        super(1);
        this.f = arrayList;
    }

    @Override // defpackage.nl3
    public final List<? extends hc0.c> invoke(Object[] objArr) {
        Object[] objArr2 = objArr;
        objArr2.getClass();
        ArrayList arrayList = new ArrayList(objArr2.length);
        int i = 0;
        for (Object obj : objArr2) {
            if (!(obj instanceof b68.a)) {
                throw new ClassCastException();
            }
            arrayList.add((b68.a) obj);
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        for (Object obj2 : arrayList) {
            int i2 = i + 1;
            hc0.c cVar = null;
            if (i < 0) {
                u96.o();
                throw null;
            }
            if (((b68.a) obj2).a != null) {
                cVar = (hc0.c) this.f.get(i);
            }
            arrayList2.add(cVar);
            i = i2;
        }
        return qn1.R(arrayList2);
    }
}
