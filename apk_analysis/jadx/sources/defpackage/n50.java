package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Space;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvBalanceMiniLogoBannersBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class n50 extends vd9<uj9, ItemRvBalanceMiniLogoBannersBinding> {
    public final rj9 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvBalanceMiniLogoBannersBinding> {
        public static final a c = new a(3, ItemRvBalanceMiniLogoBannersBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvBalanceMiniLogoBannersBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvBalanceMiniLogoBannersBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvBalanceMiniLogoBannersBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public n50(rj9 rj9Var) {
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
        ItemRvBalanceMiniLogoBannersBinding itemRvBalanceMiniLogoBannersBinding = (ItemRvBalanceMiniLogoBannersBinding) viewBinding;
        uj9 uj9Var2 = uj9Var;
        itemRvBalanceMiniLogoBannersBinding.getClass();
        uj9.a aVar = uj9Var2.e;
        itemRvBalanceMiniLogoBannersBinding.tvTitle.setText(uj9Var2.b);
        itemRvBalanceMiniLogoBannersBinding.tvDescription.setText(uj9Var2.c);
        TextView textView2 = itemRvBalanceMiniLogoBannersBinding.btnAction;
        textView2.getClass();
        uj9.a aVar2 = uj9Var2.d;
        textView2.setVisibility(aVar2 != null ? 0 : 8);
        TextView textView3 = itemRvBalanceMiniLogoBannersBinding.btnSecondary;
        textView3.getClass();
        textView3.setVisibility(aVar != null ? 0 : 8);
        if (aVar2 != null) {
            TextView textView4 = itemRvBalanceMiniLogoBannersBinding.btnAction;
            textView4.setText(aVar2.a);
            textView4.setOnClickListener(new lb7(new o50(this, aVar2, uj9Var2)));
        }
        if (aVar != null) {
            textView = itemRvBalanceMiniLogoBannersBinding.btnSecondary;
            textView.setText(aVar.a);
            textView.setOnClickListener(new lb7(new p50(this, aVar, uj9Var2)));
        } else {
            textView = null;
        }
        if (textView == null) {
            Space space = itemRvBalanceMiniLogoBannersBinding.spaceButtons;
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
        ((h37) com.bumptech.glide.a.e(itemRvBalanceMiniLogoBannersBinding.getRoot()).h(uj9Var2.a).r(is7.b(pl2.d(4.0f), ContextCompat.getColor(itemRvBalanceMiniLogoBannersBinding.getRoot().getContext(), R.color.almostThereMoon)))).b(new s37().D(new s81(), new e87(pl2.e(4)))).L(itemRvBalanceMiniLogoBannersBinding.ivLogo);
    }
}
