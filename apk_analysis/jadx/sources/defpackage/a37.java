package defpackage;

import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class a37 {
    public final ez3 a;
    public final iv3 b;

    public static class a {
        public ez3 a;
        public iv3.a b;

        public final void a(String str, String str2) {
            ArrayList arrayList = this.b.a;
            if (str.isEmpty()) {
                fg.c("name is empty");
                return;
            }
            int length = str.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt <= 31 || cCharAt >= 127) {
                    fg.c(String.format(Locale.US, "Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i2), str));
                    return;
                }
            }
            if (str2 == null) {
                fg.c("value == null");
                return;
            }
            int length2 = str2.length();
            for (int i3 = 0; i3 < length2; i3++) {
                char cCharAt2 = str2.charAt(i3);
                if (cCharAt2 <= 31 || cCharAt2 >= 127) {
                    fg.c(String.format(Locale.US, "Unexpected char %#04x at %d in header value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i3), str2));
                    return;
                }
            }
            while (i < arrayList.size()) {
                if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                    arrayList.remove(i);
                    arrayList.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            arrayList.add(str);
            arrayList.add(str2.trim());
        }
    }

    public a37(a aVar) {
        this.a = aVar.a;
        iv3.a aVar2 = aVar.b;
        aVar2.getClass();
        this.b = new iv3(aVar2);
    }

    public final String toString() {
        return "Request{url=" + this.a + '}';
    }
}
