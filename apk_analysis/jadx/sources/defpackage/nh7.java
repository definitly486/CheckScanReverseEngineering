package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.operations.allOperations.view.AllOperationsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class nh7 implements lk3 {
    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        AllOperationsFragment allOperationsFragment = new AllOperationsFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("filterId", 0);
        allOperationsFragment.setArguments(bundle);
        return allOperationsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return nh7.class.getName();
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof nh7);
    }

    public final int hashCode() {
        return Integer.hashCode(0);
    }

    public final String toString() {
        return "Operations(filterId=0)";
    }
}
