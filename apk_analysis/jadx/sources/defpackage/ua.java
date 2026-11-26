package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvAdvancePromoSelectCardBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ua extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ ItemRvAdvancePromoSelectCardBinding f;
    public final /* synthetic */ xa g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ua(ItemRvAdvancePromoSelectCardBinding itemRvAdvancePromoSelectCardBinding, xa xaVar) {
        super(1);
        this.f = itemRvAdvancePromoSelectCardBinding;
        this.g = xaVar;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        ItemRvAdvancePromoSelectCardBinding itemRvAdvancePromoSelectCardBinding = this.f;
        Context context = itemRvAdvancePromoSelectCardBinding.getRoot().getContext();
        context.getClass();
        i80.a aVar = new i80.a(context);
        aVar.l = ContextCompat.getColor(context, R.color.white);
        aVar.f();
        aVar.d();
        String str = this.g.f.b;
        str.getClass();
        aVar.n = str;
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
        ImageView imageView = itemRvAdvancePromoSelectCardBinding.ivCategoriesInfo;
        imageView.getClass();
        i80.j(i80Var, imageView);
        return j59.a;
    }
}
