package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class md0 implements defpackage.dp3 {
    public static final md0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        md0 md0Var = new md0();
        a = md0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAdUnit", md0Var, 4);
        s96Var.j("name", false);
        s96Var.j("ad_type", false);
        s96Var.j("ad_unit_id", false);
        s96Var.j("mediation", true);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.df4 df4VarA = defpackage.ev0.a(ud0.a);
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{ca8Var, ca8Var, ca8Var, df4VarA};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        String strDecodeStringElement;
        wd0 wd0Var;
        String str;
        String str2;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            String strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
            String strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
            wd0Var = (wd0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ud0.a, null);
            str = strDecodeStringElement3;
            str2 = strDecodeStringElement2;
            i = 15;
        } else {
            boolean z = true;
            int i2 = 0;
            strDecodeStringElement = null;
            wd0 wd0Var2 = null;
            String strDecodeStringElement4 = null;
            String strDecodeStringElement5 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    strDecodeStringElement5 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    strDecodeStringElement4 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
                    i2 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    wd0Var2 = (wd0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ud0.a, wd0Var2);
                    i2 |= 8;
                }
            }
            wd0Var = wd0Var2;
            str = strDecodeStringElement4;
            str2 = strDecodeStringElement5;
            i = i2;
        }
        String str3 = strDecodeStringElement;
        du1VarBeginStructure.endStructure(s96Var);
        return new od0(i, str3, str2, str, wd0Var);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        od0 od0Var = (od0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, od0Var.a);
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, od0Var.b);
        gu1VarBeginStructure.encodeStringElement(s96Var, 2, od0Var.c);
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 3) || od0Var.d != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, ud0.a, od0Var.d);
        }
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
