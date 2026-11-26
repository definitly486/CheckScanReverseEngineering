package yads;

import android.os.Handler;
import android.os.Message;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes6.dex */
public final class nz3 implements py3, Handler.Callback {
    public final Handler b;
    public final /* synthetic */ oz3 c;

    public nz3(oz3 oz3Var, qy3 qy3Var) {
        this.c = oz3Var;
        Handler handlerA = u56.a(this);
        this.b = handlerA;
        qy3Var.a(this, handlerA);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        int i = message.arg1;
        int i2 = message.arg2;
        int i3 = u56.a;
        long j = ((((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i2));
        oz3 oz3Var = this.c;
        if (this == oz3Var.n1) {
            if (j == Long.MAX_VALUE) {
                oz3Var.z0 = true;
            } else {
                try {
                    oz3Var.b(j);
                    oz3Var.A();
                    oz3Var.B0.e++;
                    oz3Var.V0 = true;
                    if (!oz3Var.T0) {
                        oz3Var.T0 = true;
                        oz3Var.I0.a(oz3Var.P0);
                        oz3Var.R0 = true;
                    }
                    oz3Var.a(j);
                } catch (up2 e) {
                    this.c.A0 = e;
                }
            }
        }
        return true;
    }
}
