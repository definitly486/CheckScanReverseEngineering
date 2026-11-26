package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvNotificationTitleBinding;
import com.warefly.checkscan.tasks.databinding.ItemRvPromocodeTaskCodeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ap5 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ap5(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof bp5;
            default:
                return obj instanceof sq6;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvNotificationTitleBinding itemRvNotificationTitleBinding = (ItemRvNotificationTitleBinding) viewBinding;
                itemRvNotificationTitleBinding.getClass();
                itemRvNotificationTitleBinding.tvTitle.setText(((bp5) obj).a);
                break;
            default:
                ItemRvPromocodeTaskCodeBinding itemRvPromocodeTaskCodeBinding = (ItemRvPromocodeTaskCodeBinding) viewBinding;
                itemRvPromocodeTaskCodeBinding.getClass();
                String str = ((sq6) obj).a;
                if (str != null) {
                    itemRvPromocodeTaskCodeBinding.tvPromocode.setText(str);
                }
                break;
        }
    }
}
