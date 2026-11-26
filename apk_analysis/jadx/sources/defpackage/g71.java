package defpackage;

import com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesPresenter;
import com.warefly.checkscan.presentation.bonuses.categories.view.CategoriesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class g71 extends gh4 implements bm3<Integer, String, j59> {
    public final /* synthetic */ CategoriesFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g71(CategoriesFragment categoriesFragment) {
        super(2);
        this.f = categoriesFragment;
    }

    @Override // defpackage.bm3
    public final j59 invoke(Integer num, String str) {
        int iIntValue = num.intValue();
        String str2 = str;
        str2.getClass();
        CategoriesPresenter categoriesPresenter = this.f.presenter;
        if (categoriesPresenter != null) {
            categoriesPresenter.onCategoryClicked(iIntValue, str2);
            return j59.a;
        }
        aa4.j("presenter");
        throw null;
    }
}
