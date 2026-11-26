package yads;

import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class v94 implements defpackage.dp3 {
    public static final v94 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        v94 v94Var = new v94();
        a = v94Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.utils.logger.model.MobileAdsNetworkLog", v94Var, 2);
        s96Var.j("request", false);
        s96Var.j("response", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{aa4.a, defpackage.ev0.a(da4.a)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        ca4 ca4Var;
        fa4 fa4Var;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            ca4Var = (ca4) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, aa4.a, null);
            fa4Var = (fa4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, da4.a, null);
            i = 3;
        } else {
            boolean z = true;
            int i2 = 0;
            ca4Var = null;
            fa4 fa4Var2 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    ca4Var = (ca4) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, aa4.a, ca4Var);
                    i2 |= 1;
                } else {
                    if (iDecodeElementIndex != 1) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    fa4Var2 = (fa4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, da4.a, fa4Var2);
                    i2 |= 2;
                }
            }
            fa4Var = fa4Var2;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new x94(i, ca4Var, fa4Var);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        x94 x94Var = (x94) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 0, aa4.a, x94Var.a);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, da4.a, x94Var.b);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
