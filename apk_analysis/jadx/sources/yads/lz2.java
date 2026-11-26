package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TapjoyConstants;
import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class lz2 implements defpackage.dp3 {
    public static final lz2 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        lz2 lz2Var = new lz2();
        a = lz2Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.base.model.fonts.FontUrls", lz2Var, 4);
        s96Var.j("regular", false);
        s96Var.j(TtmlNode.BOLD, false);
        s96Var.j(TapjoyConstants.TJC_THEME_LIGHT, false);
        s96Var.j("medium", false);
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
        return new nz2(i, str, str3, str2, strDecodeStringElement);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        nz2 nz2Var = (nz2) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        gu1VarBeginStructure.encodeStringElement(s96Var, 0, nz2Var.a);
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, nz2Var.b);
        gu1VarBeginStructure.encodeStringElement(s96Var, 2, nz2Var.c);
        gu1VarBeginStructure.encodeStringElement(s96Var, 3, nz2Var.d);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
