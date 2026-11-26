package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.ca8;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ce0 implements defpackage.dp3 {
    public static final ce0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        ce0 ce0Var = new ce0();
        a = ce0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAdUnitWaterfallMediation", ce0Var, 6);
        s96Var.j("adapter", true);
        s96Var.j("network_name", false);
        s96Var.j("waterfall_parameters", false);
        s96Var.j("network_ad_unit_id_name", true);
        s96Var.j(FirebaseAnalytics.Param.CURRENCY, false);
        s96Var.j("cpm_floors", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.cl4[] cl4VarArr = ee0.g;
        ca8 ca8Var = ca8.a;
        return new defpackage.df4[]{defpackage.ev0.a(ca8Var), ca8Var, cl4VarArr[2].getValue(), defpackage.ev0.a(ca8Var), defpackage.ev0.a(ai0.a), cl4VarArr[5].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        String str;
        String str2;
        ci0 ci0Var;
        int i;
        List list2;
        String str3;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = ee0.g;
        int i2 = 3;
        boolean z = false;
        String str4 = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            ca8 ca8Var = ca8.a;
            String str5 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8Var, null);
            String strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 1);
            List list3 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), null);
            String str6 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8Var, null);
            ci0 ci0Var2 = (ci0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ai0.a, null);
            list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 5, (defpackage.xl2) cl4VarArr[5].getValue(), null);
            str2 = str6;
            ci0Var = ci0Var2;
            i = 63;
            list2 = list3;
            str3 = strDecodeStringElement;
            str = str5;
        } else {
            boolean z2 = true;
            int i3 = 0;
            List list4 = null;
            String str7 = null;
            ci0 ci0Var3 = null;
            List list5 = null;
            String strDecodeStringElement2 = null;
            while (z2) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                switch (iDecodeElementIndex) {
                    case -1:
                        z2 = z;
                        i2 = 3;
                        break;
                    case 0:
                        str4 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8.a, str4);
                        i3 |= 1;
                        z = false;
                        i2 = 3;
                        break;
                    case 1:
                        strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                        i3 |= 2;
                        z = false;
                        break;
                    case 2:
                        list5 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 2, (defpackage.xl2) cl4VarArr[2].getValue(), list5);
                        i3 |= 4;
                        z = false;
                        break;
                    case 3:
                        str7 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i2, ca8.a, str7);
                        i3 |= 8;
                        z = false;
                        break;
                    case 4:
                        ci0Var3 = (ci0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ai0.a, ci0Var3);
                        i3 |= 16;
                        z = false;
                        break;
                    case 5:
                        list4 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 5, (defpackage.xl2) cl4VarArr[5].getValue(), list4);
                        i3 |= 32;
                        z = false;
                        break;
                    default:
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                }
            }
            list = list4;
            str = str4;
            str2 = str7;
            ci0Var = ci0Var3;
            i = i3;
            list2 = list5;
            str3 = strDecodeStringElement2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new ee0(i, str, str3, list2, str2, ci0Var, list);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        ee0 ee0Var = (ee0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = ee0.g;
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 0) || ee0Var.a != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 0, ca8.a, ee0Var.a);
        }
        gu1VarBeginStructure.encodeStringElement(s96Var, 1, ee0Var.b);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 2, (xp7) cl4VarArr[2].getValue(), ee0Var.c);
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 3) || ee0Var.d != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, ca8.a, ee0Var.d);
        }
        gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 4, ai0.a, ee0Var.e);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 5, (xp7) cl4VarArr[5].getValue(), ee0Var.f);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
