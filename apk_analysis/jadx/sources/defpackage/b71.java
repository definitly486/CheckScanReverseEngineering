package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.view.CategoriesDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class b71 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b71(Object obj, int i) {
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
                ((CategoriesDialog) obj2).f().selectCategoryInDialog((f81) obj);
                break;
            default:
                ((View) obj).getClass();
                ((u56) obj2).b.onEmailChangeClicked();
                break;
        }
        return j59.a;
    }
}
