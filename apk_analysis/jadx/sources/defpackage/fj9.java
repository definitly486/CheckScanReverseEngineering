package defpackage;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemWithdrawalCardInfoBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class fj9 extends vd9<gj9, ItemWithdrawalCardInfoBinding> {
    public final w76 b;

    public fj9(w76 w76Var) {
        super(ej9.c);
        this.b = w76Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof gj9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, gj9 gj9Var) {
        ItemWithdrawalCardInfoBinding itemWithdrawalCardInfoBinding = (ItemWithdrawalCardInfoBinding) viewBinding;
        gj9 gj9Var2 = gj9Var;
        itemWithdrawalCardInfoBinding.getClass();
        itemWithdrawalCardInfoBinding.getRoot().setTag(gj9Var2.e);
        itemWithdrawalCardInfoBinding.tvTitle.setText(gj9Var2.c);
        itemWithdrawalCardInfoBinding.tvDescription.setText(gj9Var2.d);
        ((h37) a.d(itemWithdrawalCardInfoBinding.getRoot().getContext()).h(gj9Var2.b).r(is7.b(pl2.d(4.0f), ContextCompat.getColor(itemWithdrawalCardInfoBinding.getRoot().getContext(), R.color.almostThereMoon)))).b(new s37().D(new s81(), new e87(pl2.e(4)))).L(itemWithdrawalCardInfoBinding.ivLogo);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemWithdrawalCardInfoBinding itemWithdrawalCardInfoBinding = (ItemWithdrawalCardInfoBinding) viewBinding;
        itemWithdrawalCardInfoBinding.getClass();
        ConstraintLayout root = itemWithdrawalCardInfoBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new p30(this, itemWithdrawalCardInfoBinding, 4)));
    }

    @Override // defpackage.vd9
    public final void l(ViewBinding viewBinding) {
        ItemWithdrawalCardInfoBinding itemWithdrawalCardInfoBinding = (ItemWithdrawalCardInfoBinding) viewBinding;
        itemWithdrawalCardInfoBinding.getClass();
        View view = itemWithdrawalCardInfoBinding.divider;
        view.getClass();
        view.setVisibility(8);
    }
}
