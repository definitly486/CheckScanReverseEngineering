package androidx.window.area;

import androidx.window.extensions.area.WindowAreaComponent;

/* JADX INFO: loaded from: classes3.dex */
public final class RearDisplaySessionImpl implements WindowAreaSession {
    private final WindowAreaComponent windowAreaComponent;

    public RearDisplaySessionImpl(WindowAreaComponent windowAreaComponent) {
        windowAreaComponent.getClass();
        this.windowAreaComponent = windowAreaComponent;
    }

    @Override // androidx.window.area.WindowAreaSession
    public void close() {
        this.windowAreaComponent.endRearDisplaySession();
    }
}
