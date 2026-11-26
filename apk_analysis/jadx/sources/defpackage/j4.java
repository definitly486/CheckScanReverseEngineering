package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class j4 extends gh4 implements nl3 {
    public static final j4 g;
    public static final j4 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new j4(i, 0);
        h = new j4(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j4(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                if (!bool.booleanValue()) {
                    return dr5.b;
                }
                he7 he7Var = ne7.b;
                nq5.a(TimeUnit.SECONDS, "unit is null");
                nq5.a(he7Var, "scheduler is null");
                return new nr5(Math.max(0L, 0L), Math.max(0L, 60L), he7Var);
            default:
                List list = (List) obj;
                list.getClass();
                List list2 = list;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((iq6) it.next()).a());
                }
                return arrayList;
        }
    }
}
