package defpackage;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemChequeBinding;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class rd1 extends vd9<lh1, ItemChequeBinding> {
    public final xh1 b;
    public final yh1 c;

    public rd1(xh1 xh1Var, yh1 yh1Var) {
        super(pd1.c);
        this.b = xh1Var;
        this.c = yh1Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof lh1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, lh1 lh1Var) {
        ItemChequeBinding itemChequeBinding = (ItemChequeBinding) viewBinding;
        final lh1 lh1Var2 = lh1Var;
        itemChequeBinding.getClass();
        TextView textView = itemChequeBinding.tvShopName;
        hd1 hd1Var = lh1Var2.a;
        textView.setText(hd1Var.h().a());
        pb2 pb2Var = pb2.a;
        String strF = hd1Var.f();
        pb2Var.getClass();
        Date dateF = pb2.f(strF);
        TextView textView2 = itemChequeBinding.tvDateTime;
        String str = ((SimpleDateFormat) pb2.h.getValue()).format(dateF);
        str.getClass();
        textView2.setText(str);
        itemChequeBinding.tvSum.setText(itemChequeBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(hd1Var.i() / 100.0f)));
        itemChequeBinding.ivWarning.setVisibility(hd1Var.g ? 0 : 8);
        if (hd1Var.e() != null) {
            jh1.a aVarE = hd1Var.e();
            if (aVarE != null) {
                TextView textView3 = itemChequeBinding.tvStock;
                textView3.setVisibility(0);
                jh1.a aVarE2 = hd1Var.e();
                textView3.setText(aVarE2 != null ? aVarE2.b() : null);
                textView3.setTextColor(Color.parseColor(aVarE.c()));
                Drawable drawable = ContextCompat.getDrawable(textView3.getContext(), R.drawable.rounded_red_rect_3dp);
                if (drawable != null) {
                    ds2.a(drawable, Color.parseColor(aVarE.a()));
                }
                textView3.setBackground(drawable);
            }
        } else {
            itemChequeBinding.tvStock.setVisibility(8);
        }
        ConstraintLayout root = itemChequeBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new qd1(this, lh1Var2, 0)));
        itemChequeBinding.getRoot().setOnLongClickListener(new View.OnLongClickListener() { // from class: od1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                yh1 yh1Var = this.b.c;
                hd1 hd1Var2 = lh1Var2.a;
                Integer numValueOf = Integer.valueOf(hd1Var2.a());
                String strA = hd1Var2.h().a();
                strA.getClass();
                yh1Var.invoke(numValueOf, strA, Integer.valueOf(hd1Var2.i()), hd1Var2.g());
                return true;
            }
        });
    }
}
