package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;

/* JADX INFO: loaded from: classes.dex */
public final class lx implements lk3 {
    public final String a;

    public lx(String str) {
        this.a = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        PhoneSignUpFragment.l.getClass();
        PhoneSignUpFragment phoneSignUpFragment = new PhoneSignUpFragment();
        phoneSignUpFragment.setArguments(BundleKt.bundleOf(new b36("INVITE_CODE_KEY", this.a)));
        return phoneSignUpFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return lx.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof lx) && aa4.e(this.a, ((lx) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("PhoneSignUp(inviteCode=", this.a, ")");
    }
}
