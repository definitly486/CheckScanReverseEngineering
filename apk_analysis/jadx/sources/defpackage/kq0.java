package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class kq0 extends gh4 implements nl3 {
    public static final kq0 g;
    public static final kq0 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new kq0(i, 0);
        h = new kq0(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ kq0(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                j26 j26Var = (j26) obj;
                j26Var.getClass();
                return j26Var.a();
            default:
                List list = (List) obj;
                list.getClass();
                List list2 = list;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((kg1) it.next()).a());
                }
                return arrayList;
        }
    }
}
