package yads;

import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class jy4 implements defpackage.dp3 {
    public static final jy4 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        jy4 jy4Var = new jy4();
        a = jy4Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationData", jy4Var, 1);
        s96Var.j("prefetched_mediation_data", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{ly4.b[0].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = ly4.b;
        int i = 1;
        if (du1VarBeginStructure.decodeSequentially()) {
            list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, (defpackage.xl2) cl4VarArr[0].getValue(), null);
        } else {
            boolean z = true;
            int i2 = 0;
            List list2 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else {
                    if (iDecodeElementIndex != 0) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, (defpackage.xl2) cl4VarArr[0].getValue(), list2);
                    i2 = 1;
                }
            }
            list = list2;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new ly4(i, list);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 0, (xp7) ly4.b[0].getValue(), ((ly4) obj).a);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
