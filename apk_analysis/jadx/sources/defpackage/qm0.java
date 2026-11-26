package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class qm0 extends gh4 implements nl3<j26<q71>, b36<? extends Integer, ? extends List<? extends cs0>>> {
    public static final qm0 f = new qm0(1);

    @Override // defpackage.nl3
    public final b36<? extends Integer, ? extends List<? extends cs0>> invoke(j26<q71> j26Var) {
        j26<q71> j26Var2 = j26Var;
        j26Var2.getClass();
        Integer numValueOf = Integer.valueOf(j26Var2.c());
        List<q71> listA = j26Var2.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(new qq0((q71) it.next()));
        }
        return new b36<>(numValueOf, arrayList);
    }
}
