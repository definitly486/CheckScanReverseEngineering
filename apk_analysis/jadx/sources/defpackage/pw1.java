package defpackage;

import android.media.MediaFormat;
import androidx.camera.video.internal.muxer.MediaMuxerImpl;
import androidx.sqlite.SQLiteDriver;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class pw1 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ pw1(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ((SQLiteDriver) obj2).open((String) obj);
            default:
                return Integer.valueOf(MediaMuxerImpl.addTrack$lambda$1((MediaMuxerImpl) obj2, (MediaFormat) obj));
        }
    }
}
