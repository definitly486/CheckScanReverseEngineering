package defpackage;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.bonuses.databinding.ItemRvOfflineOnlineShopsBinding;
import com.warefly.checkscan.bonuses.databinding.LayoutOfflineOnlineShopBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class uu5 extends vd9<wu5, ItemRvOfflineOnlineShopsBinding> {
    public final BonusesMainNewPresenter b;

    public interface a {
        void onOfflineOnlineShopClick(String str);
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ wu5.a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(wu5.a aVar) {
            super(1);
            this.g = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            uu5.this.b.onOfflineOnlineShopClick(this.g.c);
            return j59.a;
        }
    }

    public uu5(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(tu5.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof wu5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, wu5 wu5Var) {
        ItemRvOfflineOnlineShopsBinding itemRvOfflineOnlineShopsBinding = (ItemRvOfflineOnlineShopsBinding) viewBinding;
        itemRvOfflineOnlineShopsBinding.getClass();
        LayoutOfflineOnlineShopBinding layoutOfflineOnlineShopBinding = itemRvOfflineOnlineShopsBinding.firstShop;
        layoutOfflineOnlineShopBinding.getClass();
        ArrayList arrayList = wu5Var.a;
        m(layoutOfflineOnlineShopBinding, (wu5.a) qn1.W(0, arrayList));
        LayoutOfflineOnlineShopBinding layoutOfflineOnlineShopBinding2 = itemRvOfflineOnlineShopsBinding.secondShop;
        layoutOfflineOnlineShopBinding2.getClass();
        m(layoutOfflineOnlineShopBinding2, (wu5.a) qn1.W(1, arrayList));
    }

    public final void m(LayoutOfflineOnlineShopBinding layoutOfflineOnlineShopBinding, wu5.a aVar) {
        MaterialCardView root = layoutOfflineOnlineShopBinding.getRoot();
        root.getClass();
        root.setVisibility(aVar == null ? 4 : 0);
        if (aVar == null) {
            return;
        }
        layoutOfflineOnlineShopBinding.tvText.setText(aVar.a);
        com.bumptech.glide.a.d(layoutOfflineOnlineShopBinding.getRoot().getContext()).h(aVar.b).L(layoutOfflineOnlineShopBinding.ivBackground);
        MaterialCardView root2 = layoutOfflineOnlineShopBinding.getRoot();
        root2.getClass();
        root2.setOnClickListener(new lb7(new b(aVar)));
    }
}
