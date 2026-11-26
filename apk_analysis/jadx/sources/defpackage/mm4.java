package defpackage;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class mm4 implements lv3 {
    public final Map<String, List<lm4>> b;
    public volatile Map<String, String> c;

    public static final class a {
        public static final Map<String, List<lm4>> b;
        public Map<String, List<lm4>> a = b;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i = 0; i < length; i++) {
                    char cCharAt = property.charAt(i);
                    if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                        sb.append(cCharAt);
                    } else {
                        sb.append('?');
                    }
                }
                property = sb.toString();
            }
            HashMap map = new HashMap(2);
            if (!TextUtils.isEmpty(property)) {
                map.put("User-Agent", Collections.singletonList(new b(property)));
            }
            b = Collections.unmodifiableMap(map);
        }
    }

    public static final class b implements lm4 {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        @Override // defpackage.lm4
        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.a.equals(((b) obj).a);
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.d(new StringBuilder("StringHeaderFactory{value='"), this.a, "'}");
        }
    }

    public mm4(Map<String, List<lm4>> map) {
        this.b = Collections.unmodifiableMap(map);
    }

    @Override // defpackage.lv3
    public final Map<String, String> a() {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        this.c = Collections.unmodifiableMap(b());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }

    public final HashMap b() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<lm4>> entry : this.b.entrySet()) {
            List<lm4> value = entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = value.size();
            for (int i = 0; i < size; i++) {
                String strA = value.get(i).a();
                if (!TextUtils.isEmpty(strA)) {
                    sb.append(strA);
                    if (i != value.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String string = sb.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put(entry.getKey(), string);
            }
        }
        return map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof mm4) {
            return this.b.equals(((mm4) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return g2.c(new StringBuilder("LazyHeaders{headers="), this.b, '}');
    }
}
