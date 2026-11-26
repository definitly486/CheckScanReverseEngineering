package yads;

import defpackage.mp7;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class jv4 implements defpackage.dp3 {
    public static final jv4 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        jv4 jv4Var = new jv4();
        a = jv4Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.core.configuration.model.PlayBackOptimizationConfig", jv4Var, 5);
        s96Var.j("minBufferMs", true);
        s96Var.j("maxBufferMs", true);
        s96Var.j("bufferForPlaybackMs", true);
        s96Var.j("bufferForPlaybackAfterRebufferMs", true);
        s96Var.j("targetBufferBytes", true);
        b = s96Var;
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.z74 z74Var = defpackage.z74.a;
        return new defpackage.df4[]{defpackage.ev0.a(z74Var), defpackage.ev0.a(z74Var), defpackage.ev0.a(z74Var), defpackage.ev0.a(z74Var), defpackage.ev0.a(z74Var)};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        Integer num;
        Integer num2;
        int i;
        Integer num3;
        Integer num4;
        Integer num5;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        Object obj = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            defpackage.z74 z74Var = defpackage.z74.a;
            Integer num6 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, z74Var, null);
            Integer num7 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, z74Var, null);
            Integer num8 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, z74Var, null);
            Integer num9 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, z74Var, null);
            num = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, z74Var, null);
            num2 = num9;
            i = 31;
            num3 = num8;
            num4 = num7;
            num5 = num6;
        } else {
            boolean z = true;
            int i2 = 0;
            num = null;
            Integer num10 = null;
            Integer num11 = null;
            Integer num12 = null;
            Integer num13 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                obj = obj;
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    num13 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, defpackage.z74.a, num13);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    num12 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, defpackage.z74.a, num12);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    num11 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, defpackage.z74.a, num11);
                    i2 |= 4;
                } else if (iDecodeElementIndex == 3) {
                    num10 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, defpackage.z74.a, num10);
                    i2 |= 8;
                } else {
                    if (iDecodeElementIndex != 4) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return obj;
                    }
                    num = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, defpackage.z74.a, num);
                    i2 |= 16;
                }
            }
            num2 = num10;
            i = i2;
            num3 = num11;
            num4 = num12;
            num5 = num13;
        }
        Integer num14 = num;
        du1VarBeginStructure.endStructure(s96Var);
        return new lv4(i, num5, num4, num3, num2, num14);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        lv4 lv4Var = (lv4) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 0) || lv4Var.a != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 0, defpackage.z74.a, lv4Var.a);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 1) || lv4Var.b != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, defpackage.z74.a, lv4Var.b);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 2) || lv4Var.c != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, defpackage.z74.a, lv4Var.c);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 3) || lv4Var.d != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, defpackage.z74.a, lv4Var.d);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 4) || lv4Var.e != null) {
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 4, defpackage.z74.a, lv4Var.e);
        }
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
