package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class x46 extends gh4 implements nl3 {
    public static final x46 g = new x46(1);
    public final /* synthetic */ int f = 0;

    public /* synthetic */ x46(int i) {
        super(i);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                l17 l17Var = (l17) obj;
                l17Var.getClass();
                return new b36(Integer.valueOf(l17Var.a()), l17Var.b());
            default:
                List list = (List) obj;
                list.getClass();
                List<rr6> list2 = list;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                for (rr6 rr6Var : list2) {
                    long jB = rr6Var.b();
                    String strC = rr6Var.c();
                    boolean zF = rr6Var.f();
                    String strE = rr6Var.e();
                    String strD = rr6Var.d();
                    if (strD == null) {
                        strD = "";
                    }
                    mx5 mx5VarA = rr6Var.a();
                    aq6 aq6Var = new aq6(mx5VarA.c(), mx5VarA.b());
                    jx5 jx5VarA = rr6Var.a().a();
                    arrayList.add(new gr6(jB, strC, zF, strE, strD, aq6Var, jx5VarA != null ? new q00(jx5VarA.b(), jx5VarA.c(), jx5VarA.a()) : null));
                }
                return arrayList;
        }
    }

    public x46(x9 x9Var) {
        super(1);
    }
}
