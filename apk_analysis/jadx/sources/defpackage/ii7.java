package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.success.view.SuccessFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ii7 implements lk3 {
    public static final ii7 a = new ii7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new SuccessFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return ii7.class.getName();
    }
}
