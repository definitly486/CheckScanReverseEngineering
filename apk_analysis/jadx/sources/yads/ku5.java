package yads;

import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
public final class ku5 {
    public final String a() {
        String property;
        String property2 = null;
        try {
            property = System.getProperty("http.agent");
        } catch (Exception unused) {
            property = null;
        }
        if (property != null && property.length() != 0) {
            return property;
        }
        StringBuilder sb = new StringBuilder(64);
        sb.append("Dalvik/");
        try {
            property2 = System.getProperty("java.vm.version");
        } catch (Exception unused2) {
        }
        if (property2 == null || property2.length() == 0) {
            property2 = "1.0.0";
        }
        sb.append(property2);
        sb.append(" (Linux; U; Android ");
        String str = Build.VERSION.RELEASE;
        if (str.length() == 0) {
            str = "1.0";
        }
        sb.append(str);
        if ("REL".equals(Build.VERSION.CODENAME)) {
            String str2 = Build.MODEL;
            if (str2.length() > 0) {
                sb.append("; ");
                sb.append(str2);
            }
        }
        String str3 = Build.ID;
        if (str3.length() > 0) {
            sb.append(" Build/");
            sb.append(str3);
        }
        sb.append(")");
        return sb.toString();
    }
}
