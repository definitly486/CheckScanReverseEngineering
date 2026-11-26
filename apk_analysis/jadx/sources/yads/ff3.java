package yads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ff3 {
    public final Map a = Collections.synchronizedMap(new LinkedHashMap());
    public final Map b = Collections.synchronizedMap(new LinkedHashMap());

    public final String a(String str, String str2) {
        return (String) this.a.get(new defpackage.b36(str, str2));
    }
}
