package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.update.view.UpdateFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class mi7 implements lk3 {
    public static final mi7 a = new mi7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new UpdateFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return mi7.class.getName();
    }
}
