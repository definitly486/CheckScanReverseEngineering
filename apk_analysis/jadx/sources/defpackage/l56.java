package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormNotEditableTextFieldBinding;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class l56 extends vd9<m56, ItemPersonalDataFormNotEditableTextFieldBinding> {
    public final PersonalDataFormPresenter b;

    /* JADX INFO: loaded from: classes.dex */
    public interface a {
        void onCityChangeClicked();
    }

    public l56(PersonalDataFormPresenter personalDataFormPresenter) {
        super(k56.c);
        this.b = personalDataFormPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof m56;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, m56 m56Var) {
        Drawable drawable;
        ItemPersonalDataFormNotEditableTextFieldBinding itemPersonalDataFormNotEditableTextFieldBinding = (ItemPersonalDataFormNotEditableTextFieldBinding) viewBinding;
        m56 m56Var2 = m56Var;
        itemPersonalDataFormNotEditableTextFieldBinding.getClass();
        itemPersonalDataFormNotEditableTextFieldBinding.tvTitle.setText(m56Var2.d);
        itemPersonalDataFormNotEditableTextFieldBinding.etField.setHint(m56Var2.i);
        itemPersonalDataFormNotEditableTextFieldBinding.etField.setText(m56Var2.f);
        itemPersonalDataFormNotEditableTextFieldBinding.tilField.setBoxBackgroundColor(ContextCompat.getColor(itemPersonalDataFormNotEditableTextFieldBinding.getRoot().getContext(), R.color.white));
        TextInputLayout textInputLayout = itemPersonalDataFormNotEditableTextFieldBinding.tilField;
        Integer num = m56Var2.e;
        if (num != null) {
            drawable = ContextCompat.getDrawable(itemPersonalDataFormNotEditableTextFieldBinding.getRoot().getContext(), num.intValue());
        } else {
            drawable = null;
        }
        textInputLayout.setEndIconDrawable(drawable);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemPersonalDataFormNotEditableTextFieldBinding itemPersonalDataFormNotEditableTextFieldBinding = (ItemPersonalDataFormNotEditableTextFieldBinding) viewBinding;
        itemPersonalDataFormNotEditableTextFieldBinding.getClass();
        View view = itemPersonalDataFormNotEditableTextFieldBinding.clickableArea;
        view.getClass();
        view.setOnClickListener(new lb7(new mu2(this, 1)));
    }
}
