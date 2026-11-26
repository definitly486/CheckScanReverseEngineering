package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rm extends Exception {
    /* JADX WARN: Illegal instructions before constructor call */
    public rm(long j, long j2) {
        StringBuilder sbF = defpackage.xp.f(j2, "Unexpected audio track timestamp discontinuity: expected ", ", got ");
        sbF.append(j);
        super(sbF.toString());
    }
}
