package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class uf8 implements lk3 {
    public static final uf8 a = new uf8();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        SupportFormFragment.j.getClass();
        return new SupportFormFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return uf8.class.getName();
    }
}
