package com.google.firebase.util;

import defpackage.c9;
import defpackage.dx6;
import defpackage.jh;
import defpackage.kn1;
import defpackage.kx6;
import defpackage.qn1;
import defpackage.x74;
import defpackage.y74;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class RandomUtilKt {
    private static final String ALPHANUMERIC_ALPHABET = "23456789abcdefghjkmnpqrstvwxyz";

    private static /* synthetic */ void getALPHANUMERIC_ALPHABET$annotations() {
    }

    public static final String nextAlphanumericString(dx6 dx6Var, int i) {
        dx6Var.getClass();
        if (i < 0) {
            c9.f(jh.b(i, "invalid length: "));
            return null;
        }
        y74 y74VarN = kx6.n(0, i);
        ArrayList arrayList = new ArrayList(kn1.q(y74VarN, 10));
        x74 it = y74VarN.iterator();
        while (it.d) {
            it.nextInt();
            arrayList.add(Character.valueOf(ALPHANUMERIC_ALPHABET.charAt(dx6Var.a(30))));
        }
        return qn1.a0(arrayList, "", null, null, 0, null, 62);
    }
}
