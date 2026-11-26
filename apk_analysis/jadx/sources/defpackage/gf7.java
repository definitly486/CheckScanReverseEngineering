package defpackage;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.common.GoogleApiAvailability;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class gf7 extends FragmentManager.FragmentLifecycleCallbacks {
    public final re a;

    public gf7(re reVar) {
        reVar.getClass();
        this.a = reVar;
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public final void onFragmentPaused(FragmentManager fragmentManager, Fragment fragment) {
        boolean z;
        fragmentManager.getClass();
        fragment.getClass();
        if (fragment instanceof BaseFragment) {
            try {
                Context context = ((BaseFragment) fragment).getContext();
                if (context != null) {
                    try {
                        z = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) == 0;
                    } catch (Throwable unused) {
                    }
                    if (!z) {
                        re reVar = this.a;
                        ((BaseFragment) fragment).getContext();
                        reVar.d(fragment.getClass().getSimpleName());
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable unused2) {
            }
        }
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public final void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
        fragmentManager.getClass();
        fragment.getClass();
        if (fragment instanceof BaseFragment) {
            try {
                re reVar = this.a;
                ((BaseFragment) fragment).getContext();
                FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
                fragmentActivityRequireActivity.getClass();
                String simpleName = fragment.getClass().getSimpleName();
                Fragment parentFragment = ((BaseFragment) fragment).getParentFragment();
                reVar.b(fragmentActivityRequireActivity, simpleName, parentFragment != null ? parentFragment.getClass().getSimpleName() : fragment.requireActivity().getClass().getSimpleName());
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
        }
    }
}
