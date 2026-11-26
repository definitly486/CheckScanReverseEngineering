package androidx.constraintlayout.core.dsl;

import defpackage.kv2;
import defpackage.o2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Keys {
    public void append(StringBuilder sb, String str, float f) {
        if (Float.isNaN(f)) {
            return;
        }
        sb.append(str);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        sb.append(f);
        sb.append(",\n");
    }

    public String unpack(String[] strArr) {
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (i < strArr.length) {
            sb.append(i == 0 ? "'" : ",'");
            sb.append(strArr[i]);
            sb.append("'");
            i++;
        }
        sb.append("]");
        return sb.toString();
    }

    public void append(StringBuilder sb, String str, String str2) {
        if (str2 != null) {
            kv2.c(sb, str, ":'", str2, "',\n");
        }
    }

    public void append(StringBuilder sb, String str, int i) {
        if (i != Integer.MIN_VALUE) {
            o2.e(sb, str, ":'", i, "',\n");
        }
    }

    public void append(StringBuilder sb, String str, String[] strArr) {
        if (strArr != null) {
            sb.append(str);
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(unpack(strArr));
            sb.append(",\n");
        }
    }

    public void append(StringBuilder sb, String str, float[] fArr) {
        if (fArr != null) {
            sb.append(str);
            sb.append("percentWidth:");
            sb.append(Arrays.toString(fArr));
            sb.append(",\n");
        }
    }
}
