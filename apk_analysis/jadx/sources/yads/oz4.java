package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;

/* JADX INFO: loaded from: classes6.dex */
public final class oz4 implements defpackage.dp3 {
    public static final oz4 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        oz4 oz4Var = new oz4();
        a = oz4Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.core.configuration.model.PreloadBlock", oz4Var, 2);
        s96Var.j("adUnitId", false);
        s96Var.j("format", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{ca8.a, qz4.c[1].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        sz4 sz4Var;
        String strDecodeStringElement;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = qz4.c;
        if (du1VarBeginStructure.decodeSequentially()) {
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            sz4Var = (sz4) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, (defpackage.xl2) cl4VarArr[1].getValue(), null);
            i = 3;
        } else {
            boolean z = true;
            int i2 = 0;
            sz4 sz4Var2 = null;
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
                    sz4Var2 = (sz4) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, (defpackage.xl2) cl4VarArr[1].getValue(), sz4Var2);
                    i2 |= 2;
                }
            }
            sz4Var = sz4Var2;
            strDecodeStringElement = strDecodeStringElement2;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new qz4(i, strDecodeStringElement, sz4Var);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        qz4 qz4Var = (qz4) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = qz4.c;
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, qz4Var.a);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 1, (xp7) cl4VarArr[1].getValue(), qz4Var.b);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
