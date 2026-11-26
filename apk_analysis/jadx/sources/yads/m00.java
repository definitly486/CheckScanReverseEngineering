package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class m00 {
    public final t5 a = new t5();
    public final iu4 b = new iu4();
    public final s5 c = s5.CLIENT_BIDDING_DATA_LOADING;

    public final Long a() {
        List listT0;
        Object next;
        t5 t5Var = this.a;
        synchronized (t5Var.a) {
            listT0 = defpackage.qn1.t0(t5Var.d);
        }
        Iterator it = listT0.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((r5) next).a != this.c);
        r5 r5Var = (r5) next;
        if (r5Var == null) {
            return null;
        }
        Object obj = r5Var.b.get(TypedValues.TransitionType.S_DURATION);
        if (obj instanceof Long) {
            return (Long) obj;
        }
        return null;
    }
}
