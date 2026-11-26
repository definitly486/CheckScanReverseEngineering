package defpackage;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class wb4 {
    public final String a;

    public static final class a {
        public final wb4 a;

        public a(wb4 wb4Var) {
            this.a = wb4Var;
        }

        public final void a(StringBuilder sb, Iterator it) {
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                sb.append(wb4.c(entry.getKey()));
                sb.append("=");
                sb.append(wb4.c(entry.getValue()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.a.a);
                    Map.Entry entry2 = (Map.Entry) it.next();
                    sb.append(wb4.c(entry2.getKey()));
                    sb.append("=");
                    sb.append(wb4.c(entry2.getValue()));
                }
            }
        }
    }

    public wb4(String str) {
        str.getClass();
        this.a = str;
    }

    public static CharSequence c(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final void a(StringBuilder sb, Iterator it) {
        try {
            if (it.hasNext()) {
                sb.append(c(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.a);
                    sb.append(c(it.next()));
                }
            }
        } catch (IOException e) {
            xg.d(e);
        }
    }

    public final String b(Collection collection) {
        Iterator it = collection.iterator();
        StringBuilder sb = new StringBuilder();
        a(sb, it);
        return sb.toString();
    }
}
