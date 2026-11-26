package yads;

import android.os.Bundle;
import defpackage.eh;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class m06 implements kv {
    public static final jv d = new eh();
    public final f06 b;
    public final oe3 c;

    public m06(f06 f06Var, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= f06Var.b)) {
            defpackage.v93.b();
            throw null;
        }
        this.b = f06Var;
        this.c = oe3.a(list);
    }

    public static m06 a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(Integer.toString(0, 36));
        bundle2.getClass();
        f06 f06Var = (f06) f06.g.a(bundle2);
        int[] intArray = bundle.getIntArray(Integer.toString(1, 36));
        intArray.getClass();
        return new m06(f06Var, intArray.length == 0 ? Collections.EMPTY_LIST : new aq3(intArray));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && m06.class == obj.getClass()) {
            m06 m06Var = (m06) obj;
            if (this.b.equals(m06Var.b) && this.c.equals(m06Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.c.hashCode() * 31) + this.b.hashCode();
    }
}
