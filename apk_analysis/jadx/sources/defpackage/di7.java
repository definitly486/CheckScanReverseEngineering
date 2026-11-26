package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.account.sessionExpired.view.SessionExpiredFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class di7 implements lk3 {
    public static final di7 a = new di7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        SessionExpiredFragment.i.getClass();
        return new SessionExpiredFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return di7.class.getName();
    }
}
