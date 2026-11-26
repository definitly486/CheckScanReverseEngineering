package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qm extends Exception {
    public final int b;
    public final boolean c;
    public final vz2 d;

    /* JADX WARN: Illegal instructions before constructor call */
    public qm(int i, int i2, int i3, int i4, vz2 vz2Var, boolean z, RuntimeException runtimeException) {
        StringBuilder sbF = defpackage.bg.f(i, i2, "AudioTrack init failed ", " Config(", ", ");
        defpackage.gg.e(sbF, i3, ", ", i4, ")");
        sbF.append(z ? " (recoverable)" : "");
        super(sbF.toString(), runtimeException);
        this.b = i;
        this.c = z;
        this.d = vz2Var;
    }
}
