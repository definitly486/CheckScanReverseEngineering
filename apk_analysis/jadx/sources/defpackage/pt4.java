package defpackage;

import java.time.LocalDateTime;
import java.time.format.DateTimeParseException;
import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes5.dex */
public final class pt4 implements df4<jt4> {
    public static final pt4 a = new pt4();
    public static final fg6 b = rp7.a("kotlinx.datetime.LocalDateTime", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        jt4.a aVar = jt4.Companion;
        String strDecodeString = ud2Var.decodeString();
        kt4 kt4Var = jt4.b.a;
        aVar.getClass();
        strDecodeString.getClass();
        kt4Var.getClass();
        try {
            String string = strDecodeString.toString();
            string.getClass();
            return new jt4(LocalDateTime.parse(ex0.e(12, string.toString())));
        } catch (DateTimeParseException e) {
            throw new DateTimeFormatException(e);
        }
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        jt4 jt4Var = (jt4) obj;
        jt4Var.getClass();
        ux2Var.encodeString(jt4Var.toString());
    }
}
