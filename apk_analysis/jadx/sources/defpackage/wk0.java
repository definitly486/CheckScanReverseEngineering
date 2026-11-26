package defpackage;

import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView$$State;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class wk0 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ wk0(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new BonusAdmitadNewView$$State();
            default:
                return new StatisticsPageView$$State();
        }
    }
}
