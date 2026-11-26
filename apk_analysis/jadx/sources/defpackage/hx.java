package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailFragment;

/* JADX INFO: loaded from: classes.dex */
public final class hx implements lk3 {
    public static final hx a = new hx();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        AddEmailFragment.i.getClass();
        return new AddEmailFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return hx.class.getName();
    }
}
