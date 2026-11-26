package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.support.presentation.questions.view.SupportQuestionsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class sf8 implements lk3 {
    public final String a;

    public sf8(String str) {
        str.getClass();
        this.a = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        SupportQuestionsFragment.i.getClass();
        String str = this.a;
        str.getClass();
        SupportQuestionsFragment supportQuestionsFragment = new SupportQuestionsFragment();
        supportQuestionsFragment.setArguments(BundleKt.bundleOf(new b36("TOOLBAR_TEXT_KEY", str)));
        return supportQuestionsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return sf8.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sf8) && aa4.e(this.a, ((sf8) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("Questions(toolbarText=", this.a, ")");
    }
}
