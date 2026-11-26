package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailFragment;

/* JADX INFO: loaded from: classes.dex */
public final class oc9 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ VerificationEmailFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oc9(VerificationEmailFragment verificationEmailFragment) {
        super(1);
        this.f = verificationEmailFragment;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.o().onSendCodeAgainAgainClicked();
        return j59.a;
    }
}
