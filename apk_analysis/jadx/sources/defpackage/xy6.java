package defpackage;

import java.util.ArrayList;
import java.util.List;
import yads.nq0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xy6 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xy6(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                List listN0 = qn1.n0((List) tq7.a.getValue(), new az6());
                ArrayList arrayList = new ArrayList();
                int size = listN0.size();
                for (int i = 0; i < size; i++) {
                    v83 v83Var = (v83) listN0.get(i);
                    v83Var.getClass();
                    arrayList.add(new b36(v83Var.factory(), v83Var.type()));
                }
                return arrayList;
            default:
                return nq0.d();
        }
    }
}
