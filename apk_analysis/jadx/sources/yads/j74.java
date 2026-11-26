package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class j74 implements defpackage.dp3 {
    public static final j74 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        j74 j74Var = new j74();
        a = j74Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.base.model.mediation.prefetch.config.MediationPrefetchNetwork", j74Var, 2);
        s96Var.j("adapter", false);
        s96Var.j("network_data", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{ca8.a, l74.d[1].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        Map map;
        String strDecodeStringElement;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = l74.d;
        if (du1VarBeginStructure.decodeSequentially()) {
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            map = (Map) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, (defpackage.xl2) cl4VarArr[1].getValue(), null);
            i = 3;
        } else {
            boolean z = true;
            int i2 = 0;
            Map map2 = null;
            String strDecodeStringElement2 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    i2 |= 1;
                } else {
                    if (iDecodeElementIndex != 1) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    map2 = (Map) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, (defpackage.xl2) cl4VarArr[1].getValue(), map2);
                    i2 |= 2;
                }
            }
            map = map2;
            strDecodeStringElement = strDecodeStringElement2;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new l74(i, strDecodeStringElement, map);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        l74 l74Var = (l74) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = l74.d;
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, l74Var.b);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 1, (xp7) cl4VarArr[1].getValue(), l74Var.c);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
