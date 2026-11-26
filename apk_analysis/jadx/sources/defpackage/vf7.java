package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.changePhone.view.ChangePhoneFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class vf7 implements lk3 {
    public static final vf7 a = new vf7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new ChangePhoneFlowFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return vf7.class.getName();
    }
}
