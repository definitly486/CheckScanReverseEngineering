package defpackage;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormBlockBinding;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class e56 extends vd9<f56, ItemPersonalDataFormBlockBinding> {
    public final PersonalDataFormPresenter b;

    public e56(PersonalDataFormPresenter personalDataFormPresenter) {
        super(c56.c);
        this.b = personalDataFormPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof f56;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, f56 f56Var) {
        ItemPersonalDataFormBlockBinding itemPersonalDataFormBlockBinding = (ItemPersonalDataFormBlockBinding) viewBinding;
        f56 f56Var2 = f56Var;
        itemPersonalDataFormBlockBinding.getClass();
        a.d(itemPersonalDataFormBlockBinding.getRoot().getContext()).h(f56Var2.c).L(itemPersonalDataFormBlockBinding.ivLogo);
        itemPersonalDataFormBlockBinding.tvTitle.setText(f56Var2.a);
        TextView textView = itemPersonalDataFormBlockBinding.tvDescription;
        String str = f56Var2.b;
        textView.setText(str);
        TextView textView2 = itemPersonalDataFormBlockBinding.tvDescription;
        textView2.getClass();
        textView2.setVisibility(str != null ? 0 : 8);
        RecyclerView.Adapter adapter = itemPersonalDataFormBlockBinding.rvContent.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(f56Var2.e);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemPersonalDataFormBlockBinding itemPersonalDataFormBlockBinding = (ItemPersonalDataFormBlockBinding) viewBinding;
        itemPersonalDataFormBlockBinding.getClass();
        RecyclerView recyclerView = itemPersonalDataFormBlockBinding.rvContent;
        PersonalDataFormPresenter personalDataFormPresenter = this.b;
        recyclerView.setAdapter(new eu1(new m66(personalDataFormPresenter), new r66(personalDataFormPresenter), new b66(a66.c), new l56(personalDataFormPresenter), new p56(personalDataFormPresenter)));
        recyclerView.setItemAnimator(null);
        recyclerView.setLayoutManager(new LinearLayoutManager(itemPersonalDataFormBlockBinding.getRoot().getContext(), 1, false));
        recyclerView.addItemDecoration(new d56());
    }
}
