package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.qrHand.howFindData.view.HowFindDataInChequeFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ug7 implements lk3 {
    public static final ug7 a = new ug7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new HowFindDataInChequeFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return ug7.class.getName();
    }
}
