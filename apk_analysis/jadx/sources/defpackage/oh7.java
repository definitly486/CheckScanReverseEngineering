package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.phoneChange.view.PhoneChangeFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class oh7 implements lk3 {
    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new PhoneChangeFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return oh7.class.getName();
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof oh7);
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + (Boolean.hashCode(false) * 31);
    }

    public final String toString() {
        return "PhoneChange(fromRegistration=false, fromPromoRegistration=false)";
    }
}
