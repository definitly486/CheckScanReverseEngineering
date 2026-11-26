package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskDisclaimersBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dn8 extends vd9<gn8, ItemRvTaskDisclaimersBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTaskDisclaimersBinding> {
        public static final a c = new a(3, ItemRvTaskDisclaimersBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimersBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvTaskDisclaimersBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvTaskDisclaimersBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public dn8() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof gn8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, gn8 gn8Var) {
        ItemRvTaskDisclaimersBinding itemRvTaskDisclaimersBinding = (ItemRvTaskDisclaimersBinding) viewBinding;
        gn8 gn8Var2 = gn8Var;
        itemRvTaskDisclaimersBinding.getClass();
        if (gn8Var2.a) {
            itemRvTaskDisclaimersBinding.getRoot().setStrokeColor(-1);
            itemRvTaskDisclaimersBinding.getRoot().setCardBackgroundColor(-1);
        } else {
            itemRvTaskDisclaimersBinding.getRoot().setStrokeColor(ContextCompat.getColor(itemRvTaskDisclaimersBinding.getRoot().getContext(), R.color.primary_30));
            itemRvTaskDisclaimersBinding.getRoot().setCardBackgroundColor(ContextCompat.getColor(itemRvTaskDisclaimersBinding.getRoot().getContext(), R.color.primary_10));
        }
        RecyclerView.Adapter adapter = itemRvTaskDisclaimersBinding.rvTexts.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(gn8Var2.b);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvTaskDisclaimersBinding itemRvTaskDisclaimersBinding = (ItemRvTaskDisclaimersBinding) viewBinding;
        itemRvTaskDisclaimersBinding.getClass();
        RecyclerView recyclerView = itemRvTaskDisclaimersBinding.rvTexts;
        recyclerView.setAdapter(new eu1(new bn8(zm8.c)));
        recyclerView.addItemDecoration(new en8());
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvTaskDisclaimersBinding.getRoot().getContext(), 1, false));
    }
}
