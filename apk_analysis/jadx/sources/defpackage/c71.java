package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.view.CategoriesDialog;
import com.warefly.checkscan.products.presentation.shop.view.ShopFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class c71 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c71(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((CategoriesDialog) obj2).f().enableButton(((Boolean) obj).booleanValue());
                break;
            case 1:
                ((View) obj).getClass();
                ((u56) obj2).b.onEmailChangeClicked();
                break;
            default:
                ((View) obj).getClass();
                ((ShopFragment) obj2).o().loadContent();
                break;
        }
        return j59.a;
    }
}
