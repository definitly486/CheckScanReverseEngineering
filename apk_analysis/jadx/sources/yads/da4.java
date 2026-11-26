package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJVerifierKt;
import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class da4 implements defpackage.dp3 {
    public static final da4 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        da4 da4Var = new da4();
        a = da4Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.utils.logger.model.MobileAdsNetworkResponseLog", da4Var, 4);
        s96Var.j(TJVerifierKt.TJC_TIMESTAMP, false);
        s96Var.j("code", false);
        s96Var.j("headers", false);
        s96Var.j(TtmlNode.TAG_BODY, false);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{defpackage.gw4.a, defpackage.ev0.a(defpackage.z74.a), defpackage.ev0.a((defpackage.df4) fa4.e[2].getValue()), defpackage.ev0.a(ca8.a)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        Map map;
        Integer num;
        String str;
        int i;
        long j;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = fa4.e;
        Object obj = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            long jDecodeLongElement = du1VarBeginStructure.decodeLongElement(s96Var, 0);
            Integer num2 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, defpackage.z74.a, null);
            map = (Map) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), null);
            num = num2;
            str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8.a, null);
            i = 15;
            j = jDecodeLongElement;
        } else {
            boolean z = true;
            int i2 = 0;
            Map map2 = null;
            long jDecodeLongElement2 = 0;
            Integer num3 = null;
            String str2 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                obj = obj;
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    jDecodeLongElement2 = du1VarBeginStructure.decodeLongElement(s96Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    num3 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, defpackage.z74.a, num3);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    map2 = (Map) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), map2);
                    i2 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return obj;
                    }
                    str2 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8.a, str2);
                    i2 |= 8;
                }
            }
            map = map2;
            num = num3;
            str = str2;
            i = i2;
            j = jDecodeLongElement2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new fa4(i, j, num, map, str);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        fa4 fa4Var = (fa4) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = fa4.e;
        gu1VarBeginStructure.encodeLongElement(s96Var, 0, fa4Var.a);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, defpackage.z74.a, fa4Var.b);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, (xp7) cl4VarArr[2].getValue(), fa4Var.c);
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, ca8.a, fa4Var.d);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
