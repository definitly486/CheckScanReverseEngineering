package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yy6 implements ll3 {
    @Override // defpackage.ll3
    public final Object invoke() {
        List listN0 = qn1.n0((List) tq7.b.getValue(), new bz6());
        ArrayList arrayList = new ArrayList();
        int size = listN0.size();
        for (int i = 0; i < size; i++) {
            td2.a aVarFactory = ((wd2) listN0.get(i)).factory();
            if (aVarFactory != null) {
                arrayList.add(aVarFactory);
            }
        }
        return arrayList;
    }
}
