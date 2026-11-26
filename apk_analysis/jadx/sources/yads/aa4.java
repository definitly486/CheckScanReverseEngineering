package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJVerifierKt;
import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class aa4 implements defpackage.dp3 {
    public static final aa4 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        aa4 aa4Var = new aa4();
        a = aa4Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.utils.logger.model.MobileAdsNetworkRequestLog", aa4Var, 5);
        s96Var.j(TJVerifierKt.TJC_TIMESTAMP, false);
        s96Var.j("method", false);
        s96Var.j("url", false);
        s96Var.j("headers", false);
        s96Var.j(TtmlNode.TAG_BODY, false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.cl4[] cl4VarArr = ca4.f;
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{defpackage.gw4.a, ca8Var, ca8Var, defpackage.ev0.a((defpackage.df4) cl4VarArr[3].getValue()), defpackage.ev0.a(ca8Var)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        Map map;
        String str;
        String str2;
        String str3;
        int i;
        long j;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = ca4.f;
        Object obj = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            long jDecodeLongElement = du1VarBeginStructure.decodeLongElement(s96Var, 0);
            String strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 1);
            String strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
            map = (Map) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, (defpackage.xl2) cl4VarArr[3].getValue(), null);
            str = strDecodeStringElement;
            str2 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8.a, null);
            str3 = strDecodeStringElement2;
            i = 31;
            j = jDecodeLongElement;
        } else {
            boolean z = true;
            int i2 = 0;
            Map map2 = null;
            String strDecodeStringElement3 = null;
            long jDecodeLongElement2 = 0;
            String strDecodeStringElement4 = null;
            String str4 = null;
            while (z) {
                obj = obj;
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    jDecodeLongElement2 = du1VarBeginStructure.decodeLongElement(s96Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    strDecodeStringElement4 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
                    i2 |= 4;
                } else if (iDecodeElementIndex == 3) {
                    map2 = (Map) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, (defpackage.xl2) cl4VarArr[3].getValue(), map2);
                    i2 |= 8;
                } else {
                    if (iDecodeElementIndex != 4) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return obj;
                    }
                    str4 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8.a, str4);
                    i2 |= 16;
                }
            }
            map = map2;
            str = strDecodeStringElement4;
            str2 = str4;
            str3 = strDecodeStringElement3;
            i = i2;
            j = jDecodeLongElement2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new ca4(i, j, str, str3, map, str2);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        ca4 ca4Var = (ca4) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = ca4.f;
        gu1VarBeginStructure.encodeLongElement(s96Var, 0, ca4Var.a);
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, ca4Var.b);
        gu1VarBeginStructure.encodeStringElement(s96Var, 2, ca4Var.c);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, (xp7) cl4VarArr[3].getValue(), ca4Var.d);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 4, ca8.a, ca4Var.e);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
