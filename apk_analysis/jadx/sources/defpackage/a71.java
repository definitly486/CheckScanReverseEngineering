package defpackage;

import android.view.View;
import com.my.target.f1;
import com.my.target.xj;
import com.warefly.checkscan.databinding.ItemOnlineShopsCategoryBinding;
import com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.view.CategoriesDialog;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class a71 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a71(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                CategoriesDialog categoriesDialog = (CategoriesDialog) obj;
                ze4<Object>[] ze4VarArr = CategoriesDialog.i;
                ((ItemOnlineShopsCategoryBinding) obj2).cbCategory.setChecked(true);
                List<g81> list = categoriesDialog.f;
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    ((g81) it.next()).b = false;
                }
                categoriesDialog.f().enableButton(false);
                em5 em5Var = categoriesDialog.h;
                if (em5Var != null) {
                    em5Var.submitList(list);
                }
                break;
            default:
                xj xjVar = (xj) obj2;
                f1.a aVar = (f1.a) obj;
                int i2 = xj.t;
                if (view == xjVar.q.getVideoControlView().getVideoControlButton()) {
                    aVar.c();
                } else if (view == xjVar.q.getVideoControlView().getSoundControlButton()) {
                    aVar.d();
                }
                break;
        }
    }
}
