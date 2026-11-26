package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJVerifierKt;
import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class la4 implements defpackage.dp3 {
    public static final la4 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        la4 la4Var = new la4();
        a = la4Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.utils.logger.model.MobileAdsSdkLog", la4Var, 4);
        s96Var.j(TJVerifierKt.TJC_TIMESTAMP, false);
        s96Var.j(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, false);
        s96Var.j("tag", false);
        s96Var.j("text", false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{defpackage.gw4.a, ca8Var, ca8Var, ca8Var};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        String str;
        String strDecodeStringElement;
        String str2;
        int i;
        long j;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            long jDecodeLongElement = du1VarBeginStructure.decodeLongElement(s96Var, 0);
            String strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
            String strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
            str = strDecodeStringElement2;
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 3);
            str2 = strDecodeStringElement3;
            i = 15;
            j = jDecodeLongElement;
        } else {
            String strDecodeStringElement4 = null;
            boolean z = true;
            int i2 = 0;
            long jDecodeLongElement2 = 0;
            String strDecodeStringElement5 = null;
            String strDecodeStringElement6 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    jDecodeLongElement2 = du1VarBeginStructure.decodeLongElement(s96Var, 0);
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
                    strDecodeStringElement6 = du1VarBeginStructure.decodeStringElement(s96Var, 3);
                    i2 |= 8;
                }
            }
            str = strDecodeStringElement5;
            strDecodeStringElement = strDecodeStringElement6;
            str2 = strDecodeStringElement4;
            i = i2;
            j = jDecodeLongElement2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new na4(i, j, str, str2, strDecodeStringElement);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        na4 na4Var = (na4) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeLongElement(s96Var, 0, na4Var.a);
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, na4Var.b);
        gu1VarBeginStructure.encodeStringElement(s96Var, 2, na4Var.c);
        gu1VarBeginStructure.encodeStringElement(s96Var, 3, na4Var.d);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
