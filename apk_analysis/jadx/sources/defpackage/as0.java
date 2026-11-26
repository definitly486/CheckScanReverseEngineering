package defpackage;

import com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView$$State;
import com.warefly.checkscan.presentation.operations.base.OperationsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class as0 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ as0(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new BonusesSearchView$$State();
            default:
                return new OperationsView$$State();
        }
    }
}
