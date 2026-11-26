package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class e4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e4(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                final List<String> list = (List) obj;
                c4 c4Var = (c4) obj2;
                list.getClass();
                if (list.isEmpty()) {
                    return mz7.e(list);
                }
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    if (c4Var.l.a(str)) {
                        arrayList.add(str);
                    }
                }
                qp1 qp1VarQ = c4Var.b.q(arrayList);
                Callable callable = new Callable() { // from class: d4
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return list;
                    }
                };
                qp1VarQ.getClass();
                return new vq1(qp1VarQ, callable);
            default:
                ((View) obj).getClass();
                ((VerificationCallFragment) obj2).o().onCallAgainAgainClicked();
                return j59.a;
        }
    }
}
