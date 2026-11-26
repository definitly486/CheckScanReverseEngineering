package defpackage;

import java.time.format.DateTimeFormatter;

/* JADX INFO: loaded from: classes5.dex */
public final class xa9 implements df4<da9> {
    public static final xa9 a = new xa9();
    public static final fg6 b = rp7.a("kotlinx.datetime.UtcOffset", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        da9.a aVar = da9.Companion;
        String strDecodeString = ud2Var.decodeString();
        fh8 fh8Var = ha9.a;
        fa9 fa9Var = (fa9) fh8Var.getValue();
        aVar.getClass();
        strDecodeString.getClass();
        fa9Var.getClass();
        if (fa9Var == ((fa9) fh8Var.getValue())) {
            DateTimeFormatter dateTimeFormatter = (DateTimeFormatter) ua9.a.getValue();
            dateTimeFormatter.getClass();
            return ua9.a(strDecodeString, dateTimeFormatter);
        }
        if (fa9Var == ((fa9) ha9.b.getValue())) {
            DateTimeFormatter dateTimeFormatter2 = (DateTimeFormatter) ua9.b.getValue();
            dateTimeFormatter2.getClass();
            return ua9.a(strDecodeString, dateTimeFormatter2);
        }
        if (fa9Var != ((fa9) ha9.c.getValue())) {
            return fa9Var.a(strDecodeString);
        }
        DateTimeFormatter dateTimeFormatter3 = (DateTimeFormatter) ua9.c.getValue();
        dateTimeFormatter3.getClass();
        return ua9.a(strDecodeString, dateTimeFormatter3);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        da9 da9Var = (da9) obj;
        da9Var.getClass();
        ux2Var.encodeString(da9Var.toString());
    }
}
