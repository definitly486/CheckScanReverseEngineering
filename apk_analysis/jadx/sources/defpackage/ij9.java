package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemWithdrawalCommonBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ij9 extends vd9<jj9, ItemWithdrawalCommonBannerBinding> {
    public final rj9 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemWithdrawalCommonBannerBinding> {
        public static final a c = new a(3, ItemWithdrawalCommonBannerBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;", 0);

        @Override // defpackage.dm3
        public final ItemWithdrawalCommonBannerBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemWithdrawalCommonBannerBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public ij9(rj9 rj9Var) {
        super(a.c);
        this.b = rj9Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof jj9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, jj9 jj9Var) {
        ItemWithdrawalCommonBannerBinding itemWithdrawalCommonBannerBinding = (ItemWithdrawalCommonBannerBinding) viewBinding;
        jj9 jj9Var2 = jj9Var;
        itemWithdrawalCommonBannerBinding.getClass();
        itemWithdrawalCommonBannerBinding.getRoot().setTag(jj9Var2.c);
        ((h37) com.bumptech.glide.a.e(itemWithdrawalCommonBannerBinding.getRoot()).h(jj9Var2.b).r(is7.b(pl2.d(8.0f), ContextCompat.getColor(itemWithdrawalCommonBannerBinding.getRoot().getContext(), R.color.almostThereMoon)))).b(new s37().D(new s81(), new e87(pl2.e(8)))).L(itemWithdrawalCommonBannerBinding.ivBanner);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemWithdrawalCommonBannerBinding itemWithdrawalCommonBannerBinding = (ItemWithdrawalCommonBannerBinding) viewBinding;
        itemWithdrawalCommonBannerBinding.getClass();
        ImageView root = itemWithdrawalCommonBannerBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new x30(3, this, itemWithdrawalCommonBannerBinding)));
    }
}
