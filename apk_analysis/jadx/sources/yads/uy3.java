package yads;

import android.media.MediaCodec;

/* JADX INFO: loaded from: classes6.dex */
public class uy3 extends ki0 {
    public final String b;

    public uy3(IllegalStateException illegalStateException, vy3 vy3Var) {
        StringBuilder sb = new StringBuilder("Decoder failed: ");
        String diagnosticInfo = null;
        sb.append(vy3Var == null ? null : vy3Var.a);
        super(sb.toString(), illegalStateException);
        if (u56.a >= 21 && (illegalStateException instanceof MediaCodec.CodecException)) {
            diagnosticInfo = ((MediaCodec.CodecException) illegalStateException).getDiagnosticInfo();
        }
        this.b = diagnosticInfo;
    }
}
