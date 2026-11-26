package defpackage;

import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class md9 implements VideoEncoderInfo.Finder {
    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo.Finder
    public final VideoEncoderInfo find(String str) {
        return VideoEncoderInfoImpl.FINDER$lambda$0(str);
    }
}
