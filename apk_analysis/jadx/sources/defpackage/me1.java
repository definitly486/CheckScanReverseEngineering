package defpackage;

import android.graphics.Color;
import android.text.SpannableString;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemChequeOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class me1 extends vd9<ez5, ItemChequeOperationBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ez5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ez5 ez5Var) {
        Object aVar;
        Object aVar2;
        ItemChequeOperationBinding itemChequeOperationBinding = (ItemChequeOperationBinding) viewBinding;
        ez5 ez5Var2 = ez5Var;
        itemChequeOperationBinding.getClass();
        itemChequeOperationBinding.tvTitle.setText(ez5Var2.c);
        itemChequeOperationBinding.tvSubtitle.setText(ez5Var2.d);
        String str = ez5Var2.i;
        TextView textView = itemChequeOperationBinding.tvSticker;
        if (str == null) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            TextView textView2 = itemChequeOperationBinding.tvSticker;
            SpannableString spannableString = new SpannableString(str);
            try {
                aVar = Integer.valueOf(Color.parseColor(ez5Var2.j));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            Integer num = (Integer) aVar;
            spannableString.setSpan(new y88(num != null ? num.intValue() : Color.parseColor("#ffbc00")), 0, str.length(), 18);
            textView2.setText(spannableString);
        }
        itemChequeOperationBinding.tvValue.setText(ez5Var2.e);
        itemChequeOperationBinding.tvStatus.setText(ez5Var2.d());
        TextView textView3 = itemChequeOperationBinding.tvStatus;
        try {
            aVar2 = Integer.valueOf(Color.parseColor(ez5Var2.h));
        } catch (Throwable th2) {
            aVar2 = new k57.a(th2);
        }
        Integer num2 = (Integer) (aVar2 instanceof k57.a ? null : aVar2);
        textView3.setTextColor(num2 != null ? num2.intValue() : -16777216);
        a.e(itemChequeOperationBinding.ivIcon).h(ez5Var2.b).P(qs2.h()).L(itemChequeOperationBinding.ivIcon);
    }
}
