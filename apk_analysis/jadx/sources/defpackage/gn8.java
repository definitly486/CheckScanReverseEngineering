package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class gn8 implements pz3 {
    public final boolean a;
    public final ArrayList b;

    public gn8(ArrayList arrayList, boolean z) {
        this.a = z;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gn8)) {
            return false;
        }
        gn8 gn8Var = (gn8) obj;
        return this.a == gn8Var.a && aa4.e(this.b, gn8Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return qn1.a0(this.b, null, null, null, 0, null, 63);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Boolean.hashCode(this.a) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "task_disclaimers";
    }

    public final String toString() {
        return "TaskDisclaimersViewModel(isMultiTask=" + this.a + ", disclaimers=" + this.b + ")";
    }
}
