package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.pq2;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class xh0 implements defpackage.dp3 {
    public static final xh0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        xh0 xh0Var = new xh0();
        a = xh0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelWaterfallCpmFloor", xh0Var, 2);
        s96Var.j("network_ad_unit_id", false);
        s96Var.j("min_cpm", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{ca8.a, pq2.a};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        String strDecodeStringElement;
        double dDecodeDoubleElement;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            dDecodeDoubleElement = du1VarBeginStructure.decodeDoubleElement(s96Var, 1);
            i = 3;
        } else {
            boolean z = true;
            int i2 = 0;
            double dDecodeDoubleElement2 = 0.0d;
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
                    dDecodeDoubleElement2 = du1VarBeginStructure.decodeDoubleElement(s96Var, 1);
                    i2 |= 2;
                }
            }
            strDecodeStringElement = strDecodeStringElement2;
            dDecodeDoubleElement = dDecodeDoubleElement2;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new zh0(i, strDecodeStringElement, dDecodeDoubleElement);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        zh0 zh0Var = (zh0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, zh0Var.a);
        gu1VarBeginStructure.encodeDoubleElement(s96Var, 1, zh0Var.b);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
