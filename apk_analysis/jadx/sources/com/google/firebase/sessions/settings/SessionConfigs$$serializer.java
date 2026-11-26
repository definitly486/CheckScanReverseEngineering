package com.google.firebase.sessions.settings;

import defpackage.df4;
import defpackage.dp3;
import defpackage.du1;
import defpackage.ev0;
import defpackage.gs0;
import defpackage.gu1;
import defpackage.gw4;
import defpackage.mp7;
import defpackage.pg;
import defpackage.pq2;
import defpackage.s96;
import defpackage.u96;
import defpackage.ud2;
import defpackage.ul2;
import defpackage.ux2;
import defpackage.z74;

/* JADX INFO: loaded from: classes4.dex */
@ul2
public /* synthetic */ class SessionConfigs$$serializer implements dp3<SessionConfigs> {
    public static final SessionConfigs$$serializer INSTANCE;
    private static final mp7 descriptor;

    static {
        SessionConfigs$$serializer sessionConfigs$$serializer = new SessionConfigs$$serializer();
        INSTANCE = sessionConfigs$$serializer;
        s96 s96Var = new s96("com.google.firebase.sessions.settings.SessionConfigs", sessionConfigs$$serializer, 5);
        s96Var.j("sessionsEnabled", false);
        s96Var.j("sessionSamplingRate", false);
        s96Var.j("sessionTimeoutSeconds", false);
        s96Var.j("cacheDurationSeconds", false);
        s96Var.j("cacheUpdatedTimeSeconds", false);
        descriptor = s96Var;
    }

    private SessionConfigs$$serializer() {
    }

    @Override // defpackage.dp3
    public final df4<?>[] childSerializers() {
        df4<?> df4VarA = ev0.a(gs0.a);
        df4<?> df4VarA2 = ev0.a(pq2.a);
        z74 z74Var = z74.a;
        return new df4[]{df4VarA, df4VarA2, ev0.a(z74Var), ev0.a(z74Var), ev0.a(gw4.a)};
    }

    @Override // defpackage.xl2
    public final SessionConfigs deserialize(ud2 ud2Var) {
        Boolean bool;
        Integer num;
        Long l;
        Integer num2;
        Double d;
        int i;
        ud2Var.getClass();
        mp7 mp7Var = descriptor;
        du1 du1VarBeginStructure = ud2Var.beginStructure(mp7Var);
        SessionConfigs sessionConfigs = null;
        if (du1VarBeginStructure.decodeSequentially()) {
            bool = (Boolean) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 0, gs0.a, null);
            Double d2 = (Double) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 1, pq2.a, null);
            z74 z74Var = z74.a;
            Integer num3 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 2, z74Var, null);
            num = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 3, z74Var, null);
            l = (Long) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 4, gw4.a, null);
            num2 = num3;
            d = d2;
            i = 31;
        } else {
            boolean z = true;
            int i2 = 0;
            bool = null;
            Integer num4 = null;
            Long l2 = null;
            Integer num5 = null;
            Double d3 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(mp7Var);
                sessionConfigs = sessionConfigs;
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    bool = (Boolean) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 0, gs0.a, bool);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    d3 = (Double) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 1, pq2.a, d3);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    num5 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 2, z74.a, num5);
                    i2 |= 4;
                } else if (iDecodeElementIndex == 3) {
                    num4 = (Integer) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 3, z74.a, num4);
                    i2 |= 8;
                } else {
                    if (iDecodeElementIndex != 4) {
                        pg.h(iDecodeElementIndex);
                        return sessionConfigs;
                    }
                    l2 = (Long) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 4, gw4.a, l2);
                    i2 |= 16;
                }
            }
            num = num4;
            l = l2;
            num2 = num5;
            d = d3;
            i = i2;
        }
        Boolean bool2 = bool;
        du1VarBeginStructure.endStructure(mp7Var);
        return new SessionConfigs(i, bool2, d, num2, num, l, null);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return descriptor;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, SessionConfigs sessionConfigs) {
        ux2Var.getClass();
        sessionConfigs.getClass();
        mp7 mp7Var = descriptor;
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(mp7Var);
        SessionConfigs.write$Self$com_google_firebase_firebase_sessions(sessionConfigs, gu1VarBeginStructure, mp7Var);
        gu1VarBeginStructure.endStructure(mp7Var);
    }

    @Override // defpackage.dp3
    public df4<?>[] typeParametersSerializers() {
        return u96.c;
    }
}
