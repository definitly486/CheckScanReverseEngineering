package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.databinding.ItemRvSimpleFilterCategoryBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class fz7 extends ListAdapter<ez7, b> {
    public final pb8 i;

    public static final class a extends DiffUtil.ItemCallback<ez7> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areContentsTheSame(ez7 ez7Var, ez7 ez7Var2) {
            ez7 ez7Var3 = ez7Var;
            ez7 ez7Var4 = ez7Var2;
            ez7Var3.getClass();
            ez7Var4.getClass();
            return ez7Var3.equals(ez7Var4);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areItemsTheSame(ez7 ez7Var, ez7 ez7Var2) {
            ez7Var.getClass();
            ez7Var2.getClass();
            return true;
        }
    }

    public final class b extends RecyclerView.ViewHolder {
        public final ItemRvSimpleFilterCategoryBinding l;

        public b(ItemRvSimpleFilterCategoryBinding itemRvSimpleFilterCategoryBinding) {
            super(itemRvSimpleFilterCategoryBinding.getRoot());
            this.l = itemRvSimpleFilterCategoryBinding;
        }
    }

    public fz7(pb8 pb8Var) {
        super(new a());
        this.i = pb8Var;
    }

    @Override // androidx.recyclerview.widget.ListAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return getCurrentList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        b bVar = (b) viewHolder;
        bVar.getClass();
        ez7 ez7Var = getCurrentList().get(i);
        ez7Var.getClass();
        ItemRvSimpleFilterCategoryBinding itemRvSimpleFilterCategoryBinding = bVar.l;
        fz7 fz7Var = fz7.this;
        ConstraintLayout root = itemRvSimpleFilterCategoryBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new t32(fz7Var, ez7Var)));
        itemRvSimpleFilterCategoryBinding.tvSimpleTitle.setText((CharSequence) null);
        itemRvSimpleFilterCategoryBinding.checkboxSimple.setChecked(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        ItemRvSimpleFilterCategoryBinding itemRvSimpleFilterCategoryBindingInflate = ItemRvSimpleFilterCategoryBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        itemRvSimpleFilterCategoryBindingInflate.getClass();
        return new b(itemRvSimpleFilterCategoryBindingInflate);
    }
}
