package defpackage;

import com.warefly.checkscan.auth.presentation.flow.view.AuthFlowView$$State;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebView$$State;

/* JADX INFO: loaded from: classes.dex */
public final class dv extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ dv(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new AuthFlowView$$State();
            default:
                return new UpridWebView$$State();
        }
    }
}
