package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class dh7 implements lk3 {
    public static final dh7 a = new dh7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new NewSearchProductsFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return dh7.class.getName();
    }
}
