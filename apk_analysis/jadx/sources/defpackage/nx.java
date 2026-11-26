package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallFragment;

/* JADX INFO: loaded from: classes.dex */
public final class nx implements lk3 {
    public final String a;
    public final String b;
    public final String c;

    public nx(String str, String str2, String str3) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        VerificationUserCallFragment.i.getClass();
        String str = this.a;
        str.getClass();
        VerificationUserCallFragment verificationUserCallFragment = new VerificationUserCallFragment();
        verificationUserCallFragment.setArguments(BundleKt.bundleOf(new b36("PHONE_KEY", this.b), new b36("CALL_PHONE_KEY", str), new b36("EMAIL_KEY", this.c)));
        return verificationUserCallFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return nx.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nx)) {
            return false;
        }
        nx nxVar = (nx) obj;
        return aa4.e(this.a, nxVar.a) && this.b.equals(nxVar.b) && aa4.e(this.c, nxVar.c);
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return me0.d(ad2.d("UserCallVerification(callPhone=", this.a, ", phone=", this.b, ", email="), this.c, ")");
    }
}
