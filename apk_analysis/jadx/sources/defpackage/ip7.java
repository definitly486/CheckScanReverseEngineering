package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ip7 implements zo7<Object> {
    public final /* synthetic */ pn1 a;
    public final /* synthetic */ t78 b;

    public ip7(pn1 pn1Var, t78 t78Var) {
        this.a = pn1Var;
        this.b = t78Var;
    }

    @Override // defpackage.zo7
    public final Iterator<Object> iterator() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.a.a.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        nn1.J(this.b, arrayList);
        return arrayList.iterator();
    }
}
