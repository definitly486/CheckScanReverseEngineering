package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ag7 implements lk3 {
    public static final ag7 a = new ag7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new ChequesFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return ag7.class.getName();
    }
}
