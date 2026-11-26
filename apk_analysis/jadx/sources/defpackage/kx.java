package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailFragment;

/* JADX INFO: loaded from: classes.dex */
public final class kx implements lk3 {
    public final String a;
    public final jw2 b;

    public kx(String str, jw2 jw2Var) {
        str.getClass();
        jw2Var.getClass();
        this.a = str;
        this.b = jw2Var;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        VerificationEmailFragment.k.getClass();
        String str = this.a;
        str.getClass();
        jw2 jw2Var = this.b;
        jw2Var.getClass();
        VerificationEmailFragment verificationEmailFragment = new VerificationEmailFragment();
        verificationEmailFragment.setArguments(BundleKt.bundleOf(new b36("EMAIL_KEY", str), new b36("EMAIL_VERIFICATION_REASON_KEY", jw2Var)));
        return verificationEmailFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return kx.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kx)) {
            return false;
        }
        kx kxVar = (kx) obj;
        return aa4.e(this.a, kxVar.a) && this.b == kxVar.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "EmailVerification(email=" + this.a + ", reason=" + this.b + ")";
    }
}
