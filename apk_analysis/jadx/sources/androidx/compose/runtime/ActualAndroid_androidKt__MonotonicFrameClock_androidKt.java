package androidx.compose.runtime;

import android.os.Looper;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class ActualAndroid_androidKt__MonotonicFrameClock_androidKt {
    private static final cl4 DefaultMonotonicFrameClock$delegate = new fh8(new a());
    private static final boolean DisallowDefaultMonotonicFrameClock = false;

    /* JADX INFO: Access modifiers changed from: private */
    public static final MonotonicFrameClock DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt() {
        return Looper.getMainLooper() != null ? DefaultChoreographerFrameClock.INSTANCE : FallbackFrameClock.INSTANCE;
    }

    public static final MonotonicFrameClock getDefaultMonotonicFrameClock() {
        return (MonotonicFrameClock) DefaultMonotonicFrameClock$delegate.getValue();
    }

    @ul2
    public static /* synthetic */ void getDefaultMonotonicFrameClock$annotations() {
    }
}
