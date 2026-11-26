package com.google.firebase.sessions;

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

/* JADX INFO: loaded from: classes4.dex */
@ul2
public /* synthetic */ class Time$$serializer implements dp3<Time> {
    public static final Time$$serializer INSTANCE;
    private static final mp7 descriptor;

    static {
        Time$$serializer time$$serializer = new Time$$serializer();
        INSTANCE = time$$serializer;
        s96 s96Var = new s96("com.google.firebase.sessions.Time", time$$serializer, 3);
        s96Var.j("ms", false);
        s96Var.j("us", true);
        s96Var.j("seconds", true);
        descriptor = s96Var;
    }

    private Time$$serializer() {
    }

    @Override // defpackage.dp3
    public final df4<?>[] childSerializers() {
        gw4 gw4Var = gw4.a;
        return new df4[]{gw4Var, gw4Var, gw4Var};
    }

    @Override // defpackage.xl2
    public final Time deserialize(ud2 ud2Var) {
        int i;
        long jDecodeLongElement;
        long j;
        long j2;
        ud2Var.getClass();
        mp7 mp7Var = descriptor;
        du1 du1VarBeginStructure = ud2Var.beginStructure(mp7Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            long jDecodeLongElement2 = du1VarBeginStructure.decodeLongElement(mp7Var, 0);
            long jDecodeLongElement3 = du1VarBeginStructure.decodeLongElement(mp7Var, 1);
            jDecodeLongElement = du1VarBeginStructure.decodeLongElement(mp7Var, 2);
            i = 7;
            j = jDecodeLongElement2;
            j2 = jDecodeLongElement3;
        } else {
            long jDecodeLongElement4 = 0;
            boolean z = true;
            int i2 = 0;
            long jDecodeLongElement5 = 0;
            long jDecodeLongElement6 = 0;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(mp7Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    jDecodeLongElement5 = du1VarBeginStructure.decodeLongElement(mp7Var, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    jDecodeLongElement6 = du1VarBeginStructure.decodeLongElement(mp7Var, 1);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        pg.h(iDecodeElementIndex);
                        return null;
                    }
                    jDecodeLongElement4 = du1VarBeginStructure.decodeLongElement(mp7Var, 2);
                    i2 |= 4;
                }
            }
            i = i2;
            jDecodeLongElement = jDecodeLongElement4;
            j = jDecodeLongElement5;
            j2 = jDecodeLongElement6;
        }
        du1VarBeginStructure.endStructure(mp7Var);
        return new Time(i, j, j2, jDecodeLongElement, null);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return descriptor;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Time time) {
        ux2Var.getClass();
        time.getClass();
        mp7 mp7Var = descriptor;
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(mp7Var);
        Time.write$Self$com_google_firebase_firebase_sessions(time, gu1VarBeginStructure, mp7Var);
        gu1VarBeginStructure.endStructure(mp7Var);
    }

    @Override // defpackage.dp3
    public df4<?>[] typeParametersSerializers() {
        return u96.c;
    }
}
