package defpackage;

import com.my.target.g3;
import com.my.target.x0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class n7a extends g3 {
    public final long d;
    public long e;

    public n7a(x0 x0Var, s5a s5aVar, long j) {
        super(x0Var, s5aVar);
        this.e = 0L;
        this.d = j;
    }

    public final boolean e(boolean z) {
        if (!z) {
            this.e = 0L;
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.e;
        if (j == 0) {
            this.e = jCurrentTimeMillis;
            j = jCurrentTimeMillis;
        }
        long j2 = jCurrentTimeMillis - j;
        long j3 = this.d;
        if (j2 < j3) {
            y14.r("ViewabilityTracker: ContinuousVisibilityBaseTracker", "view continuous visibility < " + j3 + " millis");
            return false;
        }
        y14.r("ViewabilityTracker: ContinuousVisibilityBaseTracker", "view continuous visible for " + j3 + " millis");
        return true;
    }
}
