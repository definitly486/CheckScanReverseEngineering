package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class xe0 implements defpackage.dp3 {
    public static final xe0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        xe0 xe0Var = new xe0();
        a = xe0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelBiddingParameter", xe0Var, 2);
        s96Var.j("name", false);
        s96Var.j("value", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{ca8Var, ca8Var};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        String strDecodeStringElement;
        String strDecodeStringElement2;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
            i = 3;
        } else {
            String strDecodeStringElement3 = null;
            String strDecodeStringElement4 = null;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    i2 |= 1;
                } else {
                    if (iDecodeElementIndex != 1) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    strDecodeStringElement4 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                    i2 |= 2;
                }
            }
            strDecodeStringElement = strDecodeStringElement3;
            strDecodeStringElement2 = strDecodeStringElement4;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new ze0(i, strDecodeStringElement, strDecodeStringElement2);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        ze0 ze0Var = (ze0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, ze0Var.a);
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, ze0Var.b);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
