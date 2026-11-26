package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes.dex */
public final class f41 implements e41 {
    public final jc1 a;
    public final np3 b;

    public f41(jc1 jc1Var, np3 np3Var) {
        this.a = jc1Var;
        this.b = np3Var;
    }

    @Override // defpackage.e41
    public final void a(int i, lw7 lw7Var, String str, Integer num, String str2) {
        this.a.a(new kw7("Transfer Showcase v2", d(new qc6().a("list", "screen").a("show", "action").a(lw7Var.a, "block").a(lw7Var.b, FirebaseAnalytics.Param.ITEM_ID).a(Integer.valueOf(lw7Var.c), "position").a(Integer.valueOf(lw7Var.d), "list_size").a(str, "badge").a(num, "operation_id").a(str2, "item_state"), i)));
    }

    @Override // defpackage.e41
    public final void b(int i, String str, int i2, Integer num, int i3, String str2, Integer num2, String str3) {
        str.getClass();
        this.a.a(new kw7("Transfer Showcase v2", d(new qc6().a("list", "screen").a("click", "action").a(str, "block").a(Integer.valueOf(i2), FirebaseAnalytics.Param.ITEM_ID).a(num, "position").a(Integer.valueOf(i3), "list_size").a(str2, "badge").a(num2, "operation_id").a(str3, "item_state"), i)));
    }

    @Override // defpackage.e41
    public final void c(int i, int i2) {
        this.a.a(new kw7("Transfer Showcase v2", d(new qc6().a("list", "screen").a("show", "action").a(Integer.valueOf(i2), "list_size"), i)));
    }

    public final qc6 d(qc6 qc6Var, int i) {
        qc6 qc6VarA = qc6Var.a(Integer.valueOf(i), "showcase_id");
        g41 g41Var = this.b.a.get(i);
        if (g41Var == null) {
            g41Var = null;
        }
        return g41Var == null ? qc6VarA : qc6VarA.a(g41Var.a, "list_id").a(g41Var.b, "ranker_version").a(g41Var.c, "experiment_key").a(g41Var.d, "experiment_variant").a(g41Var.e, "source").a(g41Var.f, "source_task_id");
    }
}
