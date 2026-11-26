package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zo2 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zo2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((TaskCompletionSource) obj2).setResult(obj);
                break;
            default:
                ((TransferPointsPresenter.d) obj2).invoke(obj);
                break;
        }
    }
}
