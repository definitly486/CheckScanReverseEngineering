package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class yg7 implements lk3 {
    public static final yg7 a = new yg7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new LoadingSplashFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return yg7.class.getName();
    }
}
