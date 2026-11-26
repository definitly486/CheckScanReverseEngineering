package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.scanner.onboardingGallery.view.ScannerOnboardingGalleryFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class bi7 implements lk3 {
    public static final bi7 a = new bi7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new ScannerOnboardingGalleryFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return bi7.class.getName();
    }
}
