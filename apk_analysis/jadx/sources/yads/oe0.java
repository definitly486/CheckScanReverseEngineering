package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class oe0 implements defpackage.dp3 {
    public static final oe0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        oe0 oe0Var = new oe0();
        a = oe0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAlert", oe0Var, 3);
        s96Var.j(TJAdUnitConstants.String.TITLE, true);
        s96Var.j(TJAdUnitConstants.String.MESSAGE, true);
        s96Var.j(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, true);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{defpackage.ev0.a(ca8Var), defpackage.ev0.a(ca8Var), defpackage.ev0.a(ca8Var)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        String str;
        int i;
        String str2;
        String str3;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            ca8 ca8Var = ca8.a;
            str3 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8Var, null);
            str2 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8Var, null);
            str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8Var, null);
            i = 7;
        } else {
            boolean z = true;
            int i2 = 0;
            str = null;
            String str4 = null;
            String str5 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    str5 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8.a, str5);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    str4 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8.a, str4);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8.a, str);
                    i2 |= 4;
                }
            }
            i = i2;
            str2 = str4;
            str3 = str5;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new qe0(i, str3, str2, str);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        qe0 qe0Var = (qe0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 0) || qe0Var.a != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 0, ca8.a, qe0Var.a);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 1) || qe0Var.b != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, ca8.a, qe0Var.b);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 2) || qe0Var.c != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, ca8.a, qe0Var.c);
        }
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
