package defpackage;

import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.support.databinding.ItemSupportChildImageBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ud8 extends vd9<vd8, ItemSupportChildImageBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof vd8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, vd8 vd8Var) {
        ItemSupportChildImageBinding itemSupportChildImageBinding = (ItemSupportChildImageBinding) viewBinding;
        itemSupportChildImageBinding.getClass();
        a.e(itemSupportChildImageBinding.ivImage).h(vd8Var.b).L(itemSupportChildImageBinding.ivImage);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemSupportChildImageBinding itemSupportChildImageBinding = (ItemSupportChildImageBinding) viewBinding;
        itemSupportChildImageBinding.getClass();
        ImageView imageView = itemSupportChildImageBinding.ivImage;
        imageView.getClass();
        le9.c(16, imageView);
    }
}
