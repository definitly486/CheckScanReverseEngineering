package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormChipsSelectionBinding;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class m66 extends vd9<o66, ItemPersonalDataFormChipsSelectionBinding> {
    public final PersonalDataFormPresenter b;

    public interface a {
        void onChipClicked(j56 j56Var);
    }

    public m66(PersonalDataFormPresenter personalDataFormPresenter) {
        super(l66.c);
        this.b = personalDataFormPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof o66;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, o66 o66Var) {
        ItemPersonalDataFormChipsSelectionBinding itemPersonalDataFormChipsSelectionBinding = (ItemPersonalDataFormChipsSelectionBinding) viewBinding;
        o66 o66Var2 = o66Var;
        itemPersonalDataFormChipsSelectionBinding.getClass();
        itemPersonalDataFormChipsSelectionBinding.tvTitle.setText(o66Var2.a);
        RecyclerView.Adapter adapter = itemPersonalDataFormChipsSelectionBinding.rvContent.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(o66Var2.b);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemPersonalDataFormChipsSelectionBinding itemPersonalDataFormChipsSelectionBinding = (ItemPersonalDataFormChipsSelectionBinding) viewBinding;
        itemPersonalDataFormChipsSelectionBinding.getClass();
        RecyclerView recyclerView = itemPersonalDataFormChipsSelectionBinding.rvContent;
        recyclerView.setAdapter(new eu1(new i56(this.b)));
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(itemPersonalDataFormChipsSelectionBinding.getRoot().getContext());
        flexboxLayoutManager.C(1);
        flexboxLayoutManager.A(0);
        recyclerView.setLayoutManager(flexboxLayoutManager);
        recyclerView.addItemDecoration(new n66());
    }
}
