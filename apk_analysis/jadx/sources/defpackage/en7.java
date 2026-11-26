package defpackage;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.products.databinding.ItemSelectionBinding;
import com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class en7 extends vd9<zn7, ItemSelectionBinding> {
    public final SelectionsPresenter b;
    public final LinkedHashMap c;

    public en7(SelectionsPresenter selectionsPresenter) {
        super(bn7.c);
        this.b = selectionsPresenter;
        this.c = new LinkedHashMap();
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof zn7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, zn7 zn7Var) {
        final ItemSelectionBinding itemSelectionBinding = (ItemSelectionBinding) viewBinding;
        final zn7 zn7Var2 = zn7Var;
        itemSelectionBinding.getClass();
        itemSelectionBinding.tvTitle.setText(zn7Var2.b);
        String str = zn7Var2.e;
        if (str == null) {
            ImageView imageView = itemSelectionBinding.ivShopLogo;
            imageView.getClass();
            imageView.setVisibility(8);
        } else {
            a.e(itemSelectionBinding.getRoot()).h(str).L(itemSelectionBinding.ivShopLogo);
            ImageView imageView2 = itemSelectionBinding.ivShopLogo;
            imageView2.getClass();
            imageView2.setVisibility(0);
        }
        int i = zn7Var2.a;
        boolean z = zn7Var2.c;
        Integer numValueOf = Integer.valueOf(i);
        LinkedHashMap linkedHashMap = this.c;
        Object objValueOf = linkedHashMap.get(numValueOf);
        if (objValueOf == null) {
            objValueOf = Boolean.valueOf(z);
            linkedHashMap.put(numValueOf, objValueOf);
        }
        boolean zBooleanValue = ((Boolean) objValueOf).booleanValue();
        if (zBooleanValue) {
            a.e(itemSelectionBinding.getRoot()).f(Integer.valueOf(R.drawable.ic_collapse_down)).L(itemSelectionBinding.btnCollapse);
        } else {
            a.e(itemSelectionBinding.getRoot()).f(Integer.valueOf(R.drawable.ic_collapse_up)).L(itemSelectionBinding.btnCollapse);
        }
        Group group = itemSelectionBinding.groupCollapse;
        group.getClass();
        group.setVisibility(zBooleanValue ? 8 : 0);
        RecyclerView.Adapter adapter = itemSelectionBinding.rvProducts.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(zn7Var2.d);
        }
        itemSelectionBinding.btnCollapse.setOnClickListener(new View.OnClickListener() { // from class: an7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = zn7Var2.a;
                ItemSelectionBinding itemSelectionBinding2 = itemSelectionBinding;
                Group group2 = itemSelectionBinding2.groupCollapse;
                group2.getClass();
                boolean z2 = group2.getVisibility() == 0;
                if (z2) {
                    a.e(itemSelectionBinding2.getRoot()).f(Integer.valueOf(R.drawable.ic_collapse_down)).L(itemSelectionBinding2.btnCollapse);
                } else {
                    a.e(itemSelectionBinding2.getRoot()).f(Integer.valueOf(R.drawable.ic_collapse_up)).L(itemSelectionBinding2.btnCollapse);
                }
                Group group3 = itemSelectionBinding2.groupCollapse;
                group3.getClass();
                group3.setVisibility(z2 ? 8 : 0);
                this.b.c.put(Integer.valueOf(i2), Boolean.valueOf(z2));
            }
        });
        FrameLayout root = itemSelectionBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new cn7(this, zn7Var2)));
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemSelectionBinding itemSelectionBinding = (ItemSelectionBinding) viewBinding;
        itemSelectionBinding.getClass();
        RecyclerView recyclerView = itemSelectionBinding.rvProducts;
        SelectionsPresenter selectionsPresenter = this.b;
        recyclerView.setAdapter(new eu1(new fi6(selectionsPresenter), new rd5(selectionsPresenter)));
        recyclerView.addItemDecoration(new dn7());
    }
}
