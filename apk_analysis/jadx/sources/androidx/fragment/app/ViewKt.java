package androidx.fragment.app;

import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewKt {
    public static final <F extends Fragment> F findFragment(View view) {
        return (F) FragmentManager.findFragment(view);
    }
}
