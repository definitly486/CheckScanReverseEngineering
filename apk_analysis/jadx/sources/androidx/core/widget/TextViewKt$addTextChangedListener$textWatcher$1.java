package androidx.core.widget;

import android.text.Editable;
import android.text.TextWatcher;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class TextViewKt$addTextChangedListener$textWatcher$1 implements TextWatcher {
    final /* synthetic */ nl3<Editable, j59> $afterTextChanged;
    final /* synthetic */ fm3<CharSequence, Integer, Integer, Integer, j59> $beforeTextChanged;
    final /* synthetic */ fm3<CharSequence, Integer, Integer, Integer, j59> $onTextChanged;

    /* JADX WARN: Multi-variable type inference failed */
    public TextViewKt$addTextChangedListener$textWatcher$1(nl3<? super Editable, j59> nl3Var, fm3<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, j59> fm3Var, fm3<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, j59> fm3Var2) {
        this.$afterTextChanged = nl3Var;
        this.$beforeTextChanged = fm3Var;
        this.$onTextChanged = fm3Var2;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.$afterTextChanged.invoke(editable);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.$beforeTextChanged.invoke(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.$onTextChanged.invoke(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }
}
