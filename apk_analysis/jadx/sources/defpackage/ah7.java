package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.qrHand.view.QrHandFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ah7 implements lk3 {
    public static final ah7 a = new ah7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new QrHandFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return ah7.class.getName();
    }
}
