package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.products.presentation.main.view.MainProductsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ek6 implements lk3 {
    public static final ek6 a = new ek6();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        MainProductsFragment.h.getClass();
        return new MainProductsFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return ek6.class.getName();
    }
}
