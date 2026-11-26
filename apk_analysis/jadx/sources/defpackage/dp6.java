package defpackage;

import androidx.viewbinding.ViewBinding;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.warefly.checkscan.databinding.ItemRvPromoSelectCardTagBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dp6 extends vd9<ep6, ItemRvPromoSelectCardTagBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ep6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ep6 ep6Var) {
        ItemRvPromoSelectCardTagBinding itemRvPromoSelectCardTagBinding = (ItemRvPromoSelectCardTagBinding) viewBinding;
        itemRvPromoSelectCardTagBinding.getClass();
        itemRvPromoSelectCardTagBinding.tvTitle.setText(ep6Var.a);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvPromoSelectCardTagBinding itemRvPromoSelectCardTagBinding = (ItemRvPromoSelectCardTagBinding) viewBinding;
        itemRvPromoSelectCardTagBinding.getClass();
        itemRvPromoSelectCardTagBinding.mcvContainer.setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCornerSizes(new RelativeCornerSize(0.5f)).build());
    }
}
