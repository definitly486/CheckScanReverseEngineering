package defpackage;

import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class x78 extends gh4 implements bm3<Integer, c81, dk8.a> {
    public final /* synthetic */ StatisticsPageFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x78(StatisticsPageFragment statisticsPageFragment) {
        super(2);
        this.f = statisticsPageFragment;
    }

    @Override // defpackage.bm3
    public final dk8.a invoke(Integer num, c81 c81Var) {
        num.intValue();
        c81 c81Var2 = c81Var;
        c81Var2.getClass();
        int iA = c81Var2.a().a();
        String strB = c81Var2.a().b();
        long jB = c81Var2.b();
        StatisticsPageFragment statisticsPageFragment = this.f;
        return new dk8.a(iA, strB, jB, ContextCompat.getColor(statisticsPageFragment.requireContext(), R.color.blueCharcoal), ContextCompat.getColor(statisticsPageFragment.requireContext(), R.color.statistics_chart_color_six), false);
    }
}
