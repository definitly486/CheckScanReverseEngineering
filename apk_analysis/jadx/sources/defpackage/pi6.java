package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.products.databinding.ItemProductTextBlockBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class pi6 extends vd9<qi6, ItemProductTextBlockBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof qi6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, qi6 qi6Var) {
        ItemProductTextBlockBinding itemProductTextBlockBinding = (ItemProductTextBlockBinding) viewBinding;
        qi6 qi6Var2 = qi6Var;
        itemProductTextBlockBinding.getClass();
        TextView textView = itemProductTextBlockBinding.tvTitle;
        String str = qi6Var2.a;
        textView.setText(str);
        TextView textView2 = itemProductTextBlockBinding.tvTitle;
        textView2.getClass();
        textView2.setVisibility(str != null ? 0 : 8);
        TextView textView3 = itemProductTextBlockBinding.tvBody;
        int i = sx3.a;
        textView3.setText(sx3.a(qi6Var2.b));
        itemProductTextBlockBinding.tvBody.setMovementMethod(x61.a);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ((ItemProductTextBlockBinding) viewBinding).getClass();
    }
}
