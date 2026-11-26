package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesPresenter;
import com.warefly.checkscan.presentation.bonuses.categories.view.CategoriesFragment;
import yads.nr4;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class e71 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ e71(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ze4<Object>[] ze4VarArr = CategoriesFragment.i;
                CategoriesPresenter categoriesPresenter = ((CategoriesFragment) obj).presenter;
                if (categoriesPresenter != null) {
                    categoriesPresenter.onBackPressed();
                    return;
                } else {
                    aa4.j("presenter");
                    throw null;
                }
            default:
                ((nr4) obj).a(view);
                return;
        }
    }
}
