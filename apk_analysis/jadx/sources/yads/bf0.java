package yads;

import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class bf0 implements defpackage.dp3 {
    public static final bf0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        bf0 bf0Var = new bf0();
        a = bf0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.local.model.DebugPanelConsentsData", bf0Var, 4);
        s96Var.j("has_location_consent", false);
        s96Var.j("age_restricted_user", false);
        s96Var.j("has_user_consent", false);
        s96Var.j("has_cmp_value", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.gs0 gs0Var = defpackage.gs0.a;
        return new defpackage.df4[]{gs0Var, defpackage.ev0.a(gs0Var), defpackage.ev0.a(gs0Var), gs0Var};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        boolean zDecodeBooleanElement;
        boolean zDecodeBooleanElement2;
        Boolean bool;
        Boolean bool2;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            zDecodeBooleanElement = du1VarBeginStructure.decodeBooleanElement(s96Var, 0);
            defpackage.gs0 gs0Var = defpackage.gs0.a;
            Boolean bool3 = (Boolean) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, gs0Var, null);
            Boolean bool4 = (Boolean) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, gs0Var, null);
            zDecodeBooleanElement2 = du1VarBeginStructure.decodeBooleanElement(s96Var, 3);
            bool = bool4;
            bool2 = bool3;
            i = 15;
        } else {
            boolean z = true;
            zDecodeBooleanElement = false;
            boolean zDecodeBooleanElement3 = false;
            int i2 = 0;
            Boolean bool5 = null;
            Boolean bool6 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    zDecodeBooleanElement = du1VarBeginStructure.decodeBooleanElement(s96Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    bool6 = (Boolean) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, defpackage.gs0.a, bool6);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    bool5 = (Boolean) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, defpackage.gs0.a, bool5);
                    i2 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    zDecodeBooleanElement3 = du1VarBeginStructure.decodeBooleanElement(s96Var, 3);
                    i2 |= 8;
                }
            }
            zDecodeBooleanElement2 = zDecodeBooleanElement3;
            bool = bool5;
            bool2 = bool6;
            i = i2;
        }
        boolean z2 = zDecodeBooleanElement;
        du1VarBeginStructure.endStructure(s96Var);
        return new df0(i, z2, bool2, bool, zDecodeBooleanElement2);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        df0 df0Var = (df0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeBooleanElement(s96Var, 0, df0Var.a);
        defpackage.gs0 gs0Var = defpackage.gs0.a;
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, gs0Var, df0Var.b);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, gs0Var, df0Var.c);
        gu1VarBeginStructure.encodeBooleanElement(s96Var, 3, df0Var.d);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
