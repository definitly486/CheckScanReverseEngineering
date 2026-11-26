package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.shared.universalWebView.presentation.UniversalWebViewArgs;
import com.warefly.checkscan.shared.universalWebView.presentation.flow.view.UniversalWebViewFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class w69 implements lk3 {
    public final UniversalWebViewArgs a;

    public w69(UniversalWebViewArgs universalWebViewArgs) {
        this.a = universalWebViewArgs;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        UniversalWebViewFlowFragment.k.getClass();
        UniversalWebViewFlowFragment universalWebViewFlowFragment = new UniversalWebViewFlowFragment();
        universalWebViewFlowFragment.setArguments(BundleKt.bundleOf(new b36("UNIVERSAL_WEB_VIEW_FLOW_ARGS_KEY", this.a)));
        return universalWebViewFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return w69.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof w69) && this.a.equals(((w69) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "WebPageFlow(args=" + this.a + ")";
    }
}
