package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormNotEditableTextFieldBinding;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class p56 extends vd9<s56, ItemPersonalDataFormNotEditableTextFieldBinding> {
    public final PersonalDataFormPresenter b;

    public interface a {
        void onDropDownClicked(s56.a aVar);
    }

    public p56(PersonalDataFormPresenter personalDataFormPresenter) {
        super(o56.c);
        this.b = personalDataFormPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof s56;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, s56 s56Var) {
        ItemPersonalDataFormNotEditableTextFieldBinding itemPersonalDataFormNotEditableTextFieldBinding = (ItemPersonalDataFormNotEditableTextFieldBinding) viewBinding;
        s56 s56Var2 = s56Var;
        itemPersonalDataFormNotEditableTextFieldBinding.getClass();
        View view = itemPersonalDataFormNotEditableTextFieldBinding.clickableArea;
        view.getClass();
        view.setOnClickListener(new lb7(new q56(itemPersonalDataFormNotEditableTextFieldBinding, s56Var2, this)));
        itemPersonalDataFormNotEditableTextFieldBinding.tvTitle.setText(s56Var2.b);
        TextInputEditText textInputEditText = itemPersonalDataFormNotEditableTextFieldBinding.etField;
        s56.a aVar = s56Var2.c;
        Drawable drawable = null;
        String str = aVar != null ? aVar.d : null;
        if (str == null) {
            str = "";
        }
        textInputEditText.setText(str);
        itemPersonalDataFormNotEditableTextFieldBinding.etField.setHint(s56Var2.d);
        itemPersonalDataFormNotEditableTextFieldBinding.tilField.setBoxBackgroundColor(ContextCompat.getColor(itemPersonalDataFormNotEditableTextFieldBinding.getRoot().getContext(), R.color.white));
        TextInputLayout textInputLayout = itemPersonalDataFormNotEditableTextFieldBinding.tilField;
        Integer num = s56Var2.e;
        if (num != null) {
            drawable = ContextCompat.getDrawable(itemPersonalDataFormNotEditableTextFieldBinding.getRoot().getContext(), num.intValue());
        }
        textInputLayout.setEndIconDrawable(drawable);
    }
}
