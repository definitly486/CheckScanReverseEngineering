package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.bonuses.databinding.ItemRvGroupShopsVerticalBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvShopsPreviewRectangleBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class es3 extends vd9<fs3, ItemRvGroupShopsVerticalBinding> {
    public final BonusesMainNewPresenter b;

    public interface a {
        void onGroupShopRectangleAllClick(int i, String str);

        void onGroupShopRectangleFavoriteClick(int i, int i2);

        void onGroupShopRectangleItemClick(int i);
    }

    public es3(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(ds3.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof fs3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, fs3 fs3Var) {
        ItemRvGroupShopsVerticalBinding itemRvGroupShopsVerticalBinding = (ItemRvGroupShopsVerticalBinding) viewBinding;
        fs3 fs3Var2 = fs3Var;
        itemRvGroupShopsVerticalBinding.getClass();
        h37<Drawable> h37VarH = com.bumptech.glide.a.e(itemRvGroupShopsVerticalBinding.ivLogo).h(fs3Var2.d);
        h37VarH.getClass();
        ((h37) h37VarH.A(uq2.c, new s81())).L(itemRvGroupShopsVerticalBinding.ivLogo);
        itemRvGroupShopsVerticalBinding.tvTitle.setText(fs3Var2.b);
        itemRvGroupShopsVerticalBinding.btnCheckMore.setText(fs3Var2.c);
        itemRvGroupShopsVerticalBinding.btnCheckMore.setOnClickListener(new as3(0, this, fs3Var2));
        ArrayList arrayList = new ArrayList(fs3Var2.e);
        if (arrayList.size() < 3) {
            ArrayList arrayList2 = new ArrayList(3);
            for (int i = 0; i < 3; i++) {
                arrayList2.add(null);
            }
            arrayList.addAll(arrayList2);
        }
        for (b36 b36Var : qn1.z0(qn1.o0(arrayList, 3), u96.i(itemRvGroupShopsVerticalBinding.first, itemRvGroupShopsVerticalBinding.second, itemRvGroupShopsVerticalBinding.third))) {
            final sv7.c cVar = (sv7.c) b36Var.b;
            ItemRvShopsPreviewRectangleBinding itemRvShopsPreviewRectangleBinding = (ItemRvShopsPreviewRectangleBinding) b36Var.c;
            final int i2 = fs3Var2.a;
            itemRvShopsPreviewRectangleBinding.getClass();
            ConstraintLayout root = itemRvShopsPreviewRectangleBinding.getRoot();
            root.getClass();
            le9.c(8, root);
            if (cVar != null) {
                itemRvShopsPreviewRectangleBinding.btnFave.setSelected(cVar.b);
                com.bumptech.glide.a.e(itemRvShopsPreviewRectangleBinding.ivLogo).h(cVar.d).L(itemRvShopsPreviewRectangleBinding.ivLogo);
                boolean z = cVar.h;
                TextView textView = itemRvShopsPreviewRectangleBinding.tvValue;
                if (z) {
                    textView.setTextSize(2, 16.0f);
                } else {
                    textView.setTextSize(2, 22.0f);
                }
                itemRvShopsPreviewRectangleBinding.tvTitle.setText(cVar.e);
                itemRvShopsPreviewRectangleBinding.tvValue.setText(cVar.f);
                ImageView imageView = itemRvShopsPreviewRectangleBinding.ivPowerCode;
                imageView.getClass();
                imageView.setVisibility(cVar.i ? 0 : 8);
                View view = itemRvShopsPreviewRectangleBinding.viewDivider;
                view.getClass();
                view.setVisibility(cVar.j ? 0 : 8);
                itemRvShopsPreviewRectangleBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: bs3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.b.b.onGroupShopRectangleItemClick(cVar.c);
                    }
                });
                itemRvShopsPreviewRectangleBinding.btnFave.setOnClickListener(new View.OnClickListener() { // from class: cs3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.b.b.onGroupShopRectangleFavoriteClick(i2, cVar.c);
                    }
                });
            } else {
                itemRvShopsPreviewRectangleBinding.getRoot().setVisibility(4);
            }
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvGroupShopsVerticalBinding itemRvGroupShopsVerticalBinding = (ItemRvGroupShopsVerticalBinding) viewBinding;
        itemRvGroupShopsVerticalBinding.getClass();
        MaterialCardView root = itemRvGroupShopsVerticalBinding.getRoot();
        root.getClass();
        le9.c(16, root);
    }
}
