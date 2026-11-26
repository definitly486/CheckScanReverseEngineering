package yads;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.mobile.ads.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class ge0 extends ListAdapter {
    public final ig6 a;
    public final ch6 b;

    public ge0(an3 an3Var, tf0 tf0Var) {
        ig6 ig6Var = new ig6(an3Var, tf0Var);
        ch6 ch6Var = new ch6();
        super(new nf0());
        this.a = ig6Var;
        this.b = ch6Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        uh0 uh0Var = (uh0) getItem(i);
        this.b.getClass();
        if (uh0Var instanceof nh0) {
            return R$layout.debug_panel_item_action_button;
        }
        if (uh0Var instanceof th0) {
            return R$layout.debug_panel_item_switch;
        }
        if (uh0Var instanceof oh0) {
            return R$layout.debug_panel_item_divider;
        }
        if (uh0Var instanceof ph0) {
            return R$layout.deubg_panel_item_header;
        }
        if (uh0Var instanceof qh0) {
            return R$layout.deubg_panel_item_key_value;
        }
        if (uh0Var instanceof rh0) {
            return R$layout.debug_panel_item_mediation_adapter;
        }
        if (uh0Var instanceof lh0) {
            return R$layout.debug_panel_item_ad_units;
        }
        if (uh0Var instanceof kh0) {
            return R$layout.debug_panel_item_ad_unit;
        }
        defpackage.me0.e();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((wh0) viewHolder).a((uh0) getItem(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return this.a.a(LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false), i);
    }
}
