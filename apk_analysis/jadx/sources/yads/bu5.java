package yads;

import android.media.MediaCodec;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class bu5 implements oy3 {
    public static MediaCodec b(ny3 ny3Var) throws IOException {
        ny3Var.a.getClass();
        String str = ny3Var.a.a;
        b06.a("createCodec:" + str);
        MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
        b06.a();
        return mediaCodecCreateByCodecName;
    }

    @Override // yads.oy3
    public final qy3 a(ny3 ny3Var) {
        MediaCodec mediaCodecB = null;
        try {
            mediaCodecB = b(ny3Var);
            b06.a("configureCodec");
            mediaCodecB.configure(ny3Var.b, ny3Var.d, ny3Var.e, 0);
            b06.a();
            b06.a("startCodec");
            mediaCodecB.start();
            b06.a();
            return new cu5(mediaCodecB);
        } catch (IOException | RuntimeException e) {
            if (mediaCodecB != null) {
                mediaCodecB.release();
            }
            throw e;
        }
    }
}
