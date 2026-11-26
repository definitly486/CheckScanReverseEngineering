package defpackage;

import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;

/* JADX INFO: loaded from: classes5.dex */
public final class s72 {
    public final boolean a;
    public final DailyTaskResult b;

    public s72(boolean z, DailyTaskResult dailyTaskResult) {
        this.a = z;
        this.b = dailyTaskResult;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s72)) {
            return false;
        }
        s72 s72Var = (s72) obj;
        return this.a == s72Var.a && aa4.e(this.b, s72Var.b);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        DailyTaskResult dailyTaskResult = this.b;
        return iHashCode + (dailyTaskResult == null ? 0 : dailyTaskResult.hashCode());
    }

    public final String toString() {
        return "DailyClaimRewardResult(success=" + this.a + ", banner=" + this.b + ")";
    }
}
