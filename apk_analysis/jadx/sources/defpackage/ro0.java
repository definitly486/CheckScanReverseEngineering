package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemWithdrawalCommonMethodBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ro0 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ro0(int i, Object obj, Object obj2) {
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
                ((po0) obj3).b.onOrdPromoClicked((b06) obj2);
                break;
            case 1:
                ((View) obj).getClass();
                ((l58) obj3).i.onSpecialItemOrdClick(((o58) obj2).e);
                break;
            default:
                ((View) obj).getClass();
                rj9 rj9Var = ((kj9) obj3).b;
                Object tag = ((ItemWithdrawalCommonMethodBinding) obj2).getRoot().getTag();
                tag.getClass();
                rj9Var.onWithdrawClicked((wi9) tag, null);
                break;
        }
        return j59.a;
    }
}
