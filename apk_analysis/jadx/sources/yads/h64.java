package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class h64 implements defpackage.dp3 {
    public static final h64 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        h64 h64Var = new h64();
        a = h64Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.core.initializer.validation.adapters.MediationNetworkData", h64Var, 4);
        s96Var.j("name", false);
        s96Var.j(TtmlNode.ATTR_ID, false);
        s96Var.j("version", false);
        s96Var.j("adapters", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.cl4[] cl4VarArr = m64.e;
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{ca8Var, ca8Var, defpackage.ev0.a(ca8Var), cl4VarArr[3].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        String str;
        String str2;
        int i;
        String str3;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = m64.e;
        if (du1VarBeginStructure.decodeSequentially()) {
            String strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            String strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
            String str4 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8.a, null);
            list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 3, (defpackage.xl2) cl4VarArr[3].getValue(), null);
            str = strDecodeStringElement;
            str2 = str4;
            i = 15;
            str3 = strDecodeStringElement2;
        } else {
            boolean z = true;
            int i2 = 0;
            List list2 = null;
            String strDecodeStringElement3 = null;
            String str5 = null;
            String strDecodeStringElement4 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    strDecodeStringElement4 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    str5 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8.a, str5);
                    i2 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 3, (defpackage.xl2) cl4VarArr[3].getValue(), list2);
                    i2 |= 8;
                }
            }
            list = list2;
            str = strDecodeStringElement3;
            str2 = str5;
            i = i2;
            str3 = strDecodeStringElement4;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new m64(i, str, str3, str2, list);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        m64 m64Var = (m64) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = m64.e;
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, m64Var.a);
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, m64Var.b);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, ca8.a, m64Var.c);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 3, (xp7) cl4VarArr[3].getValue(), m64Var.d);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
