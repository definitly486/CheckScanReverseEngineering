package defpackage;

import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class l82 {
    public final String a;
    public final a b;
    public final DailyTaskNoAttempts c;
    public final ArrayList d;

    public static final class a {
        public final String a;
        public final boolean b;

        public a(String str, boolean z) {
            str.getClass();
            this.a = str;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Button(title=" + this.a + ", isEnabled=" + this.b + ")";
        }
    }

    public l82(String str, a aVar, DailyTaskNoAttempts dailyTaskNoAttempts, ArrayList arrayList) {
        this.a = str;
        this.b = aVar;
        this.c = dailyTaskNoAttempts;
        this.d = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l82)) {
            return false;
        }
        l82 l82Var = (l82) obj;
        return aa4.e(this.a, l82Var.a) && this.b.equals(l82Var.b) && aa4.e(this.c, l82Var.c) && this.d.equals(l82Var.d);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31;
        DailyTaskNoAttempts dailyTaskNoAttempts = this.c;
        return this.d.hashCode() + ((iHashCode + (dailyTaskNoAttempts != null ? dailyTaskNoAttempts.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "DailyTaskScreen(bannerUrl=" + this.a + ", button=" + this.b + ", noAttempts=" + this.c + ", content=" + this.d + ")";
    }
}
