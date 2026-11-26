package defpackage;

import android.text.style.ClickableSpan;
import android.view.View;
import com.warefly.checkscan.presentation.createCard.view.CreateCardFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class b62 extends ClickableSpan {
    public final /* synthetic */ CreateCardFragment b;

    public b62(CreateCardFragment createCardFragment) {
        this.b = createCardFragment;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        view.getClass();
        this.b.o().editNumberClick();
    }
}
