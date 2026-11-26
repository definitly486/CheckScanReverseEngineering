package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemFilterCategoryBinding;
import com.warefly.checkscan.products.presentation.shop.view.ShopFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class yy4 extends gh4 implements nl3 {
    public final /* synthetic */ int f = 0;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yy4(ItemFilterCategoryBinding itemFilterCategoryBinding, zy4 zy4Var, vy4 vy4Var) {
        super(1);
        this.g = itemFilterCategoryBinding;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((ItemFilterCategoryBinding) obj2).checkboxMain.getClass();
                throw null;
            default:
                ((View) obj).getClass();
                ((ShopFragment) obj2).o().onScanClicked();
                return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yy4(ShopFragment shopFragment) {
        super(1);
        this.g = shopFragment;
    }
}
