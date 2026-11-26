package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.createCard.view.CreateCardFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ig7 implements lk3 {
    public final d62 a;

    public ig7(d62 d62Var) {
        d62Var.getClass();
        this.a = d62Var;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CreateCardFragment createCardFragment = new CreateCardFragment();
        d62 d62Var = this.a;
        d62Var.getClass();
        createCardFragment.setArguments(new tq0(d62Var).getArguments());
        return createCardFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ig7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ig7) && this.a == ((ig7) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CreateCardNumber(fromType=" + this.a + ")";
    }

    public ig7() {
        this(0);
    }

    public /* synthetic */ ig7(int i) {
        this(d62.Default);
    }
}
