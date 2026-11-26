package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class s66 implements TextWatcher {
    public final /* synthetic */ r66 b;
    public final /* synthetic */ t66 c;

    public s66(r66 r66Var, t66 t66Var) {
        this.b = r66Var;
        this.c = t66Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        PersonalDataFormPresenter personalDataFormPresenter = this.b.b;
        t66 t66Var = this.c;
        personalDataFormPresenter.onTextFieldChanged(t66Var.g(), t66Var.getKey(), charSequence.toString());
    }
}
