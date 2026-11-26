package yads;

import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
public final class l13 {
    public final b13 a = new b13();

    public final String a(n8 n8Var) {
        Set setEntrySet;
        this.a.getClass();
        a13 a13VarA = b13.a(n8Var);
        List list = a13VarA.e;
        String strA0 = "";
        String strA1 = list != null ? defpackage.qn1.a0(defpackage.qn1.m0(list), StringUtils.COMMA, null, null, 0, null, 62) : "";
        LinkedHashMap linkedHashMap = a13VarA.f;
        if (linkedHashMap != null && (setEntrySet = new TreeMap(linkedHashMap).entrySet()) != null) {
            strA0 = defpackage.qn1.a0(setEntrySet, ";", null, null, 0, new defpackage.oi5(2), 30);
        }
        return defpackage.qn1.a0(u96.i(a13VarA.a, a13VarA.b, a13VarA.c, a13VarA.d, strA1, strA0, a13VarA.g), "_", null, null, 0, null, 62);
    }

    public static final CharSequence a(Map.Entry entry) {
        return entry.getKey() + "=" + entry.getValue();
    }
}
