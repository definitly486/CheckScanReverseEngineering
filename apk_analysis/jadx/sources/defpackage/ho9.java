package defpackage;

import android.content.Context;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import com.my.target.g;
import com.my.target.h;
import com.my.target.n;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ho9 {

    public static final class a {
        public static final boolean a;
        public static final boolean b;

        static {
            boolean z;
            boolean z2 = true;
            try {
                Class.forName(h.class.getName());
                z = true;
            } catch (Throwable unused) {
                y14.r(null, "ExoPlayer doesn't exist, add ExoPlayer dependency to play video");
                z = false;
            }
            try {
                int i = HlsMediaSource.Factory.a;
            } catch (Throwable unused2) {
                z2 = false;
            }
            a = z;
            b = z2;
        }
    }

    public static n a(Context context, boolean z) {
        if (z) {
            try {
                if (a.a) {
                    return new h(context);
                }
            } catch (Throwable th) {
                y14.u(null, "MediaUtils error: exception occurred while creating ExoVideoPlayer: " + th.getMessage());
            }
        }
        return new g(context);
    }
}
