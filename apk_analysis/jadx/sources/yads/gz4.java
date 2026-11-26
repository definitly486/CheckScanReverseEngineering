package yads;

import androidx.core.app.NotificationCompat;
import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;

/* JADX INFO: loaded from: classes6.dex */
public final class gz4 implements defpackage.dp3 {
    public static final gz4 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        gz4 gz4Var = new gz4();
        a = gz4Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationResult", gz4Var, 3);
        s96Var.j(NotificationCompat.CATEGORY_STATUS, false);
        s96Var.j("error_message", false);
        s96Var.j("status_code", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{iz4.d[0].getValue(), defpackage.ev0.a(ca8.a), defpackage.ev0.a(defpackage.z74.a)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        kz4 kz4Var;
        String str;
        Integer num;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = iz4.d;
        if (du1VarBeginStructure.decodeSequentially()) {
            kz4Var = (kz4) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, (defpackage.xl2) cl4VarArr[0].getValue(), null);
            str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8.a, null);
            num = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, defpackage.z74.a, null);
            i = 7;
        } else {
            boolean z = true;
            int i2 = 0;
            kz4 kz4Var2 = null;
            String str2 = null;
            Integer num2 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    kz4Var2 = (kz4) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, (defpackage.xl2) cl4VarArr[0].getValue(), kz4Var2);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    str2 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8.a, str2);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    num2 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, defpackage.z74.a, num2);
                    i2 |= 4;
                }
            }
            kz4Var = kz4Var2;
            str = str2;
            num = num2;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new iz4(i, kz4Var, str, num);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        iz4 iz4Var = (iz4) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 0, (xp7) iz4.d[0].getValue(), iz4Var.a);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, ca8.a, iz4Var.b);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, defpackage.z74.a, iz4Var.c);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
