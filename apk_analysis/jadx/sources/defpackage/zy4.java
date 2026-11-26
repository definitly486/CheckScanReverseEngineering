package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.databinding.ItemFilterCategoryBinding;
import com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FiltersNewDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class zy4 extends ListAdapter<vy4, a> {
    public final FiltersNewDialog.c i;

    public final class a extends RecyclerView.ViewHolder {
        public final ItemFilterCategoryBinding l;

        public a(ItemFilterCategoryBinding itemFilterCategoryBinding) {
            super(itemFilterCategoryBinding.getRoot());
            this.l = itemFilterCategoryBinding;
        }
    }

    public static final class b extends DiffUtil.ItemCallback<vy4> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areContentsTheSame(vy4 vy4Var, vy4 vy4Var2) {
            vy4 vy4Var3 = vy4Var;
            vy4 vy4Var4 = vy4Var2;
            vy4Var3.getClass();
            vy4Var4.getClass();
            return vy4Var3.equals(vy4Var4);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areItemsTheSame(vy4 vy4Var, vy4 vy4Var2) {
            vy4Var.getClass();
            vy4Var2.getClass();
            throw null;
        }
    }

    public zy4(FiltersNewDialog.a aVar, FiltersNewDialog.b bVar, FiltersNewDialog.c cVar) {
        super(new b());
        this.i = cVar;
    }

    @Override // androidx.recyclerview.widget.ListAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return getCurrentList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar = (a) viewHolder;
        aVar.getClass();
        vy4 vy4Var = getCurrentList().get(i);
        vy4Var.getClass();
        ItemFilterCategoryBinding itemFilterCategoryBinding = aVar.l;
        zy4 zy4Var = zy4.this;
        View view = itemFilterCategoryBinding.btnMainFilter;
        view.getClass();
        view.setOnClickListener(new lb7(new yy4(itemFilterCategoryBinding, zy4Var, vy4Var)));
        itemFilterCategoryBinding.checkboxMain.setChecked(false);
        itemFilterCategoryBinding.tvMainTitle.setText((CharSequence) null);
        ob8 ob8Var = new ob8(new wy4(2), new xy4(zy4Var));
        itemFilterCategoryBinding.rvMainFilters.setAdapter(ob8Var);
        ob8Var.submitList(null);
        RecyclerView recyclerView = itemFilterCategoryBinding.rvMainFilters;
        recyclerView.getClass();
        recyclerView.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        ItemFilterCategoryBinding itemFilterCategoryBindingInflate = ItemFilterCategoryBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        itemFilterCategoryBindingInflate.getClass();
        return new a(itemFilterCategoryBindingInflate);
    }
}
