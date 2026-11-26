package yads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import yads.bl;

/* JADX INFO: loaded from: classes6.dex */
public final class bl implements oy3 {
    public final ut5 a;
    public final ut5 b;

    public bl(final int i) {
        ut5 ut5Var = new ut5() { // from class: qo9
            @Override // yads.ut5
            public final Object get() {
                return bl.a(i);
            }
        };
        ut5 ut5Var2 = new ut5() { // from class: ro9
            @Override // yads.ut5
            public final Object get() {
                return bl.b(i);
            }
        };
        this.a = ut5Var;
        this.b = ut5Var2;
    }

    public static HandlerThread a(int i) {
        StringBuilder sb = new StringBuilder("ExoPlayer:MediaCodecAsyncAdapter:");
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return new HandlerThread(sb.toString());
    }

    @Override // yads.oy3
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final cl a(ny3 ny3Var) throws Exception {
        MediaCodec mediaCodecCreateByCodecName;
        String str = ny3Var.a.a;
        cl clVar = null;
        try {
            b06.a("createCodec:" + str);
            mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            try {
                cl clVar2 = new cl(mediaCodecCreateByCodecName, (HandlerThread) this.a.get(), (HandlerThread) this.b.get());
                try {
                    b06.a();
                    clVar2.a(ny3Var.b, ny3Var.d, ny3Var.e);
                    return clVar2;
                } catch (Exception e) {
                    e = e;
                    clVar = clVar2;
                    if (clVar != null) {
                        clVar.release();
                    } else if (mediaCodecCreateByCodecName != null) {
                        mediaCodecCreateByCodecName.release();
                    }
                    throw e;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            mediaCodecCreateByCodecName = null;
        }
    }

    public static HandlerThread b(int i) {
        StringBuilder sb = new StringBuilder("ExoPlayer:MediaCodecQueueingThread:");
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return new HandlerThread(sb.toString());
    }
}
