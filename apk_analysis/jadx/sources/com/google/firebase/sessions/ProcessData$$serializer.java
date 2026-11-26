package com.google.firebase.sessions;

import defpackage.ca8;
import defpackage.df4;
import defpackage.dp3;
import defpackage.du1;
import defpackage.gu1;
import defpackage.mp7;
import defpackage.pg;
import defpackage.s96;
import defpackage.u96;
import defpackage.ud2;
import defpackage.ul2;
import defpackage.ux2;
import defpackage.z74;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
@ul2
public /* synthetic */ class ProcessData$$serializer implements dp3<ProcessData> {
    public static final ProcessData$$serializer INSTANCE;
    private static final mp7 descriptor;

    static {
        ProcessData$$serializer processData$$serializer = new ProcessData$$serializer();
        INSTANCE = processData$$serializer;
        s96 s96Var = new s96("com.google.firebase.sessions.ProcessData", processData$$serializer, 2);
        s96Var.j("pid", false);
        s96Var.j(CommonUrlParts.UUID, false);
        descriptor = s96Var;
    }

    private ProcessData$$serializer() {
    }

    @Override // defpackage.dp3
    public final df4<?>[] childSerializers() {
        return new df4[]{z74.a, ca8.a};
    }

    @Override // defpackage.xl2
    public final ProcessData deserialize(ud2 ud2Var) {
        int iDecodeIntElement;
        String strDecodeStringElement;
        int i;
        ud2Var.getClass();
        mp7 mp7Var = descriptor;
        du1 du1VarBeginStructure = ud2Var.beginStructure(mp7Var);
        if (du1VarBeginStructure.decodeSequentially()) {
            iDecodeIntElement = du1VarBeginStructure.decodeIntElement(mp7Var, 0);
            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(mp7Var, 1);
            i = 3;
        } else {
            boolean z = true;
            iDecodeIntElement = 0;
            int i2 = 0;
            String strDecodeStringElement2 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(mp7Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    iDecodeIntElement = du1VarBeginStructure.decodeIntElement(mp7Var, 0);
                    i2 |= 1;
                } else {
                    if (iDecodeElementIndex != 1) {
                        pg.h(iDecodeElementIndex);
                        return null;
                    }
                    strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(mp7Var, 1);
                    i2 |= 2;
                }
            }
            strDecodeStringElement = strDecodeStringElement2;
            i = i2;
        }
        du1VarBeginStructure.endStructure(mp7Var);
        return new ProcessData(i, iDecodeIntElement, strDecodeStringElement, null);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return descriptor;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, ProcessData processData) {
        ux2Var.getClass();
        processData.getClass();
        mp7 mp7Var = descriptor;
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(mp7Var);
        ProcessData.write$Self$com_google_firebase_firebase_sessions(processData, gu1VarBeginStructure, mp7Var);
        gu1VarBeginStructure.endStructure(mp7Var);
    }

    @Override // defpackage.dp3
    public df4<?>[] typeParametersSerializers() {
        return u96.c;
    }
}
