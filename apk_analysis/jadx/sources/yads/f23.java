package yads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class f23 {
    public static final Pattern c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int a = -1;
    public int b = -1;

    public final void a(h84 h84Var) {
        int i = 0;
        while (true) {
            g84[] g84VarArr = h84Var.b;
            if (i >= g84VarArr.length) {
                return;
            }
            g84 g84Var = g84VarArr[i];
            if (g84Var instanceof b40) {
                b40 b40Var = (b40) g84Var;
                if ("iTunSMPB".equals(b40Var.d) && a(b40Var.e)) {
                    return;
                }
            } else if (g84Var instanceof bp3) {
                bp3 bp3Var = (bp3) g84Var;
                if ("com.apple.iTunes".equals(bp3Var.c) && "iTunSMPB".equals(bp3Var.d) && a(bp3Var.e)) {
                    return;
                }
            } else {
                continue;
            }
            i++;
        }
    }

    public final boolean a(String str) {
        Matcher matcher = c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            int i = u56.a;
            int i2 = Integer.parseInt(strGroup, 16);
            int i3 = Integer.parseInt(matcher.group(2), 16);
            if (i2 <= 0 && i3 <= 0) {
                return false;
            }
            this.a = i2;
            this.b = i3;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
