package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemQuestionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class wv6 extends vd9<rv6, ItemQuestionBinding> {
    public static void m(rv6 rv6Var, ItemQuestionBinding itemQuestionBinding) {
        boolean z = rv6Var.b;
        ImageView imageView = itemQuestionBinding.btnExpand;
        if (z) {
            a.e(imageView).f(Integer.valueOf(R.drawable.ic_arrow_up)).L(itemQuestionBinding.btnExpand);
            TextView textView = itemQuestionBinding.tvDescription;
            textView.getClass();
            textView.setVisibility(0);
        } else {
            a.e(imageView).f(Integer.valueOf(R.drawable.ic_arrow_down)).L(itemQuestionBinding.btnExpand);
            TextView textView2 = itemQuestionBinding.tvDescription;
            textView2.getClass();
            textView2.setVisibility(8);
        }
        rv6Var.b = !rv6Var.b;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof rv6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, rv6 rv6Var) {
        final ItemQuestionBinding itemQuestionBinding = (ItemQuestionBinding) viewBinding;
        final rv6 rv6Var2 = rv6Var;
        itemQuestionBinding.getClass();
        pv6 pv6Var = rv6Var2.a;
        TextView textView = itemQuestionBinding.tvDescription;
        textView.getClass();
        textView.setVisibility(!rv6Var2.b ? 0 : 8);
        TextView textView2 = itemQuestionBinding.tvDescription;
        int i = sx3.a;
        textView2.setText(sx3.a(pv6Var.b));
        itemQuestionBinding.tvDescription.setMovementMethod(x61.a);
        itemQuestionBinding.tvTitle.setText(pv6Var.a);
        itemQuestionBinding.btnExpand.setOnClickListener(new tv6(this, rv6Var2, itemQuestionBinding));
        itemQuestionBinding.getRoot().setOnClickListener(new View.OnClickListener(this) { // from class: uv6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                wv6.m(rv6Var2, itemQuestionBinding);
            }
        });
    }
}
