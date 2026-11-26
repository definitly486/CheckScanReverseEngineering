package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class sm extends Exception {
    public final int b;
    public final boolean c;
    public final vz2 d;

    public sm(int i, vz2 vz2Var, boolean z) {
        super(vx4.a(i, "AudioTrack write failed: "));
        this.c = z;
        this.b = i;
        this.d = vz2Var;
    }
}
