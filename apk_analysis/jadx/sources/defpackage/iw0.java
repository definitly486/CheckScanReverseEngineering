package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvLoaderButtonsBinding;
import com.warefly.checkscan.databinding.ItemDecoratorBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class iw0 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ iw0(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof jw0;
            default:
                return obj instanceof qa4;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ((ItemRvLoaderButtonsBinding) viewBinding).getClass();
                break;
            default:
                ItemDecoratorBinding itemDecoratorBinding = (ItemDecoratorBinding) viewBinding;
                itemDecoratorBinding.getClass();
                itemDecoratorBinding.getRoot().setTag((qa4) obj);
                break;
        }
    }
}
