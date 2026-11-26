package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemAdmitadRvPopularProductBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class zw3 extends vd9<yw3, ItemAdmitadRvPopularProductBinding> {
    public final dm3<h57, String, String, j59> b;
    public final bm3<String, String, j59> c;
    public final ll3<j59> d;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemAdmitadRvPopularProductBinding> {
        public static final a c = new a(3, ItemAdmitadRvPopularProductBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;", 0);

        @Override // defpackage.dm3
        public final ItemAdmitadRvPopularProductBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemAdmitadRvPopularProductBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zw3(dm3<? super h57, ? super String, ? super String, j59> dm3Var, bm3<? super String, ? super String, j59> bm3Var, ll3<j59> ll3Var) {
        super(a.c);
        this.b = dm3Var;
        this.c = bm3Var;
        this.d = ll3Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof yw3;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, yw3 yw3Var) {
        ItemAdmitadRvPopularProductBinding itemAdmitadRvPopularProductBinding = (ItemAdmitadRvPopularProductBinding) viewBinding;
        yw3 yw3Var2 = yw3Var;
        itemAdmitadRvPopularProductBinding.getClass();
        if (yw3Var2.h) {
            itemAdmitadRvPopularProductBinding.ivProduct.setImageResource(R.drawable.ic_adult);
            itemAdmitadRvPopularProductBinding.btnAdult.setVisibility(0);
            itemAdmitadRvPopularProductBinding.tvProductName.setText(itemAdmitadRvPopularProductBinding.getRoot().getResources().getText(R.string.adult_content_agree_description));
            ConstraintLayout root = itemAdmitadRvPopularProductBinding.getRoot();
            root.getClass();
            root.setOnClickListener(new lb7(new nk1(this, 2)));
            return;
        }
        ConstraintLayout root2 = itemAdmitadRvPopularProductBinding.getRoot();
        root2.getClass();
        root2.setOnClickListener(new lb7(new ax3(this, yw3Var2, 0)));
        itemAdmitadRvPopularProductBinding.getRoot().setVisibility(8);
        p37 p37VarE = com.bumptech.glide.a.e(itemAdmitadRvPopularProductBinding.ivProduct);
        String str = yw3Var2.a;
        String str2 = yw3Var2.g;
        String str3 = yw3Var2.f;
        String str4 = yw3Var2.e;
        p37VarE.h(str).L(itemAdmitadRvPopularProductBinding.ivProduct);
        String str5 = yw3Var2.b;
        boolean zM = ta8.M(str5);
        TextView textView = itemAdmitadRvPopularProductBinding.tvDiscount;
        if (zM) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
        itemAdmitadRvPopularProductBinding.tvDiscount.setText(str5);
        itemAdmitadRvPopularProductBinding.tvProductName.setText(yw3Var2.c);
        itemAdmitadRvPopularProductBinding.tvOldPrice.setText(str4);
        itemAdmitadRvPopularProductBinding.tvOldPrice.setPaintFlags(16);
        if (str4 == null || ta8.M(str4)) {
            TextView textView2 = itemAdmitadRvPopularProductBinding.tvCostWithDiscount;
            ConstraintLayout root3 = itemAdmitadRvPopularProductBinding.getRoot();
            root3.getClass();
            textView2.setTextColor(ContextCompat.getColor(root3.getContext(), R.color.blueCharcoal));
        } else {
            TextView textView3 = itemAdmitadRvPopularProductBinding.tvCostWithDiscount;
            ConstraintLayout root4 = itemAdmitadRvPopularProductBinding.getRoot();
            root4.getClass();
            textView3.setTextColor(ContextCompat.getColor(root4.getContext(), R.color.red));
        }
        itemAdmitadRvPopularProductBinding.tvCostWithDiscount.setText(yw3Var2.d);
        itemAdmitadRvPopularProductBinding.btnCashback.setText(str3);
        itemAdmitadRvPopularProductBinding.btnCashback.setVisibility(0);
        boolean zM2 = ta8.M(str2);
        ImageView imageView = itemAdmitadRvPopularProductBinding.ivShop;
        if (zM2) {
            imageView.setVisibility(8);
            itemAdmitadRvPopularProductBinding.tvExpiration.setVisibility(8);
        } else {
            imageView.setVisibility(0);
            itemAdmitadRvPopularProductBinding.tvExpiration.setText("По 10 сентября");
            itemAdmitadRvPopularProductBinding.tvExpiration.setVisibility(0);
            com.bumptech.glide.a.e(itemAdmitadRvPopularProductBinding.ivShop).h(str2).L(itemAdmitadRvPopularProductBinding.ivShop);
        }
        boolean zM3 = ta8.M(str3);
        TextView textView4 = itemAdmitadRvPopularProductBinding.btnCashback;
        if (zM3) {
            textView4.setVisibility(8);
        } else {
            textView4.setVisibility(0);
        }
        String str6 = yw3Var2.j;
        TextView textView5 = itemAdmitadRvPopularProductBinding.btnOrder;
        if (str6 == null) {
            textView5.setVisibility(8);
            return;
        }
        textView5.setText(textView5.getResources().getString(R.string.coupon_hot_item_order_button));
        textView5.setVisibility(0);
        textView5.setOnClickListener(new lb7(new bx3(this, yw3Var2, 0)));
    }
}
