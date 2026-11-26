package com.posthog.internal;

import defpackage.mc4;
import defpackage.nb6;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.qd4;
import defpackage.tl;
import defpackage.vd4;
import defpackage.wd4;
import defpackage.wz3;
import java.lang.reflect.Type;
import java.text.ParsePosition;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public final class GsonDateTypeAdapter implements nc4<Date>, wd4<Date> {
    public final nb6 a;

    public GsonDateTypeAdapter(nb6 nb6Var) {
        this.a = nb6Var;
    }

    @Override // defpackage.nc4
    public final Date deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        try {
            String strG = pc4Var.g();
            strG.getClass();
            return wz3.c(strG, new ParsePosition(0));
        } catch (Throwable th) {
            this.a.v.a(pc4Var.g() + " isn't a deserializable ISO8601 Date: " + th + '.');
            return null;
        }
    }

    @Override // defpackage.wd4
    public final pc4 serialize(Date date, Type type, vd4 vd4Var) {
        Date date2 = date;
        date2.getClass();
        type.getClass();
        vd4Var.getClass();
        try {
            return new qd4(tl.a(date2));
        } catch (Throwable th) {
            this.a.v.a(date2 + " isn't a serializable ISO8601 Date: " + th + '.');
            return null;
        }
    }
}
