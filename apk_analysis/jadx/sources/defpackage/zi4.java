package defpackage;

import com.google.firebase.inappmessaging.internal.injection.modules.ProgrammaticContextualTriggerFlowableModule;
import com.my.target.d3;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsPresenter;
import yads.bw4;
import yads.iw4;
import yads.q85;
import yads.tt3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zi4 implements xl3, jh3, tt3, d3.a, q85 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zi4(ts5 ts5Var, ms5 ms5Var) {
        this.b = 1;
        this.c = ms5Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (ur6) ((dj4) obj2).invoke(obj);
            case 1:
                Throwable th = (Throwable) obj;
                th.getClass();
                return ts5.b((ms5) obj2, a57.a(418, ts5.d(th.getMessage())));
            default:
                return TransferPointsPresenter.triggerTimer$lambda$5((nl3) obj2, obj);
        }
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).a(((bw4) this.c).n);
    }

    @Override // defpackage.jh3
    public void subscribe(qg3 qg3Var) {
        ((ProgrammaticContextualTriggerFlowableModule) this.c).lambda$providesProgramaticContextualTriggerStream$1((kg3.b) qg3Var);
    }

    public /* synthetic */ zi4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }
}
