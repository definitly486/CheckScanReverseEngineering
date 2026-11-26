package androidx.core.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class TextViewKt {
    public static final TextWatcher addTextChangedListener(TextView textView, fm3<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, j59> fm3Var, fm3<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, j59> fm3Var2, nl3<? super Editable, j59> nl3Var) {
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(nl3Var, fm3Var, fm3Var2);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static /* synthetic */ TextWatcher addTextChangedListener$default(TextView textView, fm3 fm3Var, fm3 fm3Var2, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            fm3Var = new fm3<CharSequence, Integer, Integer, Integer, j59>() { // from class: androidx.core.widget.TextViewKt.addTextChangedListener.1
                @Override // defpackage.fm3
                public /* bridge */ /* synthetic */ j59 invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
                    invoke(charSequence, num.intValue(), num2.intValue(), num3.intValue());
                    return j59.a;
                }

                public final void invoke(CharSequence charSequence, int i2, int i3, int i4) {
                }
            };
        }
        if ((i & 2) != 0) {
            fm3Var2 = new fm3<CharSequence, Integer, Integer, Integer, j59>() { // from class: androidx.core.widget.TextViewKt.addTextChangedListener.2
                @Override // defpackage.fm3
                public /* bridge */ /* synthetic */ j59 invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
                    invoke(charSequence, num.intValue(), num2.intValue(), num3.intValue());
                    return j59.a;
                }

                public final void invoke(CharSequence charSequence, int i2, int i3, int i4) {
                }
            };
        }
        if ((i & 4) != 0) {
            nl3Var = new nl3<Editable, j59>() { // from class: androidx.core.widget.TextViewKt.addTextChangedListener.3
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Editable editable) {
                    invoke2(editable);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Editable editable) {
                }
            };
        }
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(nl3Var, fm3Var, fm3Var2);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static final TextWatcher doAfterTextChanged(TextView textView, final nl3<? super Editable, j59> nl3Var) {
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doAfterTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                nl3Var.invoke(editable);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doBeforeTextChanged(TextView textView, final fm3<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, j59> fm3Var) {
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doBeforeTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                fm3Var.invoke(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doOnTextChanged(TextView textView, final fm3<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, j59> fm3Var) {
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doOnTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                fm3Var.invoke(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }
}
