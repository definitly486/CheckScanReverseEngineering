package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class iv3 {
    public final String[] a;

    public static final class a {
        public final ArrayList a = new ArrayList(20);
    }

    public iv3(a aVar) {
        ArrayList arrayList = aVar.a;
        this.a = (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        String[] strArr = this.a;
        int length = strArr.length / 2;
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            String str = null;
            sb.append((i2 < 0 || i2 >= strArr.length) ? null : strArr[i2]);
            sb.append(": ");
            int i3 = i2 + 1;
            if (i3 >= 0 && i3 < strArr.length) {
                str = strArr[i3];
            }
            sb.append(str);
            sb.append("\n");
        }
        return sb.toString();
    }
}
