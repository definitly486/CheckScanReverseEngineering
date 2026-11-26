package defpackage;

import com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView$$State;
import com.warefly.checkscan.presentation.createCard.view.CreateCardView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class i62 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ i62(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new CreateCardView$$State();
            default:
                return new PointsProgramView$$State();
        }
    }
}
