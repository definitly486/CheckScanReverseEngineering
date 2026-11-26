package defpackage;

import android.text.Editable;
import android.text.TextWatcher;

/* JADX INFO: loaded from: classes5.dex */
public final class gk4 implements TextWatcher {
    public final /* synthetic */ hk4 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ int d;

    public gk4(hk4 hk4Var, String str, int i) {
        this.b = hk4Var;
        this.c = str;
        this.d = i;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.b.b.onTextFieldChange(this.c, charSequence.toString(), this.d);
    }
}
