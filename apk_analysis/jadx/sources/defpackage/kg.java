package defpackage;

import android.view.View;
import android.view.contentcapture.ContentCaptureSession;
import android.view.inputmethod.JoinOrSplitGesture;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.common.util.Log;
import yads.cd1;
import yads.l66;
import yads.r03;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kg implements l66, OnApplyWindowInsetsListener {
    public static /* bridge */ /* synthetic */ ContentCaptureSession c(Object obj) {
        return (ContentCaptureSession) obj;
    }

    public static void d(int i, String str, String str2) {
        Log.w(str2, str + i);
    }

    public static /* synthetic */ void e(Object obj, String str) {
        throw new RuntimeException(str + obj);
    }

    public static /* synthetic */ void f(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3).toString());
    }

    public static /* bridge */ /* synthetic */ boolean g(Object obj) {
        return obj instanceof JoinOrSplitGesture;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return cd1.d(((Long) obj).longValue());
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return r03.a(view, windowInsetsCompat);
    }
}
