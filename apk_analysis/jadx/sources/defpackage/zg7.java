package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.mailChange.view.MailChangeFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class zg7 implements lk3 {
    public static final zg7 a = new zg7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new MailChangeFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return zg7.class.getName();
    }
}
