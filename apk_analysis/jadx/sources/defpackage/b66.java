package defpackage;

import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.R;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormNotEditableTextFieldBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class b66 extends vd9<c66, ItemPersonalDataFormNotEditableTextFieldBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof c66;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, c66 c66Var) {
        ItemPersonalDataFormNotEditableTextFieldBinding itemPersonalDataFormNotEditableTextFieldBinding = (ItemPersonalDataFormNotEditableTextFieldBinding) viewBinding;
        c66 c66Var2 = c66Var;
        itemPersonalDataFormNotEditableTextFieldBinding.getClass();
        itemPersonalDataFormNotEditableTextFieldBinding.tvTitle.setText(c66Var2.g);
        TextInputEditText textInputEditText = itemPersonalDataFormNotEditableTextFieldBinding.etField;
        g17 g17Var = o76.a;
        textInputEditText.setText(o76.a.g("$1 $2 $3-$4-$5", c66Var2.d));
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemPersonalDataFormNotEditableTextFieldBinding itemPersonalDataFormNotEditableTextFieldBinding = (ItemPersonalDataFormNotEditableTextFieldBinding) viewBinding;
        itemPersonalDataFormNotEditableTextFieldBinding.getClass();
        itemPersonalDataFormNotEditableTextFieldBinding.etField.setTextAppearance(R.style.TextSize16_Gray60);
        itemPersonalDataFormNotEditableTextFieldBinding.tilField.setBoxBackgroundColor(ContextCompat.getColor(itemPersonalDataFormNotEditableTextFieldBinding.getRoot().getContext(), R.color.black_10));
    }
}
