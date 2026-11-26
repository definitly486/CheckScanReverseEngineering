package defpackage;

import android.view.View;
import com.warefly.checkscan.bonuses.databinding.ItemRvShopsFavoritePreviewHotBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pv7 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ pv7(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                BonusesMainNewPresenter bonusesMainNewPresenter = ((rv7) obj2).b;
                Object tag = ((ItemRvShopsFavoritePreviewHotBinding) obj).getRoot().getTag();
                tag.getClass();
                bonusesMainNewPresenter.onPreviewFavoriteClick(((Integer) tag).intValue());
                break;
            default:
                nl3<? super I, j59> nl3Var = ((jz7) obj2).t;
                if (nl3Var != 0) {
                    nl3Var.invoke((Object) obj);
                }
                break;
        }
    }
}
