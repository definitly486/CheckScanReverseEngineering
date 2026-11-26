package defpackage;

import java.lang.Enum;
import java.util.Arrays;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public final class l03<T extends Enum<T>> implements df4<T> {
    public final T[] a;
    public f03 b;
    public final fh8 c;

    public l03(final String str, T[] tArr) {
        tArr.getClass();
        this.a = tArr;
        this.c = new fh8(new ll3() { // from class: k03
            @Override // defpackage.ll3
            public final Object invoke() {
                l03 l03Var = this.b;
                f03 f03Var = l03Var.b;
                if (f03Var == null) {
                    Enum[] enumArr = l03Var.a;
                    f03Var = new f03(str, enumArr.length);
                    for (Enum r0 : enumArr) {
                        f03Var.j(r0.name(), false);
                    }
                }
                return f03Var;
            }
        });
    }

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        int iDecodeEnum = ud2Var.decodeEnum(getDescriptor());
        T[] tArr = this.a;
        if (iDecodeEnum >= 0 && iDecodeEnum < tArr.length) {
            return tArr[iDecodeEnum];
        }
        throw new SerializationException(iDecodeEnum + " is not among valid " + getDescriptor().h() + " enum values, values size is " + tArr.length);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return (mp7) this.c.getValue();
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        Enum r5 = (Enum) obj;
        r5.getClass();
        T[] tArr = this.a;
        int iQ = yr.Q(r5, tArr);
        if (iQ != -1) {
            ux2Var.encodeEnum(getDescriptor(), iQ);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(r5);
        String strH = getDescriptor().h();
        String string = Arrays.toString(tArr);
        string.getClass();
        sb.append(" is not a valid enum ");
        sb.append(strH);
        sb.append(", must be one of ");
        sb.append(string);
        throw new SerializationException(sb.toString());
    }

    public final String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().h() + '>';
    }
}
