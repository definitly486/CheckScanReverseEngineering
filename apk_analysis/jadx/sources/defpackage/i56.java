package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormChipBinding;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class i56 extends vd9<j56, ItemPersonalDataFormChipBinding> {
    public final PersonalDataFormPresenter b;

    public i56(PersonalDataFormPresenter personalDataFormPresenter) {
        super(g56.c);
        this.b = personalDataFormPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof j56;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, j56 j56Var) {
        ItemPersonalDataFormChipBinding itemPersonalDataFormChipBinding = (ItemPersonalDataFormChipBinding) viewBinding;
        j56 j56Var2 = j56Var;
        itemPersonalDataFormChipBinding.getClass();
        ConstraintLayout root = itemPersonalDataFormChipBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new h56(this, j56Var2)));
        itemPersonalDataFormChipBinding.tvTitle.setText(j56Var2.a);
        if (j56Var2.e) {
            itemPersonalDataFormChipBinding.getRoot().setBackground(ContextCompat.getDrawable(itemPersonalDataFormChipBinding.getRoot().getContext(), R.drawable.background_primary10_radius120_stroke_primary30));
        } else {
            itemPersonalDataFormChipBinding.getRoot().setBackground(ContextCompat.getDrawable(itemPersonalDataFormChipBinding.getRoot().getContext(), R.drawable.background_gray10_radius120));
        }
    }
}
