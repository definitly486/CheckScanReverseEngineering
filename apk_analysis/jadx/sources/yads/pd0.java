package yads;

import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pd0 implements defpackage.dp3 {
    public static final pd0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        pd0 pd0Var = new pd0();
        a = pd0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAdUnitBiddingMediation", pd0Var, 5);
        s96Var.j("adapter", true);
        s96Var.j("network_name", false);
        s96Var.j("bidding_parameters", false);
        s96Var.j("network_ad_unit_id", true);
        s96Var.j("network_ad_unit_id_name", true);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.cl4[] cl4VarArr = rd0.f;
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{defpackage.ev0.a(ca8Var), ca8Var, cl4VarArr[2].getValue(), defpackage.ev0.a(ca8Var), defpackage.ev0.a(ca8Var)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        String str;
        String str2;
        int i;
        String str3;
        String str4;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = rd0.f;
        Object obj = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            ca8 ca8Var = ca8.a;
            String str5 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8Var, null);
            String strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 1);
            List list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), null);
            String str6 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8Var, null);
            list = list2;
            str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8Var, null);
            str2 = str6;
            i = 31;
            str3 = strDecodeStringElement;
            str4 = str5;
        } else {
            boolean z = true;
            int i2 = 0;
            List list3 = null;
            String str7 = null;
            String str8 = null;
            String strDecodeStringElement2 = null;
            String str9 = null;
            while (z) {
                obj = obj;
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    str9 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8.a, str9);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    list3 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), list3);
                    i2 |= 4;
                } else if (iDecodeElementIndex == 3) {
                    str8 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8.a, str8);
                    i2 |= 8;
                } else {
                    if (iDecodeElementIndex != 4) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return obj;
                    }
                    str7 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8.a, str7);
                    i2 |= 16;
                }
            }
            list = list3;
            str = str7;
            str2 = str8;
            i = i2;
            str3 = strDecodeStringElement2;
            str4 = str9;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new rd0(i, str4, str3, list, str2, str);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        rd0 rd0Var = (rd0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = rd0.f;
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 0) || rd0Var.a != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 0, ca8.a, rd0Var.a);
        }
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, rd0Var.b);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 2, (xp7) cl4VarArr[2].getValue(), rd0Var.c);
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 3) || rd0Var.d != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, ca8.a, rd0Var.d);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 4) || rd0Var.e != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 4, ca8.a, rd0Var.e);
        }
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
