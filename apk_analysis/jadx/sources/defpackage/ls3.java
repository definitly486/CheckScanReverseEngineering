package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemFilterBasicBinding;
import com.warefly.checkscan.databinding.ItemFilterGroupedBinding;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ls3 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public final List<ga3> i;
    public final xg1 t;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a BasicCategory;
        public static final a GroupedCategory;

        static {
            a aVar = new a("BasicCategory", 0);
            BasicCategory = aVar;
            a aVar2 = new a("GroupedCategory", 1);
            GroupedCategory = aVar2;
            $VALUES = new a[]{aVar, aVar2};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public static final class b extends RecyclerView.ViewHolder {
        public final ItemFilterBasicBinding l;

        public b(ItemFilterBasicBinding itemFilterBasicBinding) {
            super(itemFilterBasicBinding.getRoot());
            this.l = itemFilterBasicBinding;
        }
    }

    public static final class c extends RecyclerView.ViewHolder {
        public final ItemFilterGroupedBinding l;

        public c(ItemFilterGroupedBinding itemFilterGroupedBinding) {
            super(itemFilterGroupedBinding.getRoot());
            this.l = itemFilterGroupedBinding;
        }
    }

    public ls3(ArrayList arrayList, xg1 xg1Var) {
        arrayList.getClass();
        this.i = arrayList;
        this.t = xg1Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return this.i.get(i) instanceof ks3 ? a.GroupedCategory.ordinal() : a.BasicCategory.ordinal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        viewHolder.getClass();
        ga3 ga3Var = this.i.get(i);
        boolean z = viewHolder instanceof b;
        xg1 xg1Var = this.t;
        if (z) {
            ga3Var.getClass();
            xg1Var.getClass();
            ItemFilterBasicBinding itemFilterBasicBinding = ((b) viewHolder).l;
            TextView root = itemFilterBasicBinding.getRoot();
            root.getClass();
            root.setOnClickListener(new lb7(new ms3(xg1Var, ga3Var)));
            itemFilterBasicBinding.tvName.setText(ga3Var.b);
            return;
        }
        if (viewHolder instanceof c) {
            final c cVar = (c) viewHolder;
            ga3Var.getClass();
            final ks3 ks3Var = (ks3) ga3Var;
            xg1Var.getClass();
            ItemFilterGroupedBinding itemFilterGroupedBinding = cVar.l;
            TextView textView = itemFilterGroupedBinding.tvGroupName;
            textView.setText(ks3Var.b);
            textView.setTextColor(ContextCompat.getColor(textView.getContext(), ks3Var.c ? R.color.readilyBlue : R.color.black));
            View view = itemFilterGroupedBinding.btnShowSubcats;
            view.setVisibility(0);
            view.setRotation(ks3Var.c ? 180.0f : 0.0f);
            view.setOnClickListener(new View.OnClickListener() { // from class: ns3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ItemFilterGroupedBinding itemFilterGroupedBinding2 = cVar.l;
                    ks3 ks3Var2 = ks3Var;
                    if (ks3Var2.c) {
                        ks3Var2.c = false;
                        itemFilterGroupedBinding2.getClass();
                        itemFilterGroupedBinding2.rvSubcategories.setVisibility(8);
                        itemFilterGroupedBinding2.ivShowSubcats.setRotation(0.0f);
                        itemFilterGroupedBinding2.tvGroupName.setTextColor(oz1.a(itemFilterGroupedBinding2, R.color.black));
                        return;
                    }
                    ks3Var2.c = true;
                    itemFilterGroupedBinding2.getClass();
                    itemFilterGroupedBinding2.rvSubcategories.setVisibility(0);
                    itemFilterGroupedBinding2.ivShowSubcats.setRotation(180.0f);
                    itemFilterGroupedBinding2.tvGroupName.setTextColor(oz1.a(itemFilterGroupedBinding2, R.color.readilyBlue));
                }
            });
            itemFilterGroupedBinding.rvSubcategories.setVisibility(ks3Var.c ? 0 : 8);
            RecyclerView recyclerView = itemFilterGroupedBinding.rvSubcategories;
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            new jz7(R.layout.item_filter_basic, null, new os3(xg1Var), ps3.f, qs3.f);
            throw null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        if (i == a.BasicCategory.ordinal()) {
            ItemFilterBasicBinding itemFilterBasicBindingInflate = ItemFilterBasicBinding.inflate(layoutInflaterFrom, viewGroup, false);
            itemFilterBasicBindingInflate.getClass();
            return new b(itemFilterBasicBindingInflate);
        }
        ItemFilterGroupedBinding itemFilterGroupedBindingInflate = ItemFilterGroupedBinding.inflate(layoutInflaterFrom, viewGroup, false);
        itemFilterGroupedBindingInflate.getClass();
        return new c(itemFilterGroupedBindingInflate);
    }
}
