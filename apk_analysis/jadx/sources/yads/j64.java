package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class j64 implements defpackage.dp3 {
    public static final j64 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        j64 j64Var = new j64();
        a = j64Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.core.initializer.validation.adapters.MediationNetworkData.MediationAdapterData", j64Var, 3);
        s96Var.j("format", false);
        s96Var.j("version", false);
        s96Var.j("isIntegrated", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{ca8Var, defpackage.ev0.a(ca8Var), defpackage.gs0.a};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        String strDecodeStringElement;
        boolean zDecodeBooleanElement;
        String str;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8.a, null);
            zDecodeBooleanElement = du1VarBeginStructure.decodeBooleanElement(s96Var, 2);
            i = 7;
        } else {
            boolean z = true;
            boolean zDecodeBooleanElement2 = false;
            int i2 = 0;
            strDecodeStringElement = null;
            String str2 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    str2 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8.a, str2);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    zDecodeBooleanElement2 = du1VarBeginStructure.decodeBooleanElement(s96Var, 2);
                    i2 |= 4;
                }
            }
            zDecodeBooleanElement = zDecodeBooleanElement2;
            str = str2;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new l64(i, strDecodeStringElement, str, zDecodeBooleanElement);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        l64 l64Var = (l64) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, l64Var.a);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, ca8.a, l64Var.b);
        gu1VarBeginStructure.encodeBooleanElement(s96Var, 2, l64Var.c);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
