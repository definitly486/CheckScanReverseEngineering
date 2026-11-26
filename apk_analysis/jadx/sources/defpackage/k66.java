package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class k66 implements lk3 {
    public final boolean a;

    public k66(boolean z) {
        this.a = z;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        PersonalDataFormFragment.l.getClass();
        PersonalDataFormFragment personalDataFormFragment = new PersonalDataFormFragment();
        personalDataFormFragment.setArguments(BundleKt.bundleOf(new b36("IS_AFTER_ONBOARDING_KEY", Boolean.valueOf(this.a))));
        return personalDataFormFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return k66.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof k66) && this.a == ((k66) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("PersonalDataForm(afterOnboarding=", ")", this.a);
    }
}
