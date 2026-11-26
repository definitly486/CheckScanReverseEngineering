package com.google.firebase.sessions;

import defpackage.ca8;
import defpackage.df4;
import defpackage.dp3;
import defpackage.du1;
import defpackage.gu1;
import defpackage.gw4;
import defpackage.mp7;
import defpackage.pg;
import defpackage.s96;
import defpackage.u96;
import defpackage.ud2;
import defpackage.ul2;
import defpackage.ux2;
import defpackage.z74;

/* JADX INFO: loaded from: classes4.dex */
@ul2
public /* synthetic */ class SessionDetails$$serializer implements dp3<SessionDetails> {
    public static final SessionDetails$$serializer INSTANCE;
    private static final mp7 descriptor;

    static {
        SessionDetails$$serializer sessionDetails$$serializer = new SessionDetails$$serializer();
        INSTANCE = sessionDetails$$serializer;
        s96 s96Var = new s96("com.google.firebase.sessions.SessionDetails", sessionDetails$$serializer, 4);
        s96Var.j("sessionId", false);
        s96Var.j("firstSessionId", false);
        s96Var.j("sessionIndex", false);
        s96Var.j("sessionStartTimestampUs", false);
        descriptor = s96Var;
    }

    private SessionDetails$$serializer() {
    }

    @Override // defpackage.dp3
    public final df4<?>[] childSerializers() {
        ca8 ca8Var = ca8.a;
        return new df4[]{ca8Var, ca8Var, z74.a, gw4.a};
    }

    @Override // defpackage.xl2
    public final SessionDetails deserialize(ud2 ud2Var) {
        String str;
        int i;
        int iDecodeIntElement;
        String str2;
        long jDecodeLongElement;
        ud2Var.getClass();
        mp7 mp7Var = descriptor;
        du1 du1VarBeginStructure = ud2Var.beginStructure(mp7Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            String strDecodeStringElement = du1VarBeginStructure.decodeStringElement(mp7Var, 0);
            String strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(mp7Var, 1);
            str = strDecodeStringElement;
            i = 15;
            iDecodeIntElement = du1VarBeginStructure.decodeIntElement(mp7Var, 2);
            str2 = strDecodeStringElement2;
            jDecodeLongElement = du1VarBeginStructure.decodeLongElement(mp7Var, 3);
        } else {
            String strDecodeStringElement3 = null;
            boolean z = true;
            int iDecodeIntElement2 = 0;
            long jDecodeLongElement2 = 0;
            String strDecodeStringElement4 = null;
            int i2 = 0;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(mp7Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement4 = du1VarBeginStructure.decodeStringElement(mp7Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(mp7Var, 1);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    iDecodeIntElement2 = du1VarBeginStructure.decodeIntElement(mp7Var, 2);
                    i2 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        pg.h(iDecodeElementIndex);
                        return null;
                    }
                    jDecodeLongElement2 = du1VarBeginStructure.decodeLongElement(mp7Var, 3);
                    i2 |= 8;
                }
            }
            str = strDecodeStringElement4;
            i = i2;
            iDecodeIntElement = iDecodeIntElement2;
            str2 = strDecodeStringElement3;
            jDecodeLongElement = jDecodeLongElement2;
        }
        du1VarBeginStructure.endStructure(mp7Var);
        return new SessionDetails(i, str, str2, iDecodeIntElement, jDecodeLongElement, null);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return descriptor;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, SessionDetails sessionDetails) {
        ux2Var.getClass();
        sessionDetails.getClass();
        mp7 mp7Var = descriptor;
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(mp7Var);
        SessionDetails.write$Self$com_google_firebase_firebase_sessions(sessionDetails, gu1VarBeginStructure, mp7Var);
        gu1VarBeginStructure.endStructure(mp7Var);
    }

    @Override // defpackage.dp3
    public df4<?>[] typeParametersSerializers() {
        return u96.c;
    }
}
