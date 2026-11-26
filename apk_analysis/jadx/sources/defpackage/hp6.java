package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.warefly.checkscan.databinding.ItemRvPromoSelectCardTagsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class hp6 extends vd9<ip6, ItemRvPromoSelectCardTagsBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ip6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ip6 ip6Var) {
        ItemRvPromoSelectCardTagsBinding itemRvPromoSelectCardTagsBinding = (ItemRvPromoSelectCardTagsBinding) viewBinding;
        ip6 ip6Var2 = ip6Var;
        itemRvPromoSelectCardTagsBinding.getClass();
        RecyclerView.Adapter adapter = itemRvPromoSelectCardTagsBinding.rvTags.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(ip6Var2.a);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvPromoSelectCardTagsBinding itemRvPromoSelectCardTagsBinding = (ItemRvPromoSelectCardTagsBinding) viewBinding;
        itemRvPromoSelectCardTagsBinding.getClass();
        itemRvPromoSelectCardTagsBinding.rvTags.setAdapter(new eu1(new dp6(cp6.c)));
        RecyclerView recyclerView = itemRvPromoSelectCardTagsBinding.rvTags;
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(itemRvPromoSelectCardTagsBinding.getRoot().getContext());
        flexboxLayoutManager.C(1);
        flexboxLayoutManager.A(0);
        recyclerView.setLayoutManager(flexboxLayoutManager);
        itemRvPromoSelectCardTagsBinding.rvTags.addItemDecoration(new gp6());
    }
}
