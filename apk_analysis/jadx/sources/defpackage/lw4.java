package defpackage;

import android.graphics.Matrix;
import com.airbnb.lottie.LottieAnimationView;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class lw4 implements tx4 {
    @Override // defpackage.tx4
    public final void onResult(Object obj) {
        Throwable th = (Throwable) obj;
        lw4 lw4Var = LottieAnimationView.B;
        Matrix matrix = ib9.a;
        if ((th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException)) {
            gv4.c("Unable to load composition.", th);
        } else {
            h2.e("Unable to parse composition", th);
        }
    }
}
