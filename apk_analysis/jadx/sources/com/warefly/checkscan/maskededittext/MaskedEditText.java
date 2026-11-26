package com.warefly.checkscan.maskededittext;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Editable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatEditText;
import defpackage.j15;
import defpackage.na1;
import defpackage.ow6;
import defpackage.p15;
import defpackage.ui3;

/* JADX INFO: loaded from: classes5.dex */
public final class MaskedEditText extends AppCompatEditText {
    public na1 n;
    public p15 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaskedEditText(Context context, AttributeSet attributeSet) {
        String string;
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ow6.a);
        typedArrayObtainStyledAttributes.getClass();
        if (typedArrayObtainStyledAttributes.hasValue(0) && (string = typedArrayObtainStyledAttributes.getString(0)) != null && string.length() != 0) {
            setMask(string);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final String getMaskString() {
        j15 j15Var;
        na1 na1Var = this.n;
        if (na1Var == null || (j15Var = (j15) na1Var.a) == null) {
            return null;
        }
        return (String) j15Var.b;
    }

    public final p15 getMaskedWatcher() {
        return this.o;
    }

    public final String getUnMaskedText() {
        na1 na1Var;
        j15 j15Var;
        Editable text = getText();
        String string = text != null ? text.toString() : null;
        ui3 ui3Var = (string == null || (na1Var = this.n) == null || (j15Var = (j15) na1Var.a) == null) ? null : new ui3(j15Var, string);
        if (ui3Var != null) {
            return ui3Var.d;
        }
        return null;
    }

    public final void setMask(String str) {
        str.getClass();
        this.n = new na1(str);
        p15 p15Var = this.o;
        if (p15Var != null) {
            removeTextChangedListener(p15Var);
        }
        na1 na1Var = this.n;
        if (na1Var != null) {
            this.o = new p15(na1Var, this);
        }
        addTextChangedListener(this.o);
    }

    public final void setMaskedWatcher(p15 p15Var) {
        this.o = p15Var;
    }
}
