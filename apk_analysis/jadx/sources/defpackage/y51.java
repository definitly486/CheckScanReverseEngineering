package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class y51 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ y51(Object obj, int i) {
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
                List list = (List) obj;
                d61 d61Var = (d61) obj2;
                list.getClass();
                List list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        if (((m10) it.next()).a() == l10.ADVANCE) {
                            int i2 = 1;
                            return new h08(mz7.j(d61Var.a.a(), d61Var.b.a(), new kl0(w51.f, i2)), new ll0(new x51(d61Var), i2));
                        }
                    }
                }
                return aq1.b;
            default:
                ((View) obj).getClass();
                ((ChequesFragment) obj2).o().onStatisticsClicked();
                return j59.a;
        }
    }
}
