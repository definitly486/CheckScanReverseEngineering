package defpackage;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public final class fpa implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        rpa rpaVarA = rpa.a(obj);
        rpa rpaVarA2 = rpa.a(obj2);
        if (rpaVarA != rpaVarA2) {
            return rpaVarA.compareTo(rpaVarA2);
        }
        int iOrdinal = rpaVarA.ordinal();
        if (iOrdinal == 0) {
            return ((Boolean) obj).compareTo((Boolean) obj2);
        }
        if (iOrdinal == 1) {
            return ((String) obj).compareTo((String) obj2);
        }
        if (iOrdinal == 2) {
            return ((Long) obj).compareTo((Long) obj2);
        }
        if (iOrdinal == 3) {
            return ((Double) obj).compareTo((Double) obj2);
        }
        throw null;
    }
}
