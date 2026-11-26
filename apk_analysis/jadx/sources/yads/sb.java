package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class sb extends RecyclerView.LayoutParams {
    public final int a;
    public final int b;

    public sb(sb sbVar) {
        super((RecyclerView.LayoutParams) sbVar);
        this.a = Integer.MAX_VALUE;
        this.b = Integer.MAX_VALUE;
        this.a = sbVar.a;
        this.b = sbVar.b;
    }

    public sb() {
        super(-2, -2);
        this.a = Integer.MAX_VALUE;
        this.b = Integer.MAX_VALUE;
    }

    public sb(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.a = Integer.MAX_VALUE;
        this.b = Integer.MAX_VALUE;
    }

    public sb(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.a = Integer.MAX_VALUE;
        this.b = Integer.MAX_VALUE;
    }

    public sb(RecyclerView.LayoutParams layoutParams) {
        super(layoutParams);
        this.a = Integer.MAX_VALUE;
        this.b = Integer.MAX_VALUE;
    }

    public sb(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = Integer.MAX_VALUE;
        this.b = Integer.MAX_VALUE;
    }

    public sb(ro1 ro1Var) {
        super((ViewGroup.MarginLayoutParams) ro1Var);
        this.a = Integer.MAX_VALUE;
        this.b = Integer.MAX_VALUE;
        this.a = ro1Var.g;
        this.b = ro1Var.h;
    }
}
