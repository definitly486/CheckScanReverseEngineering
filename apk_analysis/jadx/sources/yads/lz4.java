package yads;

import defpackage.mp7;
import defpackage.pq2;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class lz4 implements defpackage.dp3 {
    public static final lz4 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        lz4 lz4Var = new lz4();
        a = lz4Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationRevenue", lz4Var, 1);
        s96Var.j("value", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{pq2.a};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        double dDecodeDoubleElement;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        int i = 1;
        if (du1VarBeginStructure.decodeSequentially()) {
            dDecodeDoubleElement = du1VarBeginStructure.decodeDoubleElement(s96Var, 0);
        } else {
            double dDecodeDoubleElement2 = 0.0d;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else {
                    if (iDecodeElementIndex != 0) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    dDecodeDoubleElement2 = du1VarBeginStructure.decodeDoubleElement(s96Var, 0);
                    i2 = 1;
                }
            }
            dDecodeDoubleElement = dDecodeDoubleElement2;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new nz4(i, dDecodeDoubleElement);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeDoubleElement(s96Var, 0, ((nz4) obj).a);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
