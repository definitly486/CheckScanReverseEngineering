package defpackage;

import android.content.Context;
import android.graphics.Color;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvBankCardBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class q90 extends vd9<k90, ItemRvBankCardBinding> {
    public final ym5 b;

    public q90(ym5 ym5Var) {
        super(o90.c);
        this.b = ym5Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof k90;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, k90 k90Var) {
        Object aVar;
        ItemRvBankCardBinding itemRvBankCardBinding = (ItemRvBankCardBinding) viewBinding;
        k90 k90Var2 = k90Var;
        itemRvBankCardBinding.getClass();
        a.e(itemRvBankCardBinding.ivBank).h(k90Var2.e).q(R.drawable.ic_anon_withdraw).L(itemRvBankCardBinding.ivBank);
        TextView textView = itemRvBankCardBinding.tvBank;
        textView.setText(k90Var2.b);
        try {
            aVar = Integer.valueOf(Color.parseColor(k90Var2.f));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Context context = textView.getContext();
        context.getClass();
        Object objValueOf = Integer.valueOf(ContextCompat.getColor(context, R.color.black));
        if (aVar instanceof k57.a) {
            aVar = objValueOf;
        }
        textView.setTextColor(((Number) aVar).intValue());
        itemRvBankCardBinding.tvMainCondition.setText(k90Var2.c);
        itemRvBankCardBinding.tvSubCondition.setText(k90Var2.d);
        ConstraintLayout root = itemRvBankCardBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new p90(this, k90Var2)));
    }
}
