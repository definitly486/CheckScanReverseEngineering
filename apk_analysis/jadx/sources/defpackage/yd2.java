package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class yd2 {
    public static final wb4 c = new wb4(String.valueOf(','));
    public static final yd2 d = new yd2(bn1.b.a, false, new yd2(new bn1.a(), true, new yd2()));
    public final Map<String, a> a;
    public final byte[] b;

    public static final class a {
        public final bn1 a;
        public final boolean b;

        public a(bn1 bn1Var, boolean z) {
            this.a = bn1Var;
            this.b = z;
        }
    }

    public yd2(bn1 bn1Var, boolean z, yd2 yd2Var) {
        String messageEncoding = bn1Var.getMessageEncoding();
        o8.f(!messageEncoding.contains(StringUtils.COMMA), "Comma is currently not allowed in message encoding");
        int size = yd2Var.a.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap(yd2Var.a.containsKey(bn1Var.getMessageEncoding()) ? size : size + 1);
        for (a aVar : yd2Var.a.values()) {
            String messageEncoding2 = aVar.a.getMessageEncoding();
            if (!messageEncoding2.equals(messageEncoding)) {
                linkedHashMap.put(messageEncoding2, new a(aVar.a, aVar.b));
            }
        }
        linkedHashMap.put(messageEncoding, new a(bn1Var, z));
        Map<String, a> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        this.a = mapUnmodifiableMap;
        HashSet hashSet = new HashSet(mapUnmodifiableMap.size());
        for (Map.Entry<String, a> entry : mapUnmodifiableMap.entrySet()) {
            if (entry.getValue().b) {
                hashSet.add(entry.getKey());
            }
        }
        this.b = c.b(Collections.unmodifiableSet(hashSet)).getBytes(Charset.forName("US-ASCII"));
    }

    public yd2() {
        this.a = new LinkedHashMap(0);
        this.b = new byte[0];
    }
}
