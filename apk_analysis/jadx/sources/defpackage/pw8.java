package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvTitleWithButtonBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class pw8 extends vd9<qw8, ItemRvTitleWithButtonBinding> {
    public final BonusesMainNewPresenter b;

    public static final class a {
        public final int a;
        public final sq0 b;
        public final String c;

        public a(int i, sq0 sq0Var, String str) {
            sq0Var.getClass();
            this.a = i;
            this.b = sq0Var;
            this.c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && this.c.equals(aVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + ((this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ItemContent(id=");
            sb.append(this.a);
            sb.append(", direction=");
            sb.append(this.b);
            sb.append(", title=");
            return me0.d(sb, this.c, ")");
        }
    }

    public interface b {
        void onTitleWithButtonClick(int i, sq0 sq0Var, String str);
    }

    public pw8(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(ow8.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof qw8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, qw8 qw8Var) {
        ItemRvTitleWithButtonBinding itemRvTitleWithButtonBinding = (ItemRvTitleWithButtonBinding) viewBinding;
        qw8 qw8Var2 = qw8Var;
        itemRvTitleWithButtonBinding.getClass();
        LinearLayout root = itemRvTitleWithButtonBinding.getRoot();
        int i = qw8Var2.a;
        sq0 sq0Var = qw8Var2.d;
        String str = qw8Var2.b;
        root.setTag(new a(i, sq0Var, str));
        itemRvTitleWithButtonBinding.tvTitle.setText(str);
        itemRvTitleWithButtonBinding.btnAction.setText(qw8Var2.c);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        final ItemRvTitleWithButtonBinding itemRvTitleWithButtonBinding = (ItemRvTitleWithButtonBinding) viewBinding;
        itemRvTitleWithButtonBinding.getClass();
        itemRvTitleWithButtonBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: nw8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Object tag = itemRvTitleWithButtonBinding.getRoot().getTag();
                tag.getClass();
                pw8.a aVar = (pw8.a) tag;
                this.b.onTitleWithButtonClick(aVar.a, aVar.b, aVar.c);
            }
        });
    }
}
