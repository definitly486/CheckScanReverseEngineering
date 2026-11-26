package com.google.firebase.sessions;

import defpackage.cl4;
import defpackage.df4;
import defpackage.dp3;
import defpackage.du1;
import defpackage.ev0;
import defpackage.gu1;
import defpackage.mp7;
import defpackage.pg;
import defpackage.s96;
import defpackage.u96;
import defpackage.ud2;
import defpackage.ul2;
import defpackage.ux2;
import defpackage.wp7;
import defpackage.xl2;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@ul2
public /* synthetic */ class SessionData$$serializer implements dp3<SessionData> {
    public static final SessionData$$serializer INSTANCE;
    private static final mp7 descriptor;

    static {
        SessionData$$serializer sessionData$$serializer = new SessionData$$serializer();
        INSTANCE = sessionData$$serializer;
        s96 s96Var = new s96("com.google.firebase.sessions.SessionData", sessionData$$serializer, 3);
        s96Var.j("sessionDetails", false);
        s96Var.j("backgroundTime", true);
        s96Var.j("processDataMap", true);
        descriptor = s96Var;
    }

    private SessionData$$serializer() {
    }

    @Override // defpackage.dp3
    public final df4<?>[] childSerializers() {
        return new df4[]{SessionDetails$$serializer.INSTANCE, ev0.a(Time$$serializer.INSTANCE), ev0.a((df4) SessionData.$childSerializers[2].getValue())};
    }

    @Override // defpackage.xl2
    public final SessionData deserialize(ud2 ud2Var) {
        Map map;
        SessionDetails sessionDetails;
        int i;
        Time time;
        ud2Var.getClass();
        mp7 mp7Var = descriptor;
        du1 du1VarBeginStructure = ud2Var.beginStructure(mp7Var);
        cl4[] cl4VarArr = SessionData.$childSerializers;
        if (du1VarBeginStructure.decodeSequentially()) {
            SessionDetails sessionDetails2 = (SessionDetails) du1VarBeginStructure.decodeSerializableElement(mp7Var, 0, SessionDetails$$serializer.INSTANCE, null);
            Time time2 = (Time) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 1, Time$$serializer.INSTANCE, null);
            map = (Map) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 2, (xl2) cl4VarArr[2].getValue(), null);
            sessionDetails = sessionDetails2;
            i = 7;
            time = time2;
        } else {
            boolean z = true;
            int i2 = 0;
            Map map2 = null;
            SessionDetails sessionDetails3 = null;
            Time time3 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(mp7Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    sessionDetails3 = (SessionDetails) du1VarBeginStructure.decodeSerializableElement(mp7Var, 0, SessionDetails$$serializer.INSTANCE, sessionDetails3);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    time3 = (Time) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 1, Time$$serializer.INSTANCE, time3);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        pg.h(iDecodeElementIndex);
                        return null;
                    }
                    map2 = (Map) du1VarBeginStructure.decodeNullableSerializableElement(mp7Var, 2, (xl2) cl4VarArr[2].getValue(), map2);
                    i2 |= 4;
                }
            }
            map = map2;
            sessionDetails = sessionDetails3;
            i = i2;
            time = time3;
        }
        du1VarBeginStructure.endStructure(mp7Var);
        return new SessionData(i, sessionDetails, time, map, (wp7) null);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return descriptor;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, SessionData sessionData) {
        ux2Var.getClass();
        sessionData.getClass();
        mp7 mp7Var = descriptor;
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(mp7Var);
        SessionData.write$Self$com_google_firebase_firebase_sessions(sessionData, gu1VarBeginStructure, mp7Var);
        gu1VarBeginStructure.endStructure(mp7Var);
    }

    @Override // defpackage.dp3
    public df4<?>[] typeParametersSerializers() {
        return u96.c;
    }
}
