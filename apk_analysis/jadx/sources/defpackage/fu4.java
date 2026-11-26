package defpackage;

import android.location.Location;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.flexbox.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.products.databinding.ItemProductShopsBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fu4 implements Runnable {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ fu4(Consumer consumer, Location location) {
        this.c = consumer;
        this.d = location;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((Consumer) obj2).accept((Location) obj);
                break;
            default:
                ItemProductShopsBinding itemProductShopsBinding = (ItemProductShopsBinding) obj2;
                RecyclerView.LayoutManager layoutManager = itemProductShopsBinding.rvShops.getLayoutManager();
                layoutManager.getClass();
                FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) layoutManager;
                int size = ((ArrayList) flexboxLayoutManager.v()).size();
                boolean z = ((ni6) obj).b;
                if (z && size > 2) {
                    List listO0 = qn1.o0(flexboxLayoutManager.v(), 2);
                    RecyclerView recyclerView = itemProductShopsBinding.rvShops;
                    recyclerView.getClass();
                    ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
                    if (layoutParams == null) {
                        o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                    } else {
                        Iterator it = listO0.iterator();
                        int i2 = 0;
                        while (it.hasNext()) {
                            i2 += ((a) it.next()).g;
                        }
                        layoutParams.height = i2;
                        recyclerView.setLayoutParams(layoutParams);
                        itemProductShopsBinding.btnCollapse.setText(itemProductShopsBinding.getRoot().getContext().getString(R.string.products_show_all_shops_button));
                        TextView textView = itemProductShopsBinding.btnCollapse;
                        textView.getClass();
                        textView.setVisibility(0);
                    }
                } else if (!z && size > 2) {
                    RecyclerView recyclerView2 = itemProductShopsBinding.rvShops;
                    recyclerView2.getClass();
                    ViewGroup.LayoutParams layoutParams2 = recyclerView2.getLayoutParams();
                    if (layoutParams2 == null) {
                        o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                    } else {
                        layoutParams2.height = -2;
                        recyclerView2.setLayoutParams(layoutParams2);
                        itemProductShopsBinding.btnCollapse.setText(itemProductShopsBinding.getRoot().getContext().getString(R.string.products_hide_all_shops_button));
                        TextView textView2 = itemProductShopsBinding.btnCollapse;
                        textView2.getClass();
                        textView2.setVisibility(0);
                    }
                } else {
                    TextView textView3 = itemProductShopsBinding.btnCollapse;
                    textView3.getClass();
                    textView3.setVisibility(8);
                }
                break;
        }
    }

    public /* synthetic */ fu4(ItemProductShopsBinding itemProductShopsBinding, ni6 ni6Var, li6 li6Var) {
        this.c = itemProductShopsBinding;
        this.d = ni6Var;
    }
}
