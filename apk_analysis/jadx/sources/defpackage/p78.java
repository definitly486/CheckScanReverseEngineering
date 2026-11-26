package defpackage;

import com.warefly.checkscan.presentation.statistics.presenter.StatisticsPresenter;
import com.warefly.checkscan.presentation.statistics.view.StatisticsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class p78 extends gh4 implements ll3<j59> {
    public final /* synthetic */ StatisticsFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p78(StatisticsFragment statisticsFragment) {
        super(0);
        this.f = statisticsFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        StatisticsPresenter statisticsPresenter = this.f.presenter;
        if (statisticsPresenter != null) {
            statisticsPresenter.onLoadMoreHots();
            return j59.a;
        }
        aa4.j("presenter");
        throw null;
    }
}
