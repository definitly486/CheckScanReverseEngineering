package defpackage;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class w78 extends gh4 implements dm3<Integer, c81, Long, dk8.a> {
    public final /* synthetic */ StatisticsPageFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w78(StatisticsPageFragment statisticsPageFragment) {
        super(3);
        this.f = statisticsPageFragment;
    }

    @Override // defpackage.dm3
    public final dk8.a invoke(Integer num, c81 c81Var, Long l) {
        int i;
        int iIntValue = num.intValue();
        c81 c81Var2 = c81Var;
        l.longValue();
        c81Var2.getClass();
        int iA = c81Var2.a().a();
        String strB = c81Var2.a().b();
        long jB = c81Var2.b();
        StatisticsPageFragment statisticsPageFragment = this.f;
        int color = ContextCompat.getColor(statisticsPageFragment.requireContext(), R.color.white);
        Context contextRequireContext = statisticsPageFragment.requireContext();
        if (iIntValue == 0) {
            i = R.color.statistics_chart_color_first;
        } else if (iIntValue == 1) {
            i = R.color.statistics_chart_color_second;
        } else if (iIntValue == 2) {
            i = R.color.statistics_chart_color_third;
        } else if (iIntValue != 3) {
            i = iIntValue != 4 ? R.color.statistics_chart_color_five : R.color.statistics_chart_color_six;
        } else {
            i = R.color.statistics_chart_color_fourth;
        }
        return new dk8.a(iA, strB, jB, color, ContextCompat.getColor(contextRequireContext, i), false);
    }
}
