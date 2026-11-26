package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallFragment;

/* JADX INFO: loaded from: classes.dex */
public final class jx implements lk3 {
    public final String a;

    public jx(String str) {
        str.getClass();
        this.a = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        VerificationCallFragment.j.getClass();
        String str = this.a;
        str.getClass();
        VerificationCallFragment verificationCallFragment = new VerificationCallFragment();
        verificationCallFragment.setArguments(BundleKt.bundleOf(new b36("PHONE_KEY", str)));
        return verificationCallFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return jx.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof jx) && aa4.e(this.a, ((jx) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("CallVerification(phone=", this.a, ")");
    }
}
