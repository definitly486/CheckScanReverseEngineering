package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.auth.presentation.flow.view.AuthFlowFragment;

/* JADX INFO: loaded from: classes.dex */
public final class ix implements lk3 {
    public final AuthReason a;

    public ix(AuthReason authReason) {
        authReason.getClass();
        this.a = authReason;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        AuthFlowFragment.j.getClass();
        AuthReason authReason = this.a;
        authReason.getClass();
        AuthFlowFragment authFlowFragment = new AuthFlowFragment();
        authFlowFragment.setArguments(BundleKt.bundleOf(new b36("AUTH_REASON_KEY", authReason)));
        return authFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ix.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ix) && aa4.e(this.a, ((ix) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "AuthFlow(reason=" + this.a + ")";
    }
}
