package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class d88 extends gh4 implements nl3<f88, k78> {
    public static final d88 f = new d88(1);

    @Override // defpackage.nl3
    public final k78 invoke(f88 f88Var) {
        f88 f88Var2 = f88Var;
        f88Var2.getClass();
        k78 k78VarA = f88Var2.a();
        List<kh9> listC = k78VarA.c();
        if (listC != null) {
            ArrayList arrayList = new ArrayList(7);
            x74 it = new y74(0, 6, 1).iterator();
            while (true) {
                Object obj = null;
                if (!it.d) {
                    break;
                }
                int iNextInt = it.nextInt();
                for (Object obj2 : listC) {
                    if (((kh9) obj2).a() == iNextInt) {
                        obj = obj2;
                        break;
                    }
                }
                kh9 kh9Var = (kh9) obj;
                if (kh9Var == null) {
                    kh9Var = new kh9(iNextInt, 0L);
                }
                arrayList.add(kh9Var);
            }
            if (((kh9) qn1.T(qn1.n0(arrayList, new c88()))).b() > 0) {
                k78VarA.f(arrayList);
                return k78VarA;
            }
            k78VarA.f(null);
        }
        return k78VarA;
    }
}
