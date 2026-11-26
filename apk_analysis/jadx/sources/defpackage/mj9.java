package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemWithdrawalHeaderLogoBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class mj9 extends vd9<nj9, ItemWithdrawalHeaderLogoBannerBinding> {
    public final boolean b;
    public final rj9 c;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemWithdrawalHeaderLogoBannerBinding> {
        public static final a c = new a(3, ItemWithdrawalHeaderLogoBannerBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;", 0);

        @Override // defpackage.dm3
        public final ItemWithdrawalHeaderLogoBannerBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemWithdrawalHeaderLogoBannerBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public mj9(boolean z, rj9 rj9Var) {
        super(a.c);
        this.b = z;
        this.c = rj9Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof nj9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, nj9 nj9Var) {
        ItemWithdrawalHeaderLogoBannerBinding itemWithdrawalHeaderLogoBannerBinding = (ItemWithdrawalHeaderLogoBannerBinding) viewBinding;
        nj9 nj9Var2 = nj9Var;
        itemWithdrawalHeaderLogoBannerBinding.getClass();
        itemWithdrawalHeaderLogoBannerBinding.getRoot().setTag(nj9Var2.e);
        if (this.b) {
            ConstraintLayout root = itemWithdrawalHeaderLogoBannerBinding.getRoot();
            root.getClass();
            ie9.a(pl2.e(16), root);
        } else {
            ConstraintLayout root2 = itemWithdrawalHeaderLogoBannerBinding.getRoot();
            root2.getClass();
            ie9.b(root2, pl2.e(197));
        }
        String str = nj9Var2.c;
        if (str != null) {
            itemWithdrawalHeaderLogoBannerBinding.tvValue.setText(str);
            TextView textView = itemWithdrawalHeaderLogoBannerBinding.tvValue;
            textView.getClass();
            textView.setVisibility(0);
        }
        itemWithdrawalHeaderLogoBannerBinding.tvDescription.setText(nj9Var2.b);
        ((h37) com.bumptech.glide.a.e(itemWithdrawalHeaderLogoBannerBinding.getRoot()).h(nj9Var2.d).r(is7.b(pl2.d(7.0f), ContextCompat.getColor(itemWithdrawalHeaderLogoBannerBinding.getRoot().getContext(), R.color.almostThereMoon)))).b(new s37().D(new s81(), new e87(pl2.e(7)))).L(itemWithdrawalHeaderLogoBannerBinding.ivLogo);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemWithdrawalHeaderLogoBannerBinding itemWithdrawalHeaderLogoBannerBinding = (ItemWithdrawalHeaderLogoBannerBinding) viewBinding;
        itemWithdrawalHeaderLogoBannerBinding.getClass();
        ConstraintLayout root = itemWithdrawalHeaderLogoBannerBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new so0(3, this, itemWithdrawalHeaderLogoBannerBinding)));
    }
}
