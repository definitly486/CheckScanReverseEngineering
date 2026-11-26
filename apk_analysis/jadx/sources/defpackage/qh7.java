package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.profile.reason.ProfileReason;
import com.warefly.checkscan.presentation.profile.view.ProfileFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class qh7 implements lk3 {
    public final ProfileReason a;

    public qh7(ProfileReason profileReason) {
        profileReason.getClass();
        this.a = profileReason;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ProfileFlowFragment.j.getClass();
        ProfileReason profileReason = this.a;
        profileReason.getClass();
        ProfileFlowFragment profileFlowFragment = new ProfileFlowFragment();
        profileFlowFragment.setArguments(BundleKt.bundleOf(new b36("PROFILE_REASON_KEY", profileReason)));
        return profileFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return qh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qh7) && aa4.e(this.a, ((qh7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Profile(reason=" + this.a + ")";
    }
}
