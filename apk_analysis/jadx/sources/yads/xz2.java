package yads;

import defpackage.u96;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
public final class xz2 extends u13 {
    public static final xz2 a = new xz2();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        w13 w13Var = new w13(xo2.DATETIME, 0);
        xo2 xo2Var = xo2.STRING;
        b = u96.i(w13Var, new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2Var;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        fd0 fd0Var = (fd0) obj;
        Object obj2 = list.get(1);
        obj2.getClass();
        Object obj3 = list.get(2);
        obj3.getClass();
        Date date = new Date(fd0Var.b - ((long) fd0Var.c.getRawOffset()));
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat((String) obj2, new Locale.Builder().setLanguageTag((String) obj3).build());
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        return simpleDateFormat.format(date);
    }

    @Override // yads.u13
    public final String c() {
        return "formatDateAsLocalWithLocale";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return d;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}
