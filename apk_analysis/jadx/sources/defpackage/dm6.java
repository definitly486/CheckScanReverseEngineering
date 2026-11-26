package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.profile.databinding.ItemRvProfileOptionsListBinding;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class dm6 extends vd9<em6, ItemRvProfileOptionsListBinding> {
    public final ProfilePresenter b;

    public dm6(ProfilePresenter profilePresenter) {
        super(cm6.c);
        this.b = profilePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof em6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, em6 em6Var) {
        ItemRvProfileOptionsListBinding itemRvProfileOptionsListBinding = (ItemRvProfileOptionsListBinding) viewBinding;
        em6 em6Var2 = em6Var;
        itemRvProfileOptionsListBinding.getClass();
        RecyclerView.Adapter adapter = itemRvProfileOptionsListBinding.rvOptions.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(em6Var2.a);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvProfileOptionsListBinding itemRvProfileOptionsListBinding = (ItemRvProfileOptionsListBinding) viewBinding;
        itemRvProfileOptionsListBinding.getClass();
        RecyclerView recyclerView = itemRvProfileOptionsListBinding.rvOptions;
        recyclerView.setAdapter(new eu1(new vl6(this.b)));
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvProfileOptionsListBinding.getRoot().getContext(), 1, false));
    }
}
