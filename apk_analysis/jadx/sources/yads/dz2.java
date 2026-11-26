package yads;

import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class dz2 implements defpackage.dp3 {
    public static final dz2 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        dz2 dz2Var = new dz2();
        a = dz2Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.base.model.fonts.FontParameters", dz2Var, 1);
        s96Var.j("urls", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{defpackage.ev0.a(lz2.a)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        nz2 nz2Var;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        int i = 1;
        if (du1VarBeginStructure.decodeSequentially()) {
            nz2Var = (nz2) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, lz2.a, null);
        } else {
            boolean z = true;
            int i2 = 0;
            nz2Var = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else {
                    if (iDecodeElementIndex != 0) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    nz2Var = (nz2) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, lz2.a, nz2Var);
                    i2 = 1;
                }
            }
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new fz2(i, nz2Var);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 0, lz2.a, ((fz2) obj).a);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
