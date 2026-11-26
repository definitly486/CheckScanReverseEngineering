package defpackage;

import android.graphics.Color;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemPlainOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dz5 extends vd9<ez5, ItemPlainOperationBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemPlainOperationBinding> {
        public static final a c = new a(3, ItemPlainOperationBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemPlainOperationBinding;", 0);

        @Override // defpackage.dm3
        public final ItemPlainOperationBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemPlainOperationBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public dz5() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ez5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ez5 ez5Var) {
        String strA;
        ItemPlainOperationBinding itemPlainOperationBinding = (ItemPlainOperationBinding) viewBinding;
        ez5 ez5Var2 = ez5Var;
        itemPlainOperationBinding.getClass();
        itemPlainOperationBinding.tvTitle.setText(ez5Var2.c);
        itemPlainOperationBinding.tvSubtitle.setText(ez5Var2.d);
        String str = ez5Var2.i;
        if (str == null) {
            itemPlainOperationBinding.tvSticker.setVisibility(8);
        } else {
            SpannableString spannableString = new SpannableString(str);
            TextView textView = itemPlainOperationBinding.tvSticker;
            textView.setVisibility(0);
            vp3.d(0, str.length(), 18, str);
            String str2 = ez5Var2.j;
            if (str2 == null) {
                str2 = "#ffbc00";
            }
            spannableString.setSpan(new y88(Color.parseColor(str2)), 0, str.length(), 18);
            textView.setText(spannableString);
        }
        itemPlainOperationBinding.tvValue.setText(ez5Var2.e);
        TextView textView2 = itemPlainOperationBinding.tvStatus;
        textView2.setText(ez5Var2.d());
        String str3 = ez5Var2.h;
        if (str3 == null || (strA = zn1.a(str3)) == null) {
            strA = "#000000";
        }
        textView2.setTextColor(Color.parseColor(strA));
        com.bumptech.glide.a.e(itemPlainOperationBinding.ivIcon).h(ez5Var2.b).P(qs2.h()).L(itemPlainOperationBinding.ivIcon);
    }
}
