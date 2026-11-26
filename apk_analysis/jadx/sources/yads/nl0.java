package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nl0 implements oy3 {
    @Override // yads.oy3
    public final qy3 a(ny3 ny3Var) {
        int i = u56.a;
        if (i < 23 || i < 31) {
            return new bu5().a(ny3Var);
        }
        int iD = z84.d(ny3Var.c.m);
        sv3.c("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + u56.c(iD));
        return new bl(iD).a(ny3Var);
    }
}
