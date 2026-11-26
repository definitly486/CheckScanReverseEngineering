package yads;

import android.os.Handler;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class gu5 {
    public static final ArrayList b = new ArrayList(50);
    public final Handler a;

    public gu5(Handler handler) {
        this.a = handler;
    }

    public static fu5 a() {
        fu5 fu5Var;
        ArrayList arrayList = b;
        synchronized (arrayList) {
            try {
                fu5Var = arrayList.isEmpty() ? new fu5() : (fu5) arrayList.remove(arrayList.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fu5Var;
    }

    public final fu5 a(int i, Object obj) {
        fu5 fu5VarA = a();
        fu5VarA.a = this.a.obtainMessage(i, obj);
        return fu5VarA;
    }
}
