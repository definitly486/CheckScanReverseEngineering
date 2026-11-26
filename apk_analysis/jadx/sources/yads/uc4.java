package yads;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class uc4 extends RecyclerView.Adapter {
    public final List a;
    public final rc4 b;

    public uc4(b05 b05Var, List list, d9 d9Var, defpackage.y22 y22Var) {
        rc4 rc4Var = new rc4(b05Var, d9Var, y22Var);
        this.a = list;
        this.b = rc4Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((pc4) viewHolder).a.b((rd3) this.a.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        rc4 rc4Var = this.b;
        rc4Var.getClass();
        ImageView imageView = new ImageView(viewGroup.getContext());
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setOnClickListener(new qc4());
        int i2 = be3.l;
        return new pc4(imageView, new be3(imageView, rc4Var.a, rc4Var.b, rc4Var.c));
    }
}
