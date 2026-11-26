package defpackage;

import android.graphics.Color;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemSelectPromocodeBinding;
import com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class gm7 extends vd9<fr6, ItemSelectPromocodeBinding> {
    public final SelectPromocodePresenter b;

    public interface a {
        void onSelectPromocodeClicked(int i);
    }

    public gm7(SelectPromocodePresenter selectPromocodePresenter) {
        super(fm7.c);
        this.b = selectPromocodePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof fr6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, fr6 fr6Var) {
        ItemSelectPromocodeBinding itemSelectPromocodeBinding = (ItemSelectPromocodeBinding) viewBinding;
        fr6 fr6Var2 = fr6Var;
        itemSelectPromocodeBinding.getClass();
        int i = fr6Var2.a;
        new kd.k0.c(ud.c(i, "Show_promocode")).c();
        itemSelectPromocodeBinding.getRoot().setTag(Integer.valueOf(i));
        itemSelectPromocodeBinding.tvShopName.setText(fr6Var2.c);
        itemSelectPromocodeBinding.tvCategory.setText(fr6Var2.d);
        itemSelectPromocodeBinding.tvSubcategory.setText(fr6Var2.f);
        itemSelectPromocodeBinding.tvDiscount.setText(fr6Var2.e);
        fr6.a aVar = fr6Var2.g;
        if (aVar != null) {
            String str = aVar.a;
            TextView textView = itemSelectPromocodeBinding.tvExpiration;
            textView.getClass();
            textView.setVisibility(0);
            textView.setText(str);
            textView.setTextColor(Color.parseColor(aVar.b));
            textView.getBackground().setTint(Color.parseColor(aVar.c));
            itemSelectPromocodeBinding.tvExpiration.setText(str);
        }
        ((h37) com.bumptech.glide.a.e(itemSelectPromocodeBinding.getRoot()).h(fr6Var2.b).r(is7.a(ContextCompat.getColor(itemSelectPromocodeBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemSelectPromocodeBinding.ivShop);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemSelectPromocodeBinding itemSelectPromocodeBinding = (ItemSelectPromocodeBinding) viewBinding;
        itemSelectPromocodeBinding.getClass();
        ConstraintLayout root = itemSelectPromocodeBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new pb(this, itemSelectPromocodeBinding, 3)));
    }
}
