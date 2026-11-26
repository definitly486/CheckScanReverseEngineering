package com.google.android.gms.internal.play_billing;

import defpackage.xp;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfv extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    public zzfv(long j, long j2, int i, IndexOutOfBoundsException indexOutOfBoundsException) {
        Locale locale = Locale.US;
        StringBuilder sbF = xp.f(j, "Pos: ", ", limit: ");
        sbF.append(j2);
        sbF.append(", len: ");
        sbF.append(i);
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(sbF.toString()), indexOutOfBoundsException);
    }

    public zzfv() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }
}
