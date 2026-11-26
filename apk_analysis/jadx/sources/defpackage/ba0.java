package defpackage;

import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ba0 extends gh4 implements nl3 {
    public static final ba0 g;
    public static final ba0 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new ba0(i, 0);
        h = new ba0(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ba0(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                v99 v99Var = (v99) obj;
                v99Var.getClass();
                return Boolean.valueOf(v99Var.a());
            default:
                List list = (List) obj;
                list.getClass();
                List list2 = list;
                int iB = m05.b(kn1.q(list2, 10));
                if (iB < 16) {
                    iB = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
                for (Object obj2 : list2) {
                    linkedHashMap.put(Integer.valueOf(((p71) obj2).a()), obj2);
                }
                return linkedHashMap;
        }
    }
}
