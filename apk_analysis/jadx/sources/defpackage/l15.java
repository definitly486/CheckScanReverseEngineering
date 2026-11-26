package defpackage;

import android.text.Editable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.view.inputmethod.BaseInputConnection;
import com.google.android.material.textfield.TextInputEditText;
import ru.tinkoff.decoro.MaskImpl;

/* JADX INFO: loaded from: classes5.dex */
public final class l15 implements TextWatcher {
    public cn2 b;
    public String c;
    public MaskImpl d;
    public TextInputEditText e;
    public boolean f;
    public boolean g;
    public MaskImpl h;

    public final void a() {
        boolean z = this.d == null;
        MaskImpl maskImpl = new MaskImpl(this.h);
        this.d = maskImpl;
        this.b = new cn2();
        if (z || this.e == null) {
            return;
        }
        this.f = true;
        String string = maskImpl.toString();
        TextInputEditText textInputEditText = this.e;
        if (textInputEditText != null) {
            Editable editable = (Editable) textInputEditText.getText();
            editable.replace(0, editable.length(), string, 0, string.length());
        } else {
            textInputEditText.setText(string);
        }
        int iC = this.d.c();
        TextInputEditText textInputEditText2 = this.e;
        if (textInputEditText2 != null && iC <= textInputEditText2.length()) {
            this.e.setSelection(iC);
        }
        this.f = false;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        MaskImpl maskImpl;
        Editable editable2;
        TextInputEditText textInputEditText;
        CharSequence charSequence;
        if (this.f || (maskImpl = this.d) == null || this.g) {
            this.g = false;
            return;
        }
        String string = maskImpl.toString();
        int i = this.b.e;
        if (string.equals(editable.toString())) {
            editable2 = editable;
        } else {
            int composingSpanStart = BaseInputConnection.getComposingSpanStart(editable);
            int length = i > editable.length() ? editable.length() : i;
            if (composingSpanStart == -1 || length == -1) {
                charSequence = string;
            } else {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) string.substring(0, composingSpanStart));
                SpannableString spannableString = new SpannableString(string.substring(composingSpanStart, length));
                BaseInputConnection.setComposingSpans(spannableString);
                spannableStringBuilder.append((CharSequence) spannableString);
                spannableStringBuilder.append((CharSequence) string.substring(length, string.length()));
                charSequence = spannableStringBuilder;
            }
            this.f = true;
            Editable editable3 = editable;
            editable3.replace(0, editable.length(), charSequence, 0, string.length());
            this.f = false;
            editable2 = editable3;
        }
        if (i >= 0 && i <= editable2.length() && (textInputEditText = this.e) != null && i <= textInputEditText.length()) {
            this.e.setSelection(i);
        }
        this.c = null;
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4;
        if (this.f || this.d == null) {
            return;
        }
        this.c = new String(charSequence.toString());
        cn2 cn2Var = this.b;
        cn2Var.a = i;
        boolean z = false;
        cn2Var.c = 0;
        cn2Var.d = 0;
        cn2Var.b = 0;
        cn2Var.e = -1;
        if (i3 > 0) {
            cn2Var.d = 1;
            cn2Var.b = i3;
            i4 = 1;
        } else {
            i3 = 0;
            i4 = 0;
        }
        if (i2 > 0) {
            cn2Var.d = i4 | 2;
            cn2Var.c = i2;
        } else {
            i2 = 0;
        }
        if (i3 > 0 && i2 > 0 && i3 < i2) {
            z = true;
        }
        cn2Var.f = z;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        CharSequence charSequenceSubSequence;
        if (this.f || this.d == null) {
            return;
        }
        cn2 cn2Var = this.b;
        if ((cn2Var.d & 1) == 1) {
            int i4 = cn2Var.a;
            charSequenceSubSequence = charSequence.subSequence(i4, cn2Var.b + i4);
            cn2 cn2Var2 = this.b;
            if (cn2Var2.f) {
                String str = this.c;
                int i5 = cn2Var2.a;
                if (str.subSequence(i5, cn2Var2.b + i5).equals(charSequenceSubSequence)) {
                    cn2 cn2Var3 = this.b;
                    int length = charSequenceSubSequence.length();
                    cn2Var3.c -= cn2Var3.b;
                    cn2Var3.a += length;
                    cn2Var3.d &= -2;
                }
            }
        } else {
            charSequenceSubSequence = null;
        }
        boolean zEquals = this.c.equals(charSequence.toString());
        this.g = zEquals;
        if (zEquals) {
            return;
        }
        cn2 cn2Var4 = this.b;
        int i6 = cn2Var4.d;
        if ((i6 & 2) == 2) {
            boolean z = (i6 & 1) == 1;
            MaskImpl maskImpl = this.d;
            if (z) {
                int i7 = cn2Var4.a;
                int i8 = cn2Var4.c;
                cn2Var4.e = maskImpl.f((i7 + i8) - 1, i8, false);
            } else {
                int i9 = cn2Var4.a;
                int i10 = cn2Var4.c;
                cn2Var4.e = maskImpl.f((i9 + i10) - 1, i10, true);
            }
        }
        cn2 cn2Var5 = this.b;
        if ((cn2Var5.d & 1) == 1) {
            cn2Var5.e = this.d.d(cn2Var5.a, charSequenceSubSequence);
        }
    }

    public final String toString() {
        MaskImpl maskImpl = this.d;
        return maskImpl == null ? "" : maskImpl.toString();
    }
}
