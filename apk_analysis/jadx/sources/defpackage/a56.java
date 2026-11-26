package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class a56 extends vd9<b56, ItemPersonalDataFormBannerBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof b56;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, b56 b56Var) {
        ItemPersonalDataFormBannerBinding itemPersonalDataFormBannerBinding = (ItemPersonalDataFormBannerBinding) viewBinding;
        b56 b56Var2 = b56Var;
        itemPersonalDataFormBannerBinding.getClass();
        a.d(itemPersonalDataFormBannerBinding.getRoot().getContext()).h(b56Var2.e).L(itemPersonalDataFormBannerBinding.ivIcon);
        itemPersonalDataFormBannerBinding.getRoot().setCardBackgroundColor(b56Var2.c);
        TextView textView = itemPersonalDataFormBannerBinding.tvBannerText;
        textView.setText(b56Var2.a);
        textView.setTextColor(b56Var2.d);
        MaterialCardView materialCardView = itemPersonalDataFormBannerBinding.mcvBadge;
        b56.a aVar = b56Var2.b;
        materialCardView.setCardBackgroundColor(aVar.c);
        TextView textView2 = itemPersonalDataFormBannerBinding.tvBadgeText;
        textView2.setText(aVar.a);
        textView2.setTextColor(aVar.b);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemPersonalDataFormBannerBinding itemPersonalDataFormBannerBinding = (ItemPersonalDataFormBannerBinding) viewBinding;
        itemPersonalDataFormBannerBinding.getClass();
        itemPersonalDataFormBannerBinding.mcvBadge.setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCornerSizes(new RelativeCornerSize(0.5f)).build());
    }
}
