package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemRvBalanceIncreaseCashbackBinding;
import com.warefly.checkscan.databinding.ItemWithdrawalCommonBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class x30 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x30(int i, Object obj, Object obj2) {
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
                ((y30) obj3).b.onPromotionItemClick(((ItemRvBalanceIncreaseCashbackBinding) obj2).getRoot().getTag().toString());
                break;
            case 1:
                ((View) obj).getClass();
                ((po0) obj3).b.onHidePromoBanner(((to0) obj2).a.a);
                break;
            case 2:
                ((View) obj).getClass();
                ((l58) obj3).i.onSpecialItemClick((o58) obj2);
                break;
            default:
                ((View) obj).getClass();
                rj9 rj9Var = ((ij9) obj3).b;
                Object tag = ((ItemWithdrawalCommonBannerBinding) obj2).getRoot().getTag();
                tag.getClass();
                rj9Var.onWithdrawClicked((wi9) tag, null);
                break;
        }
        return j59.a;
    }
}
