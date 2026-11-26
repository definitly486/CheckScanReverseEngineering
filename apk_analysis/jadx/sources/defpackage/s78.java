package defpackage;

import android.graphics.drawable.Drawable;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemShopsStatisticsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class s78 extends gh4 implements dm3<ItemShopsStatisticsBinding, e67, Integer, j59> {
    public final /* synthetic */ RecyclerView f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s78(RecyclerView recyclerView) {
        super(3);
        this.f = recyclerView;
    }

    @Override // defpackage.dm3
    public final j59 invoke(ItemShopsStatisticsBinding itemShopsStatisticsBinding, e67 e67Var, Integer num) {
        ItemShopsStatisticsBinding itemShopsStatisticsBinding2 = itemShopsStatisticsBinding;
        e67 e67Var2 = e67Var;
        num.intValue();
        itemShopsStatisticsBinding2.getClass();
        e67Var2.getClass();
        itemShopsStatisticsBinding2.tvShopStatistics.setText(e67Var2.a().b());
        if (e67Var2.a().a() != null) {
            h37<Drawable> h37VarH = a.e(itemShopsStatisticsBinding2.ivShopStatistics).h(e67Var2.a().a());
            h37VarH.getClass();
            ((h37) h37VarH.A(uq2.b, new ak1())).p(pl2.o(36), pl2.o(36)).L(itemShopsStatisticsBinding2.ivShopStatistics);
        }
        itemShopsStatisticsBinding2.tvCostStatistics.setText(this.f.getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(e67Var2.b() / 100.0f)));
        itemShopsStatisticsBinding2.pbCostsStatistics.getLayoutParams().width = pl2.o(e67Var2.c);
        return j59.a;
    }
}
