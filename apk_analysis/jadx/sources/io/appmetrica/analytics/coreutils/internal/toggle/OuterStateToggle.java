package io.appmetrica.analytics.coreutils.internal.toggle;

/* JADX INFO: loaded from: classes5.dex */
public final class OuterStateToggle extends SimpleThreadSafeToggle {
    public OuterStateToggle(boolean z, String str) {
        super(z, str);
    }

    public final void update(boolean z) {
        updateState(z);
    }
}
