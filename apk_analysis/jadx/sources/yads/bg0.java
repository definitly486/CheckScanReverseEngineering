package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class bg0 implements defpackage.dp3 {
    public static final bg0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        bg0 bg0Var = new bg0();
        a = bg0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelRemoteData", bg0Var, 7);
        s96Var.j("page_id", true);
        s96Var.j("latest_sdk_version", true);
        s96Var.j("app_ads_txt_url", true);
        s96Var.j("app_status", true);
        s96Var.j("alerts", true);
        s96Var.j("ad_units", true);
        s96Var.j("mediation_networks", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.cl4[] cl4VarArr = dg0.h;
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{defpackage.ev0.a(ca8Var), defpackage.ev0.a(ca8Var), defpackage.ev0.a(ca8Var), defpackage.ev0.a(ca8Var), defpackage.ev0.a((defpackage.df4) cl4VarArr[4].getValue()), defpackage.ev0.a((defpackage.df4) cl4VarArr[5].getValue()), cl4VarArr[6].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        String str;
        String str2;
        List list2;
        String str3;
        List list3;
        String str4;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = dg0.h;
        int i2 = 3;
        int i3 = 2;
        boolean z = true;
        List list4 = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            ca8 ca8Var = ca8.a;
            String str5 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8Var, null);
            String str6 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8Var, null);
            String str7 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8Var, null);
            String str8 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8Var, null);
            List list5 = (List) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, (defpackage.xl2) cl4VarArr[4].getValue(), null);
            List list6 = (List) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 5, (defpackage.xl2) cl4VarArr[5].getValue(), null);
            list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 6, (defpackage.xl2) cl4VarArr[6].getValue(), null);
            str3 = str8;
            list3 = list5;
            str4 = str7;
            i = 127;
            list2 = list6;
            str2 = str6;
            str = str5;
        } else {
            boolean z2 = true;
            int i4 = 0;
            List list7 = null;
            String str9 = null;
            String str10 = null;
            List list8 = null;
            String str11 = null;
            String str12 = null;
            while (z2) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                switch (iDecodeElementIndex) {
                    case -1:
                        z2 = false;
                        i2 = 3;
                        i3 = 2;
                        continue;
                    case 0:
                        str12 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8.a, str12);
                        i4 |= 1;
                        i2 = 3;
                        i3 = 2;
                        break;
                    case 1:
                        str9 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8.a, str9);
                        i4 |= 2;
                        z = true;
                        i2 = 3;
                        continue;
                    case 2:
                        str11 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i3, ca8.a, str11);
                        i4 |= 4;
                        break;
                    case 3:
                        str10 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i2, ca8.a, str10);
                        i4 |= 8;
                        break;
                    case 4:
                        list8 = (List) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, (defpackage.xl2) cl4VarArr[4].getValue(), list8);
                        i4 |= 16;
                        break;
                    case 5:
                        list4 = (List) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 5, (defpackage.xl2) cl4VarArr[5].getValue(), list4);
                        i4 |= 32;
                        break;
                    case 6:
                        list7 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 6, (defpackage.xl2) cl4VarArr[6].getValue(), list7);
                        i4 |= 64;
                        break;
                    default:
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                }
                z = true;
            }
            list = list7;
            str = str12;
            str2 = str9;
            list2 = list4;
            str3 = str10;
            list3 = list8;
            str4 = str11;
            i = i4;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new dg0(i, str, str2, str4, str3, list3, list2, list);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        dg0 dg0Var = (dg0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = dg0.h;
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 0) || dg0Var.a != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 0, ca8.a, dg0Var.a);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 1) || dg0Var.b != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, ca8.a, dg0Var.b);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 2) || dg0Var.c != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, ca8.a, dg0Var.c);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 3) || dg0Var.d != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, ca8.a, dg0Var.d);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 4) || dg0Var.e != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 4, (xp7) cl4VarArr[4].getValue(), dg0Var.e);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 5) || dg0Var.f != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 5, (xp7) cl4VarArr[5].getValue(), dg0Var.f);
        }
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 6, (xp7) cl4VarArr[6].getValue(), dg0Var.g);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
