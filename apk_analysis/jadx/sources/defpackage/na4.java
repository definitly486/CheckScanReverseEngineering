package defpackage;

import com.warefly.checkscan.presentation.flows.issueCard.view.IssueCardFlowView$$State;
import com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class na4 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ na4(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new IssueCardFlowView$$State();
            default:
                return new ProfilePromocodeEnterView$$State();
        }
    }
}
