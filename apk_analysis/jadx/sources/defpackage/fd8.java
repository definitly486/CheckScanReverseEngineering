package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.material.textfield.TextInputEditText;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes5.dex */
public final class fd8 implements TextWatcher {
    public final /* synthetic */ TextInputEditText b;

    public fd8(TextInputEditText textInputEditText) {
        this.b = textInputEditText;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (editable == null || !ta8.Z(editable, '0') || editable.length() <= 1) {
            return;
        }
        this.b.setText(CommonUrlParts.Values.FALSE_INTEGER);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
