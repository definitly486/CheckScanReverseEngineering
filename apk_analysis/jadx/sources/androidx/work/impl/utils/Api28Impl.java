package androidx.work.impl.utils;

import android.app.Application;

/* JADX INFO: loaded from: classes3.dex */
final class Api28Impl {
    public static final Api28Impl INSTANCE = new Api28Impl();

    private Api28Impl() {
    }

    public final String getProcessName() {
        String processName = Application.getProcessName();
        processName.getClass();
        return processName;
    }
}
