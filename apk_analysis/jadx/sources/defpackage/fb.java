package defpackage;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class fb extends ClickableSpan {
    public final /* synthetic */ AffiliationCheckFragment b;

    public fb(AffiliationCheckFragment affiliationCheckFragment) {
        this.b = affiliationCheckFragment;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        view.getClass();
        this.b.o().showHowToCopyLink();
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.getClass();
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
    }
}
