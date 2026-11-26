package defpackage;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;

/* JADX INFO: loaded from: classes5.dex */
public final class zn8 {
    public static final void a(uf3 uf3Var, final xn8 xn8Var, TasksReason tasksReason, final BaseView baseView) {
        uf3Var.getClass();
        o87 o87Var = uf3Var.c;
        xn8Var.getClass();
        tasksReason.getClass();
        if (xn8Var.equals(xn8.b.a)) {
            o87Var.d(new li7(tasksReason));
            return;
        }
        if (xn8Var instanceof xn8.a) {
            xn8.a aVar = (xn8.a) xn8Var;
            if (aVar.b) {
                uf3Var.l(new t57() { // from class: yn8
                    @Override // defpackage.t57
                    public final void onResult(Object obj) {
                        BaseView baseView2 = baseView;
                        if (baseView2 != null) {
                            baseView2.openUrlInCustomTab(((xn8.a) xn8Var).a);
                        }
                    }
                });
                o87Var.d(new ix(new AuthReason.Login((String) null, (String) null, 7)));
            } else if (baseView != null) {
                baseView.openUrl(aVar.a);
            }
        }
    }
}
