package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.camera2.adapter.ZslControlImpl;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.internal.utils.RingBuffer;
import androidx.camera.view.TapToFocusInfo;
import androidx.compose.ui.graphics.Color;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r01 implements Function, RingBuffer.OnRemoveCallback {
    public static double a(double d, double d2, double d3) {
        return (Math.sin(d) * d2) + d3;
    }

    public static int b(int i, int i2, long j) {
        return (Color.m6239hashCodeimpl(j) + i) * i2;
    }

    public static String c(long j, String str) {
        return str + j;
    }

    public static /* synthetic */ void d(int i, int i2, Object obj) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(obj);
        sb.append(i2);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void e(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void f(Throwable th) throws InvalidKeyException {
        throw new InvalidKeyException(th);
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return Integer.valueOf(((TapToFocusInfo) obj).getFocusState());
    }

    @Override // androidx.camera.core.internal.utils.RingBuffer.OnRemoveCallback
    public void onRemove(Object obj) {
        ZslControlImpl.zslRingBuffer$lambda$0((ImageProxy) obj);
    }
}
