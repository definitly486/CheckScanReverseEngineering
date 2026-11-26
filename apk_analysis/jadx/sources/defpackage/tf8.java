package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.support.presentation.flow.SupportReason;
import com.warefly.checkscan.support.presentation.flow.view.SupportFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class tf8 implements lk3 {
    public final SupportReason a;

    public tf8(SupportReason supportReason) {
        supportReason.getClass();
        this.a = supportReason;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        SupportFlowFragment.j.getClass();
        SupportReason supportReason = this.a;
        supportReason.getClass();
        SupportFlowFragment supportFlowFragment = new SupportFlowFragment();
        supportFlowFragment.setArguments(BundleKt.bundleOf(new b36("REASON_FLOW_KEY", supportReason)));
        return supportFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return tf8.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tf8) && aa4.e(this.a, ((tf8) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Support(reason=" + this.a + ")";
    }

    public tf8() {
        this(0);
    }

    public /* synthetic */ tf8(int i) {
        this(SupportReason.Sections.b);
    }
}
