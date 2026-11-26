package com.monetization.ads.fullscreen.template.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import defpackage.jh2;
import defpackage.w65;

/* JADX INFO: loaded from: classes4.dex */
public final class CroppedTextView extends TextView {
    private final int a;

    public /* synthetic */ CroppedTextView(Context context, AttributeSet attributeSet, int i, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int lineHeight = getLineHeight();
        if (lineHeight > 0) {
            int iMin = Math.min((getMeasuredHeight() + w65.b(getLineHeight() * 0.05f)) / lineHeight, this.a);
            if (iMin == getMinLines() && iMin == getMaxLines()) {
                return;
            }
            setLines(iMin);
            TextUtils.TruncateAt ellipsize = getEllipsize();
            setEllipsize(null);
            setEllipsize(ellipsize);
        }
    }

    public CroppedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public CroppedTextView(Context context) {
        this(context, null, 0, 6, null);
    }

    public CroppedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = getMaxLines();
    }
}
