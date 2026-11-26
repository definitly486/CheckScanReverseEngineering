package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.scanner.info.view.ScannerInfoFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class zh7 implements lk3 {
    public static final zh7 a = new zh7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new ScannerInfoFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return zh7.class.getName();
    }
}
