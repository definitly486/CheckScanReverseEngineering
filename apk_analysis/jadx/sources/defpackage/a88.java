package defpackage;

import com.warefly.checkscan.presentation.statistics.view.StatisticsView$$State;
import com.warefly.checkscan.support.presentation.flow.view.SupportFlowView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class a88 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ a88(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new StatisticsView$$State();
            default:
                return new SupportFlowView$$State();
        }
    }
}
