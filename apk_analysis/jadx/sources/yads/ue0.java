package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes6.dex */
public final class ue0 implements defpackage.dp3 {
    public static final ue0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        ue0 ue0Var = new ue0();
        a = ue0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.local.model.DebugPanelAppData", ue0Var, 4);
        s96Var.j(CommonUrlParts.APP_ID, false);
        s96Var.j("app_version", false);
        s96Var.j("system", false);
        s96Var.j("api_level", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{ca8Var, ca8Var, ca8Var, ca8Var};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        String str;
        String strDecodeStringElement;
        String str2;
        String str3;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            String strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            String strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
            String strDecodeStringElement4 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
            str = strDecodeStringElement2;
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 3);
            str2 = strDecodeStringElement4;
            str3 = strDecodeStringElement3;
            i = 15;
        } else {
            String strDecodeStringElement5 = null;
            String strDecodeStringElement6 = null;
            String strDecodeStringElement7 = null;
            String strDecodeStringElement8 = null;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement5 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    strDecodeStringElement8 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    strDecodeStringElement7 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
                    i2 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    strDecodeStringElement6 = du1VarBeginStructure.decodeStringElement(s96Var, 3);
                    i2 |= 8;
                }
            }
            str = strDecodeStringElement5;
            strDecodeStringElement = strDecodeStringElement6;
            str2 = strDecodeStringElement7;
            str3 = strDecodeStringElement8;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new we0(i, str, str3, str2, strDecodeStringElement);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        we0 we0Var = (we0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, we0Var.a);
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, we0Var.b);
        gu1VarBeginStructure.encodeStringElement(s96Var, 2, we0Var.c);
        gu1VarBeginStructure.encodeStringElement(s96Var, 3, we0Var.d);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
