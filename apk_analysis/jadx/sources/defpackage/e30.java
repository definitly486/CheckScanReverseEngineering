package defpackage;

import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvBalanceGroupOperationBinding;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class e30 extends vd9<f30, ItemRvBalanceGroupOperationBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof f30;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, f30 f30Var) {
        ItemRvBalanceGroupOperationBinding itemRvBalanceGroupOperationBinding = (ItemRvBalanceGroupOperationBinding) viewBinding;
        f30 f30Var2 = f30Var;
        itemRvBalanceGroupOperationBinding.getClass();
        itemRvBalanceGroupOperationBinding.tvTitle.setText(f30Var2.c);
        itemRvBalanceGroupOperationBinding.tvValue.setText(f30Var2.d);
        AppCompatTextView appCompatTextView = itemRvBalanceGroupOperationBinding.tvStatus;
        appCompatTextView.setText(f30Var2.f);
        appCompatTextView.setTextColor(f30Var2.g);
        boolean z = f30Var2.h;
        AppCompatTextView appCompatTextView2 = itemRvBalanceGroupOperationBinding.tvExpand;
        if (z) {
            appCompatTextView2.setText(itemRvBalanceGroupOperationBinding.getRoot().getContext().getString(R.string.operations_unexpand_title));
            itemRvBalanceGroupOperationBinding.ivExpand.setRotation(180.0f);
            itemRvBalanceGroupOperationBinding.rvSuboperations.setVisibility(0);
        } else {
            appCompatTextView2.setText(itemRvBalanceGroupOperationBinding.getRoot().getContext().getString(R.string.operations_expand_title));
            itemRvBalanceGroupOperationBinding.ivExpand.setRotation(0.0f);
            itemRvBalanceGroupOperationBinding.rvSuboperations.setVisibility(8);
        }
        boolean z2 = f30Var2.h;
        ImageView imageView = itemRvBalanceGroupOperationBinding.ivExpand;
        imageView.getClass();
        itemRvBalanceGroupOperationBinding.getRoot().setOnClickListener(new y20(new a87(z2, imageView, new c30(f30Var2, itemRvBalanceGroupOperationBinding), new d30(f30Var2, itemRvBalanceGroupOperationBinding)), 0));
        RecyclerView recyclerView = itemRvBalanceGroupOperationBinding.rvSuboperations;
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvBalanceGroupOperationBinding.getRoot().getContext(), 1, false));
        List list = f30Var2.e;
        if (list == null) {
            list = kx2.b;
        }
        recyclerView.setAdapter(new jz7(R.layout.item_rv_balance_plain_operation, list, null, a30.f, b30.f, 4));
        a.e(itemRvBalanceGroupOperationBinding.ivIcon).h(f30Var2.b).P(qs2.h()).L(itemRvBalanceGroupOperationBinding.ivIcon);
    }
}
