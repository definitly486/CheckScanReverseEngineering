package androidx.navigation.fragment;

import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentKt {
    public static final NavController findNavController(Fragment fragment) {
        fragment.getClass();
        return NavHostFragment.Companion.findNavController(fragment);
    }
}
