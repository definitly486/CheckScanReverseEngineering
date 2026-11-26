package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.shared.universalWebView.presentation.UniversalWebViewArgs;
import com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class v69 implements lk3 {
    public final UniversalWebViewArgs a;

    public v69(UniversalWebViewArgs universalWebViewArgs) {
        universalWebViewArgs.getClass();
        this.a = universalWebViewArgs;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        UniversalWebViewFragment.r.getClass();
        UniversalWebViewArgs universalWebViewArgs = this.a;
        universalWebViewArgs.getClass();
        UniversalWebViewFragment universalWebViewFragment = new UniversalWebViewFragment();
        universalWebViewFragment.setArguments(BundleKt.bundleOf(new b36("UNIVERSAL_WEB_VIEW_ARGS_KEY", universalWebViewArgs)));
        return universalWebViewFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return v69.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v69) && aa4.e(this.a, ((v69) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "WebPage(args=" + this.a + ")";
    }
}
