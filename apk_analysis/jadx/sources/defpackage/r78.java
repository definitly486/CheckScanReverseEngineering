package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageFragment;
import com.warefly.checkscan.presentation.statistics.view.StatisticsFragment;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class r78 extends FragmentStateAdapter {
    public final List<ld5> i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r78(StatisticsFragment statisticsFragment, List list) {
        super(statisticsFragment);
        list.getClass();
        this.i = list;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public final Fragment createFragment(int i) {
        StatisticsPageFragment.a aVar = StatisticsPageFragment.o;
        ld5 ld5Var = this.i.get(i);
        aVar.getClass();
        ld5Var.getClass();
        StatisticsPageFragment statisticsPageFragment = new StatisticsPageFragment();
        Bundle bundle = new Bundle();
        bundle.putLong("SECTION_MONTH", ld5Var.a);
        bundle.putBoolean("SECTION_FUTURE_MONTH", ld5Var.c);
        statisticsPageFragment.setArguments(bundle);
        return statisticsPageFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.size();
    }
}
