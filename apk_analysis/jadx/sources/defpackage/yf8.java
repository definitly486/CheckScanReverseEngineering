package defpackage;

import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.support.databinding.ItemSupportSectionBinding;
import com.warefly.checkscan.support.presentation.main.presenter.SupportSectionsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class yf8 extends vd9<ag8, ItemSupportSectionBinding> {
    public final SupportSectionsPresenter b;

    public interface a {
        void onSectionClicked(ag8 ag8Var);
    }

    public yf8(SupportSectionsPresenter supportSectionsPresenter) {
        super(xf8.c);
        this.b = supportSectionsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ag8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ag8 ag8Var) {
        ItemSupportSectionBinding itemSupportSectionBinding = (ItemSupportSectionBinding) viewBinding;
        ag8 ag8Var2 = ag8Var;
        itemSupportSectionBinding.getClass();
        itemSupportSectionBinding.tvTitle.setText(ag8Var2.a.b);
        MaterialCardView root = itemSupportSectionBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new zf8(this, ag8Var2, 0)));
    }
}
