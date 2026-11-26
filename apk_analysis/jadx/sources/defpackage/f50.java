package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceLoadingManagmentCardBinding;
import com.warefly.checkscan.tasks.databinding.ItemRvPromocodeTaskHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class f50 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f50(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof g50;
            default:
                return obj instanceof zq6;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ((ItemRvBalanceLoadingManagmentCardBinding) viewBinding).getClass();
                break;
            default:
                ItemRvPromocodeTaskHeaderBinding itemRvPromocodeTaskHeaderBinding = (ItemRvPromocodeTaskHeaderBinding) viewBinding;
                zq6 zq6Var = (zq6) obj;
                itemRvPromocodeTaskHeaderBinding.getClass();
                a.d(itemRvPromocodeTaskHeaderBinding.getRoot().getContext()).h(zq6Var.b).L(itemRvPromocodeTaskHeaderBinding.ivLogo);
                itemRvPromocodeTaskHeaderBinding.tvTitle.setText(zq6Var.a);
                break;
        }
    }
}
