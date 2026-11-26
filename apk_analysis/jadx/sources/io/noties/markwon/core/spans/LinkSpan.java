package io.noties.markwon.core.spans;

import android.text.TextPaint;
import android.text.style.URLSpan;
import android.view.View;
import defpackage.d15;
import defpackage.qq4;

/* JADX INFO: loaded from: classes5.dex */
public class LinkSpan extends URLSpan {
    public final d15 b;
    public final String c;
    public final qq4 d;

    public LinkSpan(d15 d15Var, String str, qq4 qq4Var) {
        super(str);
        this.b = d15Var;
        this.c = str;
        this.d = qq4Var;
    }

    @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
    public final void onClick(View view) {
        this.d.a(view, this.c);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        this.b.getClass();
        textPaint.setUnderlineText(true);
        textPaint.setColor(textPaint.linkColor);
    }
}
