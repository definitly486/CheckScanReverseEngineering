package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ae1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ae1(Object obj, int i) {
        super(1);
        this.f = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                ei1 ei1Var = (ei1) obj;
                ei1Var.getClass();
                List<jh1> listA = ei1Var.a();
                ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
                for (jh1 jh1Var : listA) {
                    arrayList.add(new oa4(jh1Var.a(), jh1Var.d(), jh1Var.c().a(), jh1Var.b()));
                }
                return arrayList;
            default:
                ((Throwable) obj).getClass();
                tw9.f.getClass();
                return j59.a;
        }
    }
}
