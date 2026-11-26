package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.products.databinding.ItemSelectionPromoBinding;
import com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class up6 extends vd9<vp6, ItemSelectionPromoBinding> {
    public final SelectionsPresenter b;
    public final LinkedHashMap c;

    public up6(SelectionsPresenter selectionsPresenter) {
        super(sp6.c);
        this.b = selectionsPresenter;
        this.c = new LinkedHashMap();
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof vp6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, vp6 vp6Var) {
        final ItemSelectionPromoBinding itemSelectionPromoBinding = (ItemSelectionPromoBinding) viewBinding;
        final vp6 vp6Var2 = vp6Var;
        itemSelectionPromoBinding.getClass();
        String str = vp6Var2.d;
        itemSelectionPromoBinding.tvTitle.setText(vp6Var2.e);
        String str2 = vp6Var2.h;
        if (str2 == null) {
            ImageView imageView = itemSelectionPromoBinding.ivShopLogo;
            imageView.getClass();
            imageView.setVisibility(8);
        } else {
            a.e(itemSelectionPromoBinding.getRoot()).h(str2).L(itemSelectionPromoBinding.ivShopLogo);
            ImageView imageView2 = itemSelectionPromoBinding.ivShopLogo;
            imageView2.getClass();
            imageView2.setVisibility(0);
        }
        if (str == null) {
            ImageView imageView3 = itemSelectionPromoBinding.ivPromoIcon;
            imageView3.getClass();
            imageView3.setVisibility(4);
        } else {
            a.e(itemSelectionPromoBinding.getRoot()).h(str).L(itemSelectionPromoBinding.ivPromoIcon);
            ImageView imageView4 = itemSelectionPromoBinding.ivPromoIcon;
            imageView4.getClass();
            imageView4.setVisibility(0);
        }
        h37<Drawable> h37VarH = a.e(itemSelectionPromoBinding.getRoot()).h(vp6Var2.b);
        h37VarH.getClass();
        ((h37) h37VarH.A(uq2.c, new s81())).L(itemSelectionPromoBinding.ivBackground);
        RecyclerView.Adapter adapter = itemSelectionPromoBinding.rvProducts.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(vp6Var2.g);
        }
        int i = vp6Var2.a;
        boolean z = vp6Var2.f;
        Integer numValueOf = Integer.valueOf(i);
        LinkedHashMap linkedHashMap = this.c;
        Object objValueOf = linkedHashMap.get(numValueOf);
        if (objValueOf == null) {
            objValueOf = Boolean.valueOf(z);
            linkedHashMap.put(numValueOf, objValueOf);
        }
        boolean zBooleanValue = ((Boolean) objValueOf).booleanValue();
        Group group = itemSelectionPromoBinding.groupCollapse;
        group.getClass();
        group.setVisibility(zBooleanValue ? 8 : 0);
        if (zBooleanValue) {
            a.e(itemSelectionPromoBinding.getRoot()).f(Integer.valueOf(R.drawable.ic_collapse_down)).L(itemSelectionPromoBinding.btnCollapse);
        } else {
            a.e(itemSelectionPromoBinding.getRoot()).f(Integer.valueOf(R.drawable.ic_collapse_up)).L(itemSelectionPromoBinding.btnCollapse);
        }
        itemSelectionPromoBinding.btnCollapse.setOnClickListener(new View.OnClickListener() { // from class: rp6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = vp6Var2.a;
                ItemSelectionPromoBinding itemSelectionPromoBinding2 = itemSelectionPromoBinding;
                Group group2 = itemSelectionPromoBinding2.groupCollapse;
                group2.getClass();
                boolean z2 = group2.getVisibility() == 0;
                if (z2) {
                    a.e(itemSelectionPromoBinding2.getRoot()).f(Integer.valueOf(R.drawable.ic_collapse_down)).L(itemSelectionPromoBinding2.btnCollapse);
                } else {
                    a.e(itemSelectionPromoBinding2.getRoot()).f(Integer.valueOf(R.drawable.ic_collapse_up)).L(itemSelectionPromoBinding2.btnCollapse);
                }
                Group group3 = itemSelectionPromoBinding2.groupCollapse;
                group3.getClass();
                group3.setVisibility(z2 ? 8 : 0);
                this.b.c.put(Integer.valueOf(i2), Boolean.valueOf(z2));
            }
        });
        FrameLayout root = itemSelectionPromoBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new qo0(this, vp6Var2, 3)));
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemSelectionPromoBinding itemSelectionPromoBinding = (ItemSelectionPromoBinding) viewBinding;
        itemSelectionPromoBinding.getClass();
        ImageView imageView = itemSelectionPromoBinding.ivBackground;
        imageView.getClass();
        le9.c(24, imageView);
        RecyclerView recyclerView = itemSelectionPromoBinding.rvProducts;
        SelectionsPresenter selectionsPresenter = this.b;
        recyclerView.setAdapter(new eu1(new fi6(selectionsPresenter), new rd5(selectionsPresenter)));
        recyclerView.addItemDecoration(new tp6());
    }
}
