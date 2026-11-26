package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class oy4 implements defpackage.dp3 {
    public static final oy4 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        oy4 oy4Var = new oy4();
        a = oy4Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationInfo", oy4Var, 5);
        s96Var.j("adapter", false);
        s96Var.j("network_winner", false);
        s96Var.j("revenue", false);
        s96Var.j("result", false);
        s96Var.j("network_ad_info", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{ca8Var, defpackage.ev0.a(wy4.a), defpackage.ev0.a(lz4.a), gz4.a, defpackage.ev0.a(ca8Var)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        String strDecodeStringElement;
        iz4 iz4Var;
        String str;
        nz4 nz4Var;
        yy4 yy4Var;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        Object obj = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            yy4 yy4Var2 = (yy4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, wy4.a, null);
            nz4 nz4Var2 = (nz4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, lz4.a, null);
            iz4Var = (iz4) du1VarBeginStructure.decodeSerializableElement(s96Var, 3, gz4.a, null);
            str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8.a, null);
            nz4Var = nz4Var2;
            yy4Var = yy4Var2;
            i = 31;
        } else {
            boolean z = true;
            int i2 = 0;
            strDecodeStringElement = null;
            iz4 iz4Var2 = null;
            String str2 = null;
            nz4 nz4Var3 = null;
            yy4 yy4Var3 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                obj = obj;
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    yy4Var3 = (yy4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, wy4.a, yy4Var3);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    nz4Var3 = (nz4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, lz4.a, nz4Var3);
                    i2 |= 4;
                } else if (iDecodeElementIndex == 3) {
                    iz4Var2 = (iz4) du1VarBeginStructure.decodeSerializableElement(s96Var, 3, gz4.a, iz4Var2);
                    i2 |= 8;
                } else {
                    if (iDecodeElementIndex != 4) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return obj;
                    }
                    str2 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8.a, str2);
                    i2 |= 16;
                }
            }
            iz4Var = iz4Var2;
            str = str2;
            nz4Var = nz4Var3;
            yy4Var = yy4Var3;
            i = i2;
        }
        String str3 = strDecodeStringElement;
        du1VarBeginStructure.endStructure(s96Var);
        return new qy4(i, str3, yy4Var, nz4Var, iz4Var, str);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        qy4 qy4Var = (qy4) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, qy4Var.a);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, wy4.a, qy4Var.b);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, lz4.a, qy4Var.c);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 3, gz4.a, qy4Var.d);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 4, ca8.a, qy4Var.e);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
