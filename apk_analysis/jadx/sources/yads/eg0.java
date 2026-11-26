package yads;

import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class eg0 implements defpackage.dp3 {
    public static final eg0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        eg0 eg0Var = new eg0();
        a = eg0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.model.DebugPanelReportData", eg0Var, 6);
        s96Var.j("app_data", false);
        s96Var.j("sdk_data", false);
        s96Var.j("adapters_data", false);
        s96Var.j("consents_data", false);
        s96Var.j("sdk_logs", false);
        s96Var.j("network_logs", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.cl4[] cl4VarArr = gg0.g;
        return new defpackage.df4[]{ue0.a, lg0.a, cl4VarArr[2].getValue(), bf0.a, cl4VarArr[4].getValue(), cl4VarArr[5].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        ng0 ng0Var;
        we0 we0Var;
        df0 df0Var;
        int i;
        List list2;
        List list3;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = gg0.g;
        int i2 = 3;
        boolean z = false;
        ng0 ng0Var2 = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            we0 we0Var2 = (we0) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, ue0.a, null);
            ng0 ng0Var3 = (ng0) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, lg0.a, null);
            List list4 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), null);
            df0 df0Var2 = (df0) du1VarBeginStructure.decodeSerializableElement(s96Var, 3, bf0.a, null);
            List list5 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 4, (defpackage.xl2) cl4VarArr[4].getValue(), null);
            list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 5, (defpackage.xl2) cl4VarArr[5].getValue(), null);
            we0Var = we0Var2;
            df0Var = df0Var2;
            i = 63;
            list2 = list5;
            list3 = list4;
            ng0Var = ng0Var3;
        } else {
            boolean z2 = true;
            int i3 = 0;
            List list6 = null;
            we0 we0Var3 = null;
            df0 df0Var3 = null;
            List list7 = null;
            List list8 = null;
            while (z2) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                switch (iDecodeElementIndex) {
                    case -1:
                        z2 = z;
                        i2 = 3;
                        break;
                    case 0:
                        we0Var3 = (we0) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, ue0.a, we0Var3);
                        i3 |= 1;
                        z = false;
                        i2 = 3;
                        break;
                    case 1:
                        ng0Var2 = (ng0) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, lg0.a, ng0Var2);
                        i3 |= 2;
                        z = false;
                        break;
                    case 2:
                        list8 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), list8);
                        i3 |= 4;
                        z = false;
                        break;
                    case 3:
                        df0Var3 = (df0) du1VarBeginStructure.decodeSerializableElement(s96Var, i2, bf0.a, df0Var3);
                        i3 |= 8;
                        z = false;
                        break;
                    case 4:
                        list7 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 4, (defpackage.xl2) cl4VarArr[4].getValue(), list7);
                        i3 |= 16;
                        z = false;
                        break;
                    case 5:
                        list6 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 5, (defpackage.xl2) cl4VarArr[5].getValue(), list6);
                        i3 |= 32;
                        z = false;
                        break;
                    default:
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                }
            }
            list = list6;
            ng0Var = ng0Var2;
            we0Var = we0Var3;
            df0Var = df0Var3;
            i = i3;
            list2 = list7;
            list3 = list8;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new gg0(i, we0Var, ng0Var, list3, df0Var, list2, list);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        gg0 gg0Var = (gg0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = gg0.g;
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 0, ue0.a, gg0Var.a);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 1, lg0.a, gg0Var.b);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 2, (xp7) cl4VarArr[2].getValue(), gg0Var.c);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 3, bf0.a, gg0Var.d);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 4, (xp7) cl4VarArr[4].getValue(), gg0Var.e);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 5, (xp7) cl4VarArr[5].getValue(), gg0Var.f);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
