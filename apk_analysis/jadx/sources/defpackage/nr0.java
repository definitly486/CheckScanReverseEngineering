package defpackage;

import android.text.Editable;
import android.text.TextWatcher;

/* JADX INFO: loaded from: classes.dex */
public final class nr0 implements TextWatcher {
    public final /* synthetic */ mr0 b;

    public nr0(mr0 mr0Var) {
        this.b = mr0Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.b.b.onPromocodeTextChanged(charSequence.toString());
    }
}
