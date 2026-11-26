package yads;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yt4 extends ClickableSpan {
    public final tt b;
    public final List c;

    public yt4(tt ttVar, List list) {
        this.b = ttVar;
        this.c = list;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        ((bt0) this.b.a.n.G.getValue()).a(this.b, view, this.c);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
    }
}
