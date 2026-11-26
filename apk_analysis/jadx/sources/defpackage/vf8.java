package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.support.presentation.main.view.SupportSectionsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class vf8 implements lk3 {
    public static final vf8 a = new vf8();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        SupportSectionsFragment.i.getClass();
        return new SupportSectionsFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return vf8.class.getName();
    }
}
