package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class m4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m4(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        Object value;
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                a57 a57Var = (a57) obj;
                c4 c4Var = (c4) obj2;
                a57Var.getClass();
                Long l = (Long) a57Var.b;
                if (l != null) {
                    z68 z68VarH0 = c4Var.a.h0();
                    do {
                        value = z68VarH0.getValue();
                        ((Number) value).longValue();
                    } while (!z68VarH0.a(value, l));
                    c4Var.a.w(l.longValue());
                }
                return Long.valueOf(c4Var.a.Y0());
            default:
                List list = (List) obj;
                hi0<List<cs0>> hi0Var = ((bm0) obj2).i;
                list.getClass();
                List list2 = list;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((sx5) it.next()).d());
                }
                hi0Var.onNext(arrayList);
                return j59.a;
        }
    }
}
