package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ch7 implements lk3 {
    public static final ch7 a = new ch7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new NewBankCardsFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return ch7.class.getName();
    }
}
