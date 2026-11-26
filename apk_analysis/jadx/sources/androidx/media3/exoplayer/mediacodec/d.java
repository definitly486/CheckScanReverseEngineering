package androidx.media3.exoplayer.mediacodec;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d implements MediaCodecUtil.ScoreProvider {
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
    public final int getScore(Object obj) {
        return MediaCodecUtil.lambda$getDecoderInfosSortedBySoftwareOnly$2((MediaCodecInfo) obj);
    }
}
