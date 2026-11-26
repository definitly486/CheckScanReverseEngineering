package defpackage;

import android.view.View;
import com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseFragment;
import com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeFragment;
import com.warefly.checkscan.presentation.bonuses.view.chooseRegion.view.ChooseRegionFragment;
import com.warefly.checkscan.presentation.stock.view.AgreementDialog;
import com.warefly.checkscan.products.presentation.product.view.ProductFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class rb extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rb(Object obj, int i) {
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
                ((View) obj).getClass();
                ((AgreementDialog) obj2).dismiss();
                return j59.a;
            case 1:
                final List list = (List) obj;
                list.getClass();
                final bm0 bm0Var = (bm0) obj2;
                return new l08(new Callable() { // from class: an0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        bm0 bm0Var2 = bm0Var;
                        List<cs0> listJ = bm0Var2.h.j();
                        ArrayList arrayList = listJ != null ? new ArrayList(listJ) : new ArrayList();
                        List list2 = list;
                        List list3 = list2;
                        ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
                        Iterator it = list3.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(((sx5) it.next()).d());
                        }
                        arrayList.addAll(arrayList2);
                        bm0Var2.h.onNext(arrayList);
                        return new k57(Boolean.valueOf(!list2.isEmpty()));
                    }
                });
            case 2:
                l17 l17Var = (l17) obj;
                l17Var.getClass();
                ChooseRegionFragment chooseRegionFragment = (ChooseRegionFragment) obj2;
                View view = chooseRegionFragment.getView();
                if (view != null) {
                    le9.b(view);
                }
                chooseRegionFragment.n().onRegionSelected(l17Var);
                return j59.a;
            case 3:
                return ((InsuranceShowcaseFragment) obj2).o().getCountdownFlow(((Number) obj).intValue());
            case 4:
                ((View) obj).getClass();
                ((ProductFragment) obj2).o().loadContent();
                return j59.a;
            default:
                ((View) obj).getClass();
                ((SelectPromocodeFragment) obj2).p().onBackPressed();
                return j59.a;
        }
    }
}
