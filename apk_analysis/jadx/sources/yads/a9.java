package yads;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public enum a9 {
    BROWSER_CONTROL_PANEL_HEIGHT,
    BROWSER_CONTROL_PANEL_BUTTON_PADDING,
    BROWSER_CONTROL_PANEL_TITLE_TEXT_SIZE;

    public static final z8 c;
    public static final Map d;
    public final ip0 b = new ip0();

    static {
        a9 a9Var = BROWSER_CONTROL_PANEL_HEIGHT;
        a9 a9Var2 = BROWSER_CONTROL_PANEL_BUTTON_PADDING;
        a9 a9Var3 = BROWSER_CONTROL_PANEL_TITLE_TEXT_SIZE;
        c = new z8();
        d = defpackage.n05.f(new defpackage.b36(z8.a("values_dimen_%s", a9Var.name()), 48), new defpackage.b36(z8.a("values_dimen_%s_sw600dp", a9Var.name()), 56), new defpackage.b36(z8.a("values_dimen_%s", a9Var2.name()), 15), new defpackage.b36(z8.a("values_dimen_%s_sw600dp", a9Var2.name()), 17), new defpackage.b36(z8.a("values_dimen_%s", a9Var3.name()), 19), new defpackage.b36(z8.a("values_dimen_%s_sw600dp", a9Var3.name()), 23));
    }

    a9() {
    }

    public final int a(Context context) {
        try {
            z8 z8Var = c;
            StringBuilder sb = new StringBuilder(name());
            int iD = eh6.d(context);
            int iB = eh6.b(context);
            if (iD > iB) {
                iD = iB;
            }
            if (iD >= 600) {
                sb.append("_sw600dp");
            }
            String string = sb.toString();
            z8Var.getClass();
            Integer num = (Integer) d.get(z8.a("values_dimen_%s", string));
            if (num != null) {
                return num.intValue();
            }
        } catch (Exception unused) {
        }
        try {
            z8 z8Var2 = c;
            String strName = name();
            z8Var2.getClass();
            Integer num2 = (Integer) d.get(z8.a("values_dimen_%s", strName));
            if (num2 != null) {
                return num2.intValue();
            }
            return 0;
        } catch (Exception unused2) {
            return 0;
        }
    }

    @Override // java.lang.Enum
    public final String toString() {
        return name();
    }
}
