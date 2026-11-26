package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.cobrand.view.CobrandFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class eg7 implements lk3 {
    public final String a;

    public eg7(String str) {
        this.a = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CobrandFlowFragment cobrandFlowFragment = new CobrandFlowFragment();
        Bundle bundle = new Bundle();
        bundle.putString("host", this.a);
        cobrandFlowFragment.setArguments(bundle);
        return cobrandFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return eg7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof eg7) && this.a.equals(((eg7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("CobrandFlow(deeplinkHost=", this.a, ")");
    }
}
