package yads;

import android.media.MediaCodec;

/* JADX INFO: loaded from: classes6.dex */
public final class ba0 {
    public final MediaCodec.CryptoInfo a;
    public final MediaCodec.CryptoInfo.Pattern b = new MediaCodec.CryptoInfo.Pattern(0, 0);

    public ba0(MediaCodec.CryptoInfo cryptoInfo) {
        this.a = cryptoInfo;
    }

    public final void a(int i, int i2) {
        this.b.set(i, i2);
        this.a.setPattern(this.b);
    }
}
