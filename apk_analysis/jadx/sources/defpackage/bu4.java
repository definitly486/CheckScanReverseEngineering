package defpackage;

import java.time.LocalTime;
import java.time.format.DateTimeParseException;
import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes5.dex */
public final class bu4 implements df4<ut4> {
    public static final bu4 a = new bu4();
    public static final fg6 b = rp7.a("kotlinx.datetime.LocalTime", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        ut4.a aVar = ut4.Companion;
        String strDecodeString = ud2Var.decodeString();
        fh8 fh8Var = au4.a;
        vt4 vt4Var = (vt4) fh8Var.getValue();
        aVar.getClass();
        strDecodeString.getClass();
        vt4Var.getClass();
        if (vt4Var != ((vt4) fh8Var.getValue())) {
            return vt4Var.a(strDecodeString);
        }
        try {
            return new ut4(LocalTime.parse(strDecodeString));
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
        ut4 ut4Var = (ut4) obj;
        ut4Var.getClass();
        ux2Var.encodeString(ut4Var.toString());
    }
}
