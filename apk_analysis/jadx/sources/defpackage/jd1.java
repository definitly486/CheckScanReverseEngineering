package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class jd1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ jd1(int i, Object obj, Object obj2) {
        super(1);
        this.f = i;
        this.g = obj;
        this.h = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        Object obj3 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((id1) obj3).b.invoke(Integer.valueOf(((oa4) obj2).a));
                return j59.a;
            default:
                List list = (List) obj;
                list.getClass();
                wf1 wf1VarF = ((ih1) obj3).a.f();
                ArrayList<sd1> arrayList = new ArrayList();
                for (Object obj4 : (List) obj2) {
                    if (!list.contains(((sd1) obj4).b())) {
                        arrayList.add(obj4);
                    }
                }
                ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
                for (sd1 sd1Var : arrayList) {
                    sd1Var.getClass();
                    long jA = sd1Var.a();
                    String strB = sd1Var.b();
                    nz6.a aVar = nz6.Companion;
                    int iD = sd1Var.d();
                    aVar.getClass();
                    arrayList2.add(new kg1(jA, strB, nz6.a.a(iD).name(), sd1Var.c(), sd1Var.e()));
                }
                return wf1VarF.j(arrayList2);
        }
    }
}
