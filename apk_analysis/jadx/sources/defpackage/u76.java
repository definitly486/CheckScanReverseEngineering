package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;

/* JADX INFO: loaded from: classes.dex */
public final class u76 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ PhoneSignUpFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u76(PhoneSignUpFragment phoneSignUpFragment) {
        super(1);
        this.f = phoneSignUpFragment;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.o().onSupportClicked();
        return j59.a;
    }
}
