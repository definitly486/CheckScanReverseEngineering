package yads;

import android.database.SQLException;
import defpackage.j59;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class zq5 {
    public static final String a(LinkedHashSet linkedHashSet) {
        return defpackage.qn1.a0(linkedHashSet, "', '", "('", "')", 0, null, 56);
    }

    public static final j59 b(List list) {
        throw new SQLException("Insertion failed for raw jsons with ids: ".concat(defpackage.qn1.a0(list, null, null, null, 0, null, 63)));
    }

    public static yq5 a(List list) {
        return new yq5(list, new defpackage.os(6));
    }
}
