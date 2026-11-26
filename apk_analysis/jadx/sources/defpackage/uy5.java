package defpackage;

import android.graphics.Color;
import android.text.SpannableString;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemPlainOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class uy5 extends gh4 implements dm3<ItemPlainOperationBinding, ez5, Integer, j59> {
    public static final uy5 f = new uy5(3);

    @Override // defpackage.dm3
    public final j59 invoke(ItemPlainOperationBinding itemPlainOperationBinding, ez5 ez5Var, Integer num) {
        ItemPlainOperationBinding itemPlainOperationBinding2 = itemPlainOperationBinding;
        ez5 ez5Var2 = ez5Var;
        num.intValue();
        itemPlainOperationBinding2.getClass();
        ez5Var2.getClass();
        itemPlainOperationBinding2.tvTitle.setText(ez5Var2.c);
        itemPlainOperationBinding2.tvSubtitle.setText(ez5Var2.d);
        ViewGroup.LayoutParams layoutParams = itemPlainOperationBinding2.cvItemPlainOperation.getLayoutParams();
        layoutParams.getClass();
        ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(0, 0, 0, 0);
        TextView textView = itemPlainOperationBinding2.tvSticker;
        String str = ez5Var2.i;
        if (str == null) {
            textView.setVisibility(8);
        } else {
            SpannableString spannableString = new SpannableString(str);
            TextView textView2 = itemPlainOperationBinding2.tvSticker;
            textView2.setVisibility(0);
            vp3.d(0, str.length(), 18, str);
            String str2 = ez5Var2.j;
            if (str2 == null) {
                str2 = "#ffbc00";
            }
            spannableString.setSpan(new y88(Color.parseColor(str2)), 0, str.length(), 18);
            textView2.setText(spannableString);
        }
        itemPlainOperationBinding2.tvValue.setText(ez5Var2.e);
        TextView textView3 = itemPlainOperationBinding2.tvStatus;
        textView3.setText(ez5Var2.d());
        String strA = zn1.a(ez5Var2.h);
        if (strA == null) {
            strA = "#000000";
        }
        textView3.setTextColor(Color.parseColor(strA));
        a.e(itemPlainOperationBinding2.ivIcon).h(ez5Var2.b).P(qs2.h()).L(itemPlainOperationBinding2.ivIcon);
        return j59.a;
    }
}
