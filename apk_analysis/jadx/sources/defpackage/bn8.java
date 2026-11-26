package defpackage;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.TextViewCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskDisclaimerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class bn8 extends vd9<cn8, ItemRvTaskDisclaimerBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof cn8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, cn8 cn8Var) {
        ItemRvTaskDisclaimerBinding itemRvTaskDisclaimerBinding = (ItemRvTaskDisclaimerBinding) viewBinding;
        cn8 cn8Var2 = cn8Var;
        itemRvTaskDisclaimerBinding.getClass();
        TextView textView = itemRvTaskDisclaimerBinding.tvText;
        int i = sx3.a;
        textView.setText(sx3.a(cn8Var2.a));
        itemRvTaskDisclaimerBinding.tvText.setMovementMethod(x61.a);
        boolean z = cn8Var2.d;
        TextView textView2 = itemRvTaskDisclaimerBinding.tvText;
        if (z) {
            textView2.setTextAlignment(4);
        } else {
            textView2.setTextAlignment(2);
        }
        boolean z2 = cn8Var2.c;
        TextView textView3 = itemRvTaskDisclaimerBinding.tvText;
        if (z2) {
            TextViewCompat.setTextAppearance(textView3, R.style.TextSize12_Gray60_Height16);
        } else {
            TextViewCompat.setTextAppearance(textView3, R.style.TextSize16_Gray80);
        }
        String str = cn8Var2.b;
        ImageView imageView = itemRvTaskDisclaimerBinding.ivTooltip;
        if (str == null) {
            imageView.getClass();
            imageView.setVisibility(8);
            itemRvTaskDisclaimerBinding.ivTooltip.setOnClickListener(null);
        } else {
            imageView.getClass();
            imageView.setOnClickListener(new lb7(new an8(itemRvTaskDisclaimerBinding, cn8Var2)));
            ImageView imageView2 = itemRvTaskDisclaimerBinding.ivTooltip;
            imageView2.getClass();
            imageView2.setVisibility(0);
        }
    }
}
