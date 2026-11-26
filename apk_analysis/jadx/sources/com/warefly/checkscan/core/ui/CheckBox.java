package com.warefly.checkscan.core.ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;

/* JADX INFO: loaded from: classes.dex */
public final class CheckBox extends AppCompatCheckBox {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
    }
}
