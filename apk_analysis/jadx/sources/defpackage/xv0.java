package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.MorePromocodesItemBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class xv0 extends vd9<sd5, MorePromocodesItemBinding> {
    public final v53 b;

    public xv0(v53 v53Var) {
        super(wv0.c);
        this.b = v53Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof sd5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, sd5 sd5Var) {
        MorePromocodesItemBinding morePromocodesItemBinding = (MorePromocodesItemBinding) viewBinding;
        morePromocodesItemBinding.getClass();
        TextView textView = morePromocodesItemBinding.btnMorePromocodes;
        textView.getClass();
        int i = sd5Var.a.a;
        textView.setVisibility(i > 0 ? 0 : 8);
        textView.setText(textView.getContext().getString(R.string.fragment_favorite_promocodes_btn_more, Integer.valueOf(i)));
        textView.setOnClickListener(new View.OnClickListener() { // from class: vv0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.b.invoke();
            }
        });
    }
}
