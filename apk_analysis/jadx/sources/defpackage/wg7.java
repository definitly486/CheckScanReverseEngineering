package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.issueCard.view.IssueCardFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class wg7 implements lk3 {
    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        IssueCardFlowFragment issueCardFlowFragment = new IssueCardFlowFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("new_flow", false);
        issueCardFlowFragment.setArguments(bundle);
        return issueCardFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return wg7.class.getName();
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof wg7);
    }

    public final int hashCode() {
        return Boolean.hashCode(false);
    }

    public final String toString() {
        return "IssueCardFlow(fromDeeplink=false)";
    }
}
