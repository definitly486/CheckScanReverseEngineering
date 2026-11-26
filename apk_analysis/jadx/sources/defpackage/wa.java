package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvAdvancePromoSelectCardBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceCardTextWithButtonsBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class wa extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ wa(int i, Object obj, Object obj2) {
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
                ItemRvAdvancePromoSelectCardBinding itemRvAdvancePromoSelectCardBinding = (ItemRvAdvancePromoSelectCardBinding) obj3;
                Context context = itemRvAdvancePromoSelectCardBinding.getRoot().getContext();
                context.getClass();
                i80.a aVar = new i80.a(context);
                aVar.l = ContextCompat.getColor(context, R.color.white);
                aVar.f();
                aVar.d();
                aVar.n = ((xa) obj2).h.c;
                aVar.p = 14.0f;
                bs bsVar = bs.ALIGN_ANCHOR;
                bsVar.getClass();
                aVar.i = bsVar;
                aVar.a();
                aVar.b();
                aVar.e();
                aVar.c();
                aVar.o = ContextCompat.getColor(context, R.color.gray_800);
                i80 i80Var = new i80(context, aVar);
                ImageView imageView = itemRvAdvancePromoSelectCardBinding.ivPskInfo;
                imageView.getClass();
                i80.j(i80Var, imageView);
                break;
            case 1:
                ((View) obj).getClass();
                BalancePresenter balancePresenter = ((e20) obj3).b;
                Object tag = ((ItemRvBalanceCardTextWithButtonsBinding) obj2).btnBottom.getTag();
                tag.getClass();
                balancePresenter.onButtonClick((o10) tag);
                break;
            case 2:
                ((View) obj).getClass();
                ws4 ws4Var = (ws4) obj2;
                ((ss4) obj3).b.onLoanClicked(ws4Var.a, ws4Var.e.b);
                break;
            default:
                ((View) obj).getClass();
                ((dv7) obj3).b.onOrdClick(((dn1) obj2).e);
                break;
        }
        return j59.a;
    }
}
