package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class i4 extends gh4 implements nl3 {
    public static final i4 g;
    public static final i4 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new i4(i, 0);
        h = new i4(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i4(int i, int i2) {
        super(i);
        this.f = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                wc9 wc9Var = (wc9) obj;
                wc9Var.getClass();
                return Boolean.valueOf(wc9Var == wc9.NewerAvailable);
            default:
                b36 b36Var = (b36) obj;
                b36Var.getClass();
                int iIntValue = ((Number) b36Var.b).intValue();
                List list = (List) b36Var.c;
                Integer numValueOf = Integer.valueOf(iIntValue);
                List list2 = list;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((iq6) it.next()).a());
                }
                return new b36(numValueOf, arrayList);
        }
    }
}
