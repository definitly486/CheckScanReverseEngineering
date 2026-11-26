package defpackage;

import android.graphics.Color;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.products.databinding.ItemProductPreviewBinding;
import com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class fi6 extends vd9<ti6, ItemProductPreviewBinding> {
    public final SelectionsPresenter b;

    public fi6(SelectionsPresenter selectionsPresenter) {
        super(di6.c);
        this.b = selectionsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ti6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ti6 ti6Var) {
        ItemProductPreviewBinding itemProductPreviewBinding = (ItemProductPreviewBinding) viewBinding;
        ti6 ti6Var2 = ti6Var;
        itemProductPreviewBinding.getClass();
        TextView textView = itemProductPreviewBinding.tvBadge;
        int i = sx3.a;
        textView.setText(sx3.a(ti6Var2.c));
        itemProductPreviewBinding.tvTitle.setText(ti6Var2.d);
        a.e(itemProductPreviewBinding.getRoot()).h(ti6Var2.b).L(itemProductPreviewBinding.ivProduct);
        MaterialCardView materialCardView = itemProductPreviewBinding.mcBadge;
        String str = ti6Var2.e;
        materialCardView.setCardBackgroundColor(str != null ? Color.parseColor(str) : ContextCompat.getColor(itemProductPreviewBinding.getRoot().getContext(), R.color.primary_60));
        ConstraintLayout root = itemProductPreviewBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new ei6(0, this, ti6Var2)));
    }
}
