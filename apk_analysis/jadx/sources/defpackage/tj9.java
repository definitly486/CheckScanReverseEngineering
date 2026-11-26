package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Space;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemWithdrawalMiniLogoBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class tj9 extends vd9<uj9, ItemWithdrawalMiniLogoBannerBinding> {
    public final rj9 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemWithdrawalMiniLogoBannerBinding> {
        public static final a c = new a(3, ItemWithdrawalMiniLogoBannerBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;", 0);

        @Override // defpackage.dm3
        public final ItemWithdrawalMiniLogoBannerBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemWithdrawalMiniLogoBannerBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public tj9(rj9 rj9Var) {
        super(a.c);
        this.b = rj9Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof uj9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, uj9 uj9Var) {
        TextView textView;
        ItemWithdrawalMiniLogoBannerBinding itemWithdrawalMiniLogoBannerBinding = (ItemWithdrawalMiniLogoBannerBinding) viewBinding;
        uj9 uj9Var2 = uj9Var;
        itemWithdrawalMiniLogoBannerBinding.getClass();
        uj9.a aVar = uj9Var2.e;
        itemWithdrawalMiniLogoBannerBinding.tvTitle.setText(uj9Var2.b);
        itemWithdrawalMiniLogoBannerBinding.tvDescription.setText(uj9Var2.c);
        TextView textView2 = itemWithdrawalMiniLogoBannerBinding.btnAction;
        textView2.getClass();
        uj9.a aVar2 = uj9Var2.d;
        textView2.setVisibility(aVar2 != null ? 0 : 8);
        TextView textView3 = itemWithdrawalMiniLogoBannerBinding.btnSecondary;
        textView3.getClass();
        textView3.setVisibility(aVar != null ? 0 : 8);
        if (aVar2 != null) {
            TextView textView4 = itemWithdrawalMiniLogoBannerBinding.btnAction;
            textView4.setText(aVar2.a);
            textView4.setOnClickListener(new lb7(new ax3(this, aVar2, 2)));
        }
        if (aVar != null) {
            textView = itemWithdrawalMiniLogoBannerBinding.btnSecondary;
            textView.setText(aVar.a);
            textView.setOnClickListener(new lb7(new bx3(this, aVar, 1)));
        } else {
            textView = null;
        }
        if (textView == null) {
            Space space = itemWithdrawalMiniLogoBannerBinding.spaceButtons;
            space.getClass();
            ViewGroup.LayoutParams layoutParams = space.getLayoutParams();
            if (layoutParams == null) {
                o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                return;
            } else {
                layoutParams.height = pl2.e(16);
                space.setLayoutParams(layoutParams);
            }
        }
        ((h37) com.bumptech.glide.a.e(itemWithdrawalMiniLogoBannerBinding.getRoot()).h(uj9Var2.a).r(is7.b(pl2.d(4.0f), ContextCompat.getColor(itemWithdrawalMiniLogoBannerBinding.getRoot().getContext(), R.color.almostThereMoon)))).b(new s37().D(new s81(), new e87(pl2.e(4)))).L(itemWithdrawalMiniLogoBannerBinding.ivLogo);
    }
}
