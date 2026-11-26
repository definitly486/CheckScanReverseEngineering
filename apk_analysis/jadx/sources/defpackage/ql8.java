package defpackage;

import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskBadgeBinding;
import kotlin.TypeCastException;

/* JADX INFO: loaded from: classes5.dex */
public final class ql8 extends vd9<rl8, ItemRvTaskBadgeBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof rl8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, rl8 rl8Var) {
        ItemRvTaskBadgeBinding itemRvTaskBadgeBinding = (ItemRvTaskBadgeBinding) viewBinding;
        rl8 rl8Var2 = rl8Var;
        itemRvTaskBadgeBinding.getClass();
        ImageView root = itemRvTaskBadgeBinding.getRoot();
        root.getClass();
        ViewGroup.LayoutParams layoutParams = root.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.height = pl2.e(rl8Var2.b);
        root.setLayoutParams(layoutParams);
        itemRvTaskBadgeBinding.getRoot().setScaleType(rl8Var2.c);
        a.e(itemRvTaskBadgeBinding.getRoot()).h(rl8Var2.a).L(itemRvTaskBadgeBinding.ivBadgeIcon);
    }
}
