package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bonuses.categories.view.CategoriesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class uf7 implements lk3 {
    public static final uf7 a = new uf7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new CategoriesFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return uf7.class.getName();
    }
}
