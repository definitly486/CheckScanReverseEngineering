package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.tasks.databinding.ItemRvDailyTaskBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class v72 extends vd9<m82, ItemRvDailyTaskBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof m82;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, m82 m82Var) {
        ItemRvDailyTaskBinding itemRvDailyTaskBinding = (ItemRvDailyTaskBinding) viewBinding;
        m82 m82Var2 = m82Var;
        itemRvDailyTaskBinding.getClass();
        a.e(itemRvDailyTaskBinding.getRoot()).f(Integer.valueOf(m82Var2.f)).L(itemRvDailyTaskBinding.ivValueBackground);
        MaterialCardView materialCardView = itemRvDailyTaskBinding.mcvTask;
        materialCardView.setStrokeColor(m82Var2.g);
        materialCardView.setCardBackgroundColor(m82Var2.e);
        TextView textView = itemRvDailyTaskBinding.tvTitle;
        textView.setText(m82Var2.a);
        textView.setTextColor(m82Var2.c);
        TextView textView2 = itemRvDailyTaskBinding.tvValue;
        textView2.setText(m82Var2.b);
        textView2.setTextColor(m82Var2.d);
    }
}
