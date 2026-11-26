package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.subscriptionLanding.databinding.ItemLandingTermsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ck4 extends vd9<dk4, ItemLandingTermsBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof dk4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, dk4 dk4Var) {
        ItemLandingTermsBinding itemLandingTermsBinding = (ItemLandingTermsBinding) viewBinding;
        itemLandingTermsBinding.getClass();
        itemLandingTermsBinding.tvTitle.setText("Условия без статуса:");
        RecyclerView recyclerView = itemLandingTermsBinding.rvTerms;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(new jz7(R.layout.item_landing_term, dk4Var.a, null, ak4.f, bk4.f, 4));
    }
}
