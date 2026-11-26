package com.tapjoy;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes4.dex */
public final class TJImageButton extends ImageButton {
    public int a;
    public int b;

    public TJImageButton(Context context) {
        super(context);
    }

    public final void setDisabledColor(int i) {
        this.b = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        int i = this.a;
        if (i > 0 && z) {
            setColorFilter(i, PorterDuff.Mode.SRC_IN);
            return;
        }
        int i2 = this.b;
        if (i2 <= 0 || z) {
            return;
        }
        setColorFilter(i2, PorterDuff.Mode.SRC_IN);
    }

    public final void setEnabledColor(int i) {
        this.a = i;
    }

    public TJImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TJImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
