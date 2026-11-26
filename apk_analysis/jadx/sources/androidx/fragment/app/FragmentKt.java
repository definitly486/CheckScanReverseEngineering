package androidx.fragment.app;

import android.os.Bundle;
import defpackage.bm3;
import defpackage.j59;
import defpackage.n5;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentKt {
    public static final void clearFragmentResult(Fragment fragment, String str) {
        fragment.getParentFragmentManager().clearFragmentResult(str);
    }

    public static final void clearFragmentResultListener(Fragment fragment, String str) {
        fragment.getParentFragmentManager().clearFragmentResultListener(str);
    }

    public static final void setFragmentResult(Fragment fragment, String str, Bundle bundle) {
        fragment.getParentFragmentManager().setFragmentResult(str, bundle);
    }

    public static final void setFragmentResultListener(Fragment fragment, String str, bm3<? super String, ? super Bundle, j59> bm3Var) {
        fragment.getParentFragmentManager().setFragmentResultListener(str, fragment, new n5(bm3Var));
    }
}
