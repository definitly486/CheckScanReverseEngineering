package defpackage;

import android.media.MediaFormat;
import androidx.camera.video.internal.muxer.Media3MuxerImpl;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d85 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d85(int i, Object obj, Object obj2) {
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
                return Integer.valueOf(Media3MuxerImpl.addTrack$lambda$1((Media3MuxerImpl) obj2, (MediaFormat) obj));
            default:
                return Boolean.valueOf(PagerKt.pagerSemantics$performBackwardPaging((PagerState) obj2, (y22) obj));
        }
    }
}
