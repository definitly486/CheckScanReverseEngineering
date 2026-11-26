package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yf0 implements defpackage.dp3 {
    public static final yf0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        yf0 yf0Var = new yf0();
        a = yf0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelMediationNetwork", yf0Var, 6);
        s96Var.j(TtmlNode.ATTR_ID, true);
        s96Var.j("name", false);
        s96Var.j("logo_url", true);
        s96Var.j("adapter_status", true);
        s96Var.j("adapters", false);
        s96Var.j("latest_adapter_version", true);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.cl4[] cl4VarArr = ag0.g;
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{defpackage.ev0.a(ca8Var), ca8Var, defpackage.ev0.a(ca8Var), defpackage.ev0.a(ca8Var), cl4VarArr[4].getValue(), defpackage.ev0.a(ca8Var)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        String str;
        String str2;
        int i;
        String str3;
        String str4;
        String str5;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = ag0.g;
        int i2 = 5;
        boolean z = false;
        String str6 = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            ca8 ca8Var = ca8.a;
            String str7 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8Var, null);
            String strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 1);
            String str8 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8Var, null);
            String str9 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8Var, null);
            list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 4, (defpackage.xl2) cl4VarArr[4].getValue(), null);
            str2 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 5, ca8Var, null);
            i = 63;
            str3 = str9;
            str4 = str8;
            str5 = strDecodeStringElement;
            str = str7;
        } else {
            boolean z2 = true;
            int i3 = 0;
            List list2 = null;
            String str10 = null;
            String str11 = null;
            String str12 = null;
            String strDecodeStringElement2 = null;
            while (z2) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                switch (iDecodeElementIndex) {
                    case -1:
                        z2 = z;
                        i2 = 5;
                        break;
                    case 0:
                        str6 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8.a, str6);
                        i3 |= 1;
                        z = false;
                        i2 = 5;
                        break;
                    case 1:
                        strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                        i3 |= 2;
                        z = false;
                        break;
                    case 2:
                        str12 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8.a, str12);
                        i3 |= 4;
                        z = false;
                        break;
                    case 3:
                        str11 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8.a, str11);
                        i3 |= 8;
                        z = false;
                        break;
                    case 4:
                        list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 4, (defpackage.xl2) cl4VarArr[4].getValue(), list2);
                        i3 |= 16;
                        z = false;
                        break;
                    case 5:
                        str10 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i2, ca8.a, str10);
                        i3 |= 32;
                        z = false;
                        break;
                    default:
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                }
            }
            list = list2;
            str = str6;
            str2 = str10;
            i = i3;
            str3 = str11;
            str4 = str12;
            str5 = strDecodeStringElement2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new ag0(i, str, str5, str4, str3, list, str2);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        ag0 ag0Var = (ag0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = ag0.g;
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 0) || ag0Var.a != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 0, ca8.a, ag0Var.a);
        }
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, ag0Var.b);
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 2) || ag0Var.c != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, ca8.a, ag0Var.c);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 3) || ag0Var.d != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, ca8.a, ag0Var.d);
        }
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 4, (xp7) cl4VarArr[4].getValue(), ag0Var.e);
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 5) || ag0Var.f != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 5, ca8.a, ag0Var.f);
        }
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
