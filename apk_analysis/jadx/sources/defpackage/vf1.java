package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class vf1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vf1(Object obj, int i) {
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
                n71 n71Var = (n71) obj;
                n71Var.getClass();
                ((kf1) obj2).b.e().d(n71Var.b());
                List<p81> listA = n71Var.a();
                ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
                Iterator<T> it = listA.iterator();
                while (it.hasNext()) {
                    arrayList.add(((p81) it.next()).a());
                }
                return arrayList;
            case 1:
                n32 n32Var = (n32) obj;
                n32Var.getClass();
                ((q42) obj2).getClass();
                return q42.a(n32Var);
            default:
                ((View) obj).getClass();
                ((DesktopFlowFragment) obj2).q().onScanClicked();
                return j59.a;
        }
    }
}
