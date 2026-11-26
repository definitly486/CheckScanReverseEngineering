package defpackage;

import com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesPresenter;
import com.warefly.checkscan.presentation.bonuses.categories.view.CategoriesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class f71 extends gh4 implements ll3<j59> {
    public final /* synthetic */ CategoriesFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f71(CategoriesFragment categoriesFragment) {
        super(0);
        this.f = categoriesFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        CategoriesPresenter categoriesPresenter = this.f.presenter;
        if (categoriesPresenter != null) {
            categoriesPresenter.loadMoreCategories();
            return j59.a;
        }
        aa4.j("presenter");
        throw null;
    }
}
