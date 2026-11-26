package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.electrocheque.view.WebViewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class pi7 implements lk3 {
    public static final pi7 a = new pi7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new WebViewFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return pi7.class.getName();
    }
}
