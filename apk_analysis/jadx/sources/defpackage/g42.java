package defpackage;

import android.graphics.Color;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvCouponsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class g42 extends vd9<gr6, ItemRvCouponsBinding> {
    public final l42 b;
    public final m42 c;

    public g42(l42 l42Var, m42 m42Var) {
        super(d42.c);
        this.b = l42Var;
        this.c = m42Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof gr6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, gr6 gr6Var) {
        ItemRvCouponsBinding itemRvCouponsBinding = (ItemRvCouponsBinding) viewBinding;
        gr6 gr6Var2 = gr6Var;
        itemRvCouponsBinding.getClass();
        ConstraintLayout root = itemRvCouponsBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new e42(this, gr6Var2)));
        a.e(itemRvCouponsBinding.ivShop).h(gr6Var2.b).L(itemRvCouponsBinding.ivShop);
        itemRvCouponsBinding.tvShopName.setText(gr6Var2.d);
        itemRvCouponsBinding.tvCategory.setText(gr6Var2.e);
        TextView textView = itemRvCouponsBinding.tvDiscount;
        aq6 aq6Var = gr6Var2.f;
        textView.setText(aq6Var.a);
        itemRvCouponsBinding.tvSubcategory.setText(aq6Var.b);
        ImageButton imageButton = itemRvCouponsBinding.btnFavourite;
        imageButton.setSelected(gr6Var2.c);
        imageButton.setOnClickListener(new lb7(new f42(this, gr6Var2, imageButton)));
        q00 q00Var = gr6Var2.g;
        if (q00Var != null) {
            String str = q00Var.a;
            TextView textView2 = itemRvCouponsBinding.tvExpiration;
            if (str == null || ta8.M(str)) {
                textView2.setVisibility(8);
                return;
            }
            textView2.setText(str);
            String str2 = q00Var.c;
            if (str2 != null) {
                DrawableCompat.setTint(DrawableCompat.wrap(textView2.getBackground()).mutate(), Color.parseColor(str2));
            }
            String str3 = q00Var.b;
            if (str3 != null) {
                textView2.setTextColor(Color.parseColor(str3));
            }
            textView2.setVisibility(0);
        }
    }
}
