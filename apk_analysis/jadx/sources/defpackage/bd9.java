package defpackage;

import android.view.ViewGroup;
import android.widget.Space;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.databinding.ItemRvVerticalSpaceBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class bd9 extends vd9<dd9, ItemRvVerticalSpaceBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof dd9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, dd9 dd9Var) {
        ItemRvVerticalSpaceBinding itemRvVerticalSpaceBinding = (ItemRvVerticalSpaceBinding) viewBinding;
        itemRvVerticalSpaceBinding.getClass();
        Space space = itemRvVerticalSpaceBinding.spacer;
        space.getClass();
        ViewGroup.LayoutParams layoutParams = space.getLayoutParams();
        if (layoutParams == null) {
            o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        } else {
            layoutParams.height = pl2.e(8);
            space.setLayoutParams(layoutParams);
        }
    }
}
