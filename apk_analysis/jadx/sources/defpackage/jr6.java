package defpackage;

import android.graphics.Color;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemAdmitadRvPromocodeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class jr6 extends vd9<gr6, ItemAdmitadRvPromocodeBinding> {
    public final sk0 b;
    public final tk0 c;

    public jr6(sk0 sk0Var, tk0 tk0Var) {
        super(hr6.c);
        this.b = sk0Var;
        this.c = tk0Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof gr6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, gr6 gr6Var) {
        ItemAdmitadRvPromocodeBinding itemAdmitadRvPromocodeBinding = (ItemAdmitadRvPromocodeBinding) viewBinding;
        gr6 gr6Var2 = gr6Var;
        itemAdmitadRvPromocodeBinding.getClass();
        ConstraintLayout root = itemAdmitadRvPromocodeBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new ir6(this, gr6Var2)));
        a.e(itemAdmitadRvPromocodeBinding.ivShop).h(gr6Var2.b).L(itemAdmitadRvPromocodeBinding.ivShop);
        itemAdmitadRvPromocodeBinding.tvShopName.setText(gr6Var2.d);
        itemAdmitadRvPromocodeBinding.tvCategory.setText(gr6Var2.e);
        TextView textView = itemAdmitadRvPromocodeBinding.tvDiscount;
        aq6 aq6Var = gr6Var2.f;
        textView.setText(aq6Var.a);
        itemAdmitadRvPromocodeBinding.tvSubcategory.setText(aq6Var.b);
        ImageButton imageButton = itemAdmitadRvPromocodeBinding.btnFavouriteCoupon;
        imageButton.setSelected(gr6Var2.c);
        imageButton.setOnClickListener(new lb7(new c7(this, gr6Var2, 1)));
        q00 q00Var = gr6Var2.g;
        if (q00Var != null) {
            String str = q00Var.a;
            TextView textView2 = itemAdmitadRvPromocodeBinding.tvExpiration;
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
