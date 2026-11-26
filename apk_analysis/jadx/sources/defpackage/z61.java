package defpackage;

import android.view.View;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.view.CategoriesDialog;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.DateSortDialog;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class z61 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ BaseBottomSheetDialog c;

    public /* synthetic */ z61(BaseBottomSheetDialog baseBottomSheetDialog, int i) {
        this.b = i;
        this.c = baseBottomSheetDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        BaseBottomSheetDialog baseBottomSheetDialog = this.c;
        switch (i) {
            case 0:
                CategoriesDialog categoriesDialog = (CategoriesDialog) baseBottomSheetDialog;
                ze4<Object>[] ze4VarArr = CategoriesDialog.i;
                categoriesDialog.f().showProductsByCategory();
                categoriesDialog.dismiss();
                break;
            default:
                ze4<Object>[] ze4VarArr2 = DateSortDialog.f;
                ((DateSortDialog) baseBottomSheetDialog).dismiss();
                break;
        }
    }
}
