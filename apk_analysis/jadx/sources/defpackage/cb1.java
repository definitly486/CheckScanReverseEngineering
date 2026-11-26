package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemInformerBinding;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskDescriptionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class cb1 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ cb1(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof db1;
            default:
                return obj instanceof rd7;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvCheckboxTaskDescriptionBinding itemRvCheckboxTaskDescriptionBinding = (ItemRvCheckboxTaskDescriptionBinding) viewBinding;
                itemRvCheckboxTaskDescriptionBinding.getClass();
                itemRvCheckboxTaskDescriptionBinding.tvDescription.setText(((db1) obj).a);
                itemRvCheckboxTaskDescriptionBinding.tvDescription.setMovementMethod(x61.a);
                break;
            default:
                ItemInformerBinding itemInformerBinding = (ItemInformerBinding) viewBinding;
                itemInformerBinding.getClass();
                itemInformerBinding.ivNoCheque.setVisibility(0);
                break;
        }
    }
}
