package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemWithdrawalHeaderLogoBannerBinding;
import com.warefly.checkscan.presentation.tasks.promocode.presenter.PromocodeTaskDetailsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class so0 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ so0(int i, Object obj, Object obj2) {
        super(1);
        this.f = i;
        this.g = obj;
        this.h = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        Object obj3 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((po0) obj3).b.onOpenPromoLink(((to0) obj2).a.a);
                break;
            case 1:
                ((View) obj).getClass();
                ((vi6) obj3).b.invoke(Integer.valueOf(((ui6) obj2).d));
                break;
            case 2:
                PromocodeTaskDetailsPresenter promocodeTaskDetailsPresenter = ((pq6) obj2).b;
                ((View) obj).getClass();
                qq6 qq6Var = (qq6) obj3;
                int i2 = pq6.b.a[qq6Var.a.ordinal()];
                if (i2 == 1) {
                    String str = qq6Var.c;
                    if (str == null) {
                        str = "";
                    }
                    promocodeTaskDetailsPresenter.onActivatePromocodeClicked(str, qq6Var.b, false);
                } else if (i2 == 2) {
                    promocodeTaskDetailsPresenter.onCheckRewardClicked();
                }
                break;
            default:
                ((View) obj).getClass();
                rj9 rj9Var = ((mj9) obj3).c;
                Object tag = ((ItemWithdrawalHeaderLogoBannerBinding) obj2).getRoot().getTag();
                tag.getClass();
                rj9Var.onWithdrawClicked((wi9) tag, null);
                break;
        }
        return j59.a;
    }
}
