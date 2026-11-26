package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class vp8 implements up8 {
    public final jc1 a;
    public final qp3 b;

    public vp8(jc1 jc1Var, qp3 qp3Var) {
        this.a = jc1Var;
        this.b = qp3Var;
    }

    public static qc6 x(qc6 qc6Var, wp8 wp8Var) {
        return wp8Var == null ? qc6Var : qc6Var.a(wp8Var.a, "list_id").a(wp8Var.b, "ranker_version").a(wp8Var.c, "experiment_key").a(wp8Var.d, "experiment_variant");
    }

    @Override // defpackage.up8
    public final void a() {
        u(y(new qc6().a("daily_ad", "screen").a(FirebaseAnalytics.Param.SUCCESS, "action"), null));
    }

    @Override // defpackage.up8
    public final void b(int i) {
        v(i, FirebaseAnalytics.Param.SUCCESS);
    }

    @Override // defpackage.up8
    public final void c(String str) {
        u(y(new qc6().a("daily_ad", "screen").a("fail", "action").a(str, "reason"), null));
    }

    @Override // defpackage.up8
    public final void d() {
        u(y(new qc6().a("daily_ad", "screen").a("show", "action"), null));
    }

    @Override // defpackage.up8
    public final void e(int i) {
        w(i, "show");
    }

    @Override // defpackage.up8
    public final void f() {
        u(y(new qc6().a("completed", "screen").a("show", "action"), null));
    }

    @Override // defpackage.up8
    public final void g(int i) {
        v(i, "continue");
    }

    @Override // defpackage.up8
    public final void h(int i) {
        w(i, "button_action");
    }

    @Override // defpackage.up8
    public final void i(int i) {
        v(i, "show");
    }

    @Override // defpackage.up8
    public final void j(int i) {
        w(i, "fail");
    }

    @Override // defpackage.up8
    public final void k(String str, int i, Integer num, int i2, wp8 wp8Var) {
        u(x(new qc6().a("list", "screen").a("click", "action").a(str, "block").a(Integer.valueOf(i), FirebaseAnalytics.Param.ITEM_ID).a(num, "position").a(Integer.valueOf(i2), "list_size"), wp8Var));
    }

    @Override // defpackage.up8
    public final void l(lw7 lw7Var, wp8 wp8Var) {
        u(x(new qc6().a("list", "screen").a("show", "action").a(lw7Var.a, "block").a(lw7Var.b, FirebaseAnalytics.Param.ITEM_ID).a(Integer.valueOf(lw7Var.c), "position").a(Integer.valueOf(lw7Var.d), "list_size"), wp8Var));
    }

    @Override // defpackage.up8
    public final void m(int i) {
        v(i, "claim");
    }

    @Override // defpackage.up8
    public final void n(int i) {
        u(y(new qc6().a("list", "screen").a("show", "action").a(Integer.valueOf(i), "list_size"), null));
    }

    @Override // defpackage.up8
    public final void o(int i, int i2) {
        u(y(new qc6().a("task_card", "screen").a("subtask_button", "action").a(Integer.valueOf(i), FirebaseAnalytics.Param.ITEM_ID).a(Integer.valueOf(i2), "subtask_id"), Integer.valueOf(i)));
    }

    @Override // defpackage.up8
    public final void p(int i) {
        w(i, FirebaseAnalytics.Param.SUCCESS);
    }

    @Override // defpackage.up8
    public final void q(String str, int i, Integer num, Integer num2) {
        str.getClass();
        qc6 qc6VarA = new qc6().a("list", "screen").a("click", "action").a(str, "block");
        if (str.equals("daily_ad")) {
            num = null;
        }
        u(y(qc6VarA.a(num, FirebaseAnalytics.Param.ITEM_ID).a(num2, "position").a(Integer.valueOf(i), "list_size"), null));
    }

    @Override // defpackage.up8
    public final void r(int i) {
        v(i, "transfer_button");
    }

    @Override // defpackage.up8
    public final void s(int i) {
        v(i, "fail");
    }

    @Override // defpackage.up8
    public final void t(lw7 lw7Var) {
        qc6 qc6VarA = new qc6().a("list", "screen").a("show", "action");
        String str = lw7Var.a;
        qc6 qc6VarA2 = qc6VarA.a(str, "block");
        Integer num = lw7Var.b;
        if (aa4.e(str, "daily_ad")) {
            num = null;
        }
        u(y(qc6VarA2.a(num, FirebaseAnalytics.Param.ITEM_ID).a(Integer.valueOf(lw7Var.c), "position").a(Integer.valueOf(lw7Var.d), "list_size"), null));
    }

    public final void u(qc6 qc6Var) {
        this.a.a(new kw7("Tasks Showcase v2", qc6Var));
    }

    public final void v(int i, String str) {
        u(y(new qc6().a("daily_bonus", "screen").a(str, "action").a(Integer.valueOf(i), FirebaseAnalytics.Param.ITEM_ID), Integer.valueOf(i)));
    }

    public final void w(int i, String str) {
        u(y(new qc6().a("task_card", "screen").a(str, "action").a(Integer.valueOf(i), FirebaseAnalytics.Param.ITEM_ID), Integer.valueOf(i)));
    }

    public final qc6 y(qc6 qc6Var, Integer num) {
        wp8 wp8VarC;
        xp8 xp8Var = this.b.a;
        if (num == null) {
            wp8VarC = xp8Var.get();
        } else {
            wp8VarC = xp8Var.c();
            if (wp8VarC == null || !aa4.e(wp8VarC.e, num)) {
                wp8VarC = null;
            }
        }
        return x(qc6Var, wp8VarC);
    }
}
