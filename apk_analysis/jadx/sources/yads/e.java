package yads;

import defpackage.yr;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e extends u13 {
    public static final Set c = yr.k0(new Character[]{'#', '0', ',', '.'});
    public final xo2 a = xo2.STRING;
    public final boolean b = true;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Number numberB = b(list.get(0));
        Object obj = list.get(1);
        obj.getClass();
        String str = (String) obj;
        Locale localeC = c(list);
        if (str.length() == 0) {
            a(uo2Var, list, (Exception) null);
            throw null;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!c.contains(Character.valueOf(str.charAt(i)))) {
                a(uo2Var, list, (Exception) null);
                throw null;
            }
        }
        try {
            return a(new DecimalFormat(str, DecimalFormatSymbols.getInstance(localeC)), numberB);
        } catch (Exception e) {
            a(uo2Var, list, e);
            throw null;
        }
    }

    public abstract String a(DecimalFormat decimalFormat, Number number);

    public abstract Number b(Object obj);

    public abstract Locale c(List list);

    @Override // yads.u13
    public final xo2 d() {
        return this.a;
    }

    @Override // yads.u13
    public final boolean e() {
        return this.b;
    }

    public final void a(uo2 uo2Var, List list, Exception exc) {
        throw new vo2(exc, defpackage.me0.c("Failed to evaluate [", a(list, uo2Var instanceof no2), "]. Incorrect format pattern."));
    }

    public final String a(List list, boolean z) {
        return defpackage.qn1.a0(defpackage.qn1.O(list, z ? 1 : 0), null, defpackage.ni0.c(c(), "("), ")", 0, new defpackage.t2(4), 25);
    }

    public static final CharSequence a(Object obj) {
        return wo2.b(obj);
    }
}
