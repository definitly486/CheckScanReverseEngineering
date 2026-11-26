package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskDisclaimerBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class an8 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ ItemRvTaskDisclaimerBinding f;
    public final /* synthetic */ cn8 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public an8(ItemRvTaskDisclaimerBinding itemRvTaskDisclaimerBinding, cn8 cn8Var) {
        super(1);
        this.f = itemRvTaskDisclaimerBinding;
        this.g = cn8Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        ItemRvTaskDisclaimerBinding itemRvTaskDisclaimerBinding = this.f;
        Context context = itemRvTaskDisclaimerBinding.getRoot().getContext();
        context.getClass();
        i80.a aVar = new i80.a(context);
        aVar.l = ContextCompat.getColor(context, R.color.white);
        aVar.f();
        aVar.d();
        String str = this.g.b;
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
        aVar.o = ContextCompat.getColor(context, R.color.blueCharcoal);
        i80 i80Var = new i80(context, aVar);
        ImageView imageView = itemRvTaskDisclaimerBinding.ivTooltip;
        imageView.getClass();
        v80 v80Var = new v80(imageView, k80.TOP);
        View view2 = v80Var.a;
        if (i80Var.b(view2)) {
            view2.post(new e80(i80Var, view2, v80Var));
        }
        return j59.a;
    }
}
