package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bonuses.special.view.AllSpecialsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class nf7 implements lk3 {
    public static final nf7 a = new nf7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new AllSpecialsFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return nf7.class.getName();
    }
}
