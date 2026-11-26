package defpackage;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.f3;
import com.my.target.x1;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class mda extends RecyclerView.Adapter {
    public final ArrayList i;
    public final f3 t;

    public mda(ArrayList arrayList, f3 f3Var) {
        this.i = arrayList;
        this.t = f3Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        fia fiaVar = (fia) viewHolder;
        aea aeaVar = (aea) this.i.get(i);
        fiaVar.m = aeaVar;
        aeaVar.a(fiaVar.l, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        f3 f3Var = this.t;
        f3Var.getClass();
        x1 x1Var = new x1(f3Var.c, f3Var.a, f3Var.d);
        x1Var.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new fia(x1Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        fia fiaVar = (fia) viewHolder;
        aea aeaVar = fiaVar.m;
        if (aeaVar != null) {
            aeaVar.b(fiaVar.l);
        }
        fiaVar.m = null;
        return super.onFailedToRecycleView(fiaVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        fia fiaVar = (fia) viewHolder;
        aea aeaVar = fiaVar.m;
        if (aeaVar != null) {
            aeaVar.b(fiaVar.l);
        }
        fiaVar.m = null;
        super.onViewRecycled(fiaVar);
    }
}
