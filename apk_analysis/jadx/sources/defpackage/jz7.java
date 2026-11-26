package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class jz7<I, VB extends ViewBinding> extends RecyclerView.Adapter<jz7<I, VB>.a> {
    public final int i;
    public final nl3<? super I, j59> t;
    public final nl3<View, VB> u;
    public final dm3<VB, I, Integer, j59> v;
    public final ArrayList<I> w;

    public final class a extends RecyclerView.ViewHolder {
        public final VB l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(ViewBinding viewBinding) {
            super(viewBinding.getRoot());
            viewBinding.getClass();
            this.l = viewBinding;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public jz7(int i, List<? extends I> list, nl3<? super I, j59> nl3Var, nl3<? super View, ? extends VB> nl3Var2, dm3<? super VB, ? super I, ? super Integer, j59> dm3Var) {
        list.getClass();
        nl3Var2.getClass();
        dm3Var.getClass();
        this.i = i;
        this.t = nl3Var;
        this.u = nl3Var2;
        this.v = dm3Var;
        this.w = new ArrayList<>(list);
    }

    public final void b(List<? extends I> list) {
        list.getClass();
        ArrayList<I> arrayList = this.w;
        arrayList.clear();
        arrayList.addAll(list);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.w.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar = (a) viewHolder;
        aVar.getClass();
        I i2 = this.w.get(i);
        VB vb = aVar.l;
        vb.getRoot().setOnClickListener(new pv7(1, this, i2));
        this.v.invoke(vb, i2, Integer.valueOf(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.i, viewGroup, false);
        viewInflate.getClass();
        return new a(this.u.invoke(viewInflate));
    }

    public /* synthetic */ jz7(int i, List list, rb rbVar, nl3 nl3Var, dm3 dm3Var, int i2) {
        this(i, (i2 & 2) != 0 ? kx2.b : list, (i2 & 4) != 0 ? null : rbVar, nl3Var, dm3Var);
    }
}
