package defpackage;

import com.warefly.checkscan.presentation.verificationCardPhone.presenter.VerificationCardPhonePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class jc9 extends qm3 implements nl3<String, j59> {
    @Override // defpackage.nl3
    public final j59 invoke(String str) {
        String str2 = str;
        str2.getClass();
        ((VerificationCardPhonePresenter) this.receiver).sendCode(str2);
        return j59.a;
    }
}
