package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsFragment;

/* JADX INFO: loaded from: classes.dex */
public final class mx implements lk3 {
    public final String a;

    public mx(String str) {
        str.getClass();
        this.a = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        VerificationSmsFragment.k.getClass();
        String str = this.a;
        str.getClass();
        VerificationSmsFragment verificationSmsFragment = new VerificationSmsFragment();
        verificationSmsFragment.setArguments(BundleKt.bundleOf(new b36("PHONE_KEY", str)));
        return verificationSmsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return mx.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof mx) && aa4.e(this.a, ((mx) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("SmsVerification(phone=", this.a, ")");
    }
}
