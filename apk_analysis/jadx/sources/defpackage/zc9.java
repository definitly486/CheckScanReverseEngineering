package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.VerticalCategoryItemBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class zc9 extends vd9<qq0, VerticalCategoryItemBinding> {
    public g71 b;

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof qq0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, qq0 qq0Var) {
        VerticalCategoryItemBinding verticalCategoryItemBinding = (VerticalCategoryItemBinding) viewBinding;
        final qq0 qq0Var2 = qq0Var;
        verticalCategoryItemBinding.getClass();
        TextView textView = verticalCategoryItemBinding.tvTitle;
        q71 q71Var = qq0Var2.a;
        textView.setText(q71Var.b);
        String str = q71Var.d;
        boolean zM = ta8.M(str);
        TextView textView2 = verticalCategoryItemBinding.tvSubtitle;
        if (zM) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(str);
            textView2.setVisibility(0);
        }
        a.e(verticalCategoryItemBinding.ivCategory).h(q71Var.c).P(qs2.h()).i().L(verticalCategoryItemBinding.ivCategory);
        verticalCategoryItemBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: xc9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g71 g71Var = this.b.b;
                q71 q71Var2 = qq0Var2.a;
                g71Var.invoke(Integer.valueOf(q71Var2.a), q71Var2.b);
            }
        });
    }
}
