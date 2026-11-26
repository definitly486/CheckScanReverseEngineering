package defpackage;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.tasks.databinding.ItemRvPromocodeTaskStepsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class cr6 extends vd9<dr6, ItemRvPromocodeTaskStepsBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof dr6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, dr6 dr6Var) {
        ItemRvPromocodeTaskStepsBinding itemRvPromocodeTaskStepsBinding = (ItemRvPromocodeTaskStepsBinding) viewBinding;
        dr6 dr6Var2 = dr6Var;
        itemRvPromocodeTaskStepsBinding.getClass();
        itemRvPromocodeTaskStepsBinding.tvTitle.setText(dr6Var2.a);
        RecyclerView.Adapter adapter = itemRvPromocodeTaskStepsBinding.rvSteps.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(dr6Var2.b);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvPromocodeTaskStepsBinding itemRvPromocodeTaskStepsBinding = (ItemRvPromocodeTaskStepsBinding) viewBinding;
        itemRvPromocodeTaskStepsBinding.getClass();
        RecyclerView recyclerView = itemRvPromocodeTaskStepsBinding.rvSteps;
        recyclerView.setAdapter(new eu1(new i50(ar6.c, 2)));
        Context context = recyclerView.getContext();
        context.getClass();
        recyclerView.addItemDecoration(new fq4(context));
    }
}
