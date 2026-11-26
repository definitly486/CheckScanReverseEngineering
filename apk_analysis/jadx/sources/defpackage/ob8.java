package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.databinding.ItemRvFilterCategoryBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ob8 extends ListAdapter<nb8, b> {
    public final xy4 i;

    public static final class a extends DiffUtil.ItemCallback<nb8> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areContentsTheSame(nb8 nb8Var, nb8 nb8Var2) {
            nb8 nb8Var3 = nb8Var;
            nb8 nb8Var4 = nb8Var2;
            nb8Var3.getClass();
            nb8Var4.getClass();
            return nb8Var3.equals(nb8Var4);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areItemsTheSame(nb8 nb8Var, nb8 nb8Var2) {
            nb8Var.getClass();
            nb8Var2.getClass();
            throw null;
        }
    }

    public final class b extends RecyclerView.ViewHolder {
        public final ItemRvFilterCategoryBinding l;

        public b(ItemRvFilterCategoryBinding itemRvFilterCategoryBinding) {
            super(itemRvFilterCategoryBinding.getRoot());
            this.l = itemRvFilterCategoryBinding;
        }
    }

    public ob8(wy4 wy4Var, xy4 xy4Var) {
        super(new a());
        this.i = xy4Var;
    }

    @Override // androidx.recyclerview.widget.ListAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return getCurrentList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        b bVar = (b) viewHolder;
        bVar.getClass();
        nb8 nb8Var = getCurrentList().get(i);
        nb8Var.getClass();
        ItemRvFilterCategoryBinding itemRvFilterCategoryBinding = bVar.l;
        ob8 ob8Var = ob8.this;
        View view = itemRvFilterCategoryBinding.btnSubFilter;
        view.getClass();
        view.setOnClickListener(new lb7(new br1(itemRvFilterCategoryBinding, ob8Var, nb8Var)));
        itemRvFilterCategoryBinding.checkboxSub.setChecked(false);
        itemRvFilterCategoryBinding.tvSubTitle.setText((CharSequence) null);
        fz7 fz7Var = new fz7(new pb8(ob8Var));
        itemRvFilterCategoryBinding.rvSubFilters.setAdapter(fz7Var);
        fz7Var.submitList(null);
        RecyclerView recyclerView = itemRvFilterCategoryBinding.rvSubFilters;
        recyclerView.getClass();
        recyclerView.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        ItemRvFilterCategoryBinding itemRvFilterCategoryBindingInflate = ItemRvFilterCategoryBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        itemRvFilterCategoryBindingInflate.getClass();
        return new b(itemRvFilterCategoryBindingInflate);
    }
}
