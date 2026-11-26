package defpackage;

import android.media.metrics.MediaMetricsManager;
import android.os.SystemClock;
import androidx.compose.ui.graphics.Color;
import androidx.room.support.AutoCloser;
import java.lang.reflect.Constructor;
import java.security.InvalidKeyException;
import java.util.ConcurrentModificationException;
import yads.xk0;
import yads.zk0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ln implements AutoCloser.Watch, xk0 {
    public static /* bridge */ /* synthetic */ MediaMetricsManager b(Object obj) {
        return (MediaMetricsManager) obj;
    }

    public static String c(int i, int i2, String str, String str2, String str3) {
        return str + i + str2 + i2 + str3;
    }

    public static String d(Class cls, String str) {
        return str + cls;
    }

    public static /* synthetic */ void e() {
        throw new ConcurrentModificationException();
    }

    public static /* synthetic */ void f(int i, StringBuilder sb) {
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void g(long j, String str, StringBuilder sb) {
        sb.append((Object) Color.m6240toStringimpl(j));
        sb.append(str);
    }

    public static /* synthetic */ void h(Object obj, String str) throws InvalidKeyException {
        throw new InvalidKeyException(str + obj);
    }

    @Override // yads.xk0
    public Constructor a() {
        return zk0.d();
    }

    @Override // androidx.room.support.AutoCloser.Watch
    public long getMillis() {
        return SystemClock.uptimeMillis();
    }
}
