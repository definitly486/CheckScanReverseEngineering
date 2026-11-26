package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class n4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n4(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((Long) obj).getClass();
                c4 c4Var = (c4) obj2;
                int i2 = 0;
                return !ta8.M(c4Var.a.getToken()) ? new u08(new p08(c4Var.b.c().i(ne7.c), new k4(new m4(c4Var, 0), i2)), null, Long.valueOf(c4Var.a.Y0())) : new l08(new l4(c4Var, i2));
            case 1:
                List list = (List) obj;
                hi0<List<cs0>> hi0Var = ((bm0) obj2).h;
                list.getClass();
                List list2 = list;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((sx5) it.next()).d());
                }
                hi0Var.onNext(arrayList);
                return j59.a;
            default:
                ((View) obj).getClass();
                ((wv7) obj2).b.onMoreClick();
                return j59.a;
        }
    }
}
