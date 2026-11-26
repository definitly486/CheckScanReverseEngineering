package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class lg0 implements defpackage.dp3 {
    public static final lg0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        lg0 lg0Var = new lg0();
        a = lg0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.local.model.DebugPanelSdkData", lg0Var, 3);
        s96Var.j("version", false);
        s96Var.j("is_integrated", false);
        s96Var.j("integration_messages", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{ca8.a, defpackage.gs0.a, ng0.d[2].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        String strDecodeStringElement;
        int i;
        boolean zDecodeBooleanElement;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = ng0.d;
        if (du1VarBeginStructure.decodeSequentially()) {
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            zDecodeBooleanElement = du1VarBeginStructure.decodeBooleanElement(s96Var, 1);
            list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), null);
            i = 7;
        } else {
            boolean z = true;
            int i2 = 0;
            boolean zDecodeBooleanElement2 = false;
            List list2 = null;
            String strDecodeStringElement2 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    zDecodeBooleanElement2 = du1VarBeginStructure.decodeBooleanElement(s96Var, 1);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), list2);
                    i2 |= 4;
                }
            }
            list = list2;
            strDecodeStringElement = strDecodeStringElement2;
            i = i2;
            zDecodeBooleanElement = zDecodeBooleanElement2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new ng0(i, strDecodeStringElement, zDecodeBooleanElement, list);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        ng0 ng0Var = (ng0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = ng0.d;
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, ng0Var.a);
        gu1VarBeginStructure.encodeBooleanElement(s96Var, 1, ng0Var.b);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 2, (xp7) cl4VarArr[2].getValue(), ng0Var.c);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
