package yads;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yv1 {
    public static final yv1 a = new yv1();

    public final boolean a(br0 br0Var, fs2 fs2Var) {
        if (!(br0Var instanceof jq0)) {
            if (br0Var instanceof kq0) {
                return ((Boolean) ((kq0) br0Var).a.A.a(fs2Var)).booleanValue();
            }
            if (br0Var instanceof zp0) {
                return ((Boolean) ((zp0) br0Var).a.H.a(fs2Var)).booleanValue();
            }
            if (br0Var instanceof xp0) {
                return ((Boolean) ((xp0) br0Var).a.E.a(fs2Var)).booleanValue();
            }
            return false;
        }
        List list = ((jq0) br0Var).a.F;
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Boolean) ((x72) it.next()).e.a(fs2Var)).booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
