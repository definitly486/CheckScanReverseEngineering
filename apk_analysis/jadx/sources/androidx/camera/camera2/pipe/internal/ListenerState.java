package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.Frame;
import defpackage.ht;
import defpackage.kt;

/* JADX INFO: loaded from: classes.dex */
public final class ListenerState {
    private final ht isCompletedInvoked;
    private final ht isFrameInfoInvoked;
    private final ht isImagesInvoked;
    private final ht isStarted;
    private final Frame.Listener listener;

    public ListenerState(Frame.Listener listener) {
        listener.getClass();
        this.listener = listener;
        this.isStarted = kt.a(false);
        this.isImagesInvoked = kt.a(false);
        this.isFrameInfoInvoked = kt.a(false);
        this.isCompletedInvoked = kt.a(false);
    }

    public final Frame.Listener getListener() {
        return this.listener;
    }

    /* JADX INFO: renamed from: invokeOnFrameComplete-cfZT-5Y, reason: not valid java name */
    public final void m947invokeOnFrameCompletecfZT5Y(long j, long j2) {
        m950invokeOnImagesAvailablecfZT5Y(j, j2);
        m948invokeOnFrameInfoAvailablecfZT5Y(j, j2);
        if (this.isCompletedInvoked.a()) {
            this.listener.onFrameComplete();
        }
    }

    /* JADX INFO: renamed from: invokeOnFrameInfoAvailable-cfZT-5Y, reason: not valid java name */
    public final void m948invokeOnFrameInfoAvailablecfZT5Y(long j, long j2) {
        m951invokeOnStartedcfZT5Y(j, j2);
        if (this.isFrameInfoInvoked.a()) {
            this.listener.onFrameInfoAvailable();
        }
    }

    /* JADX INFO: renamed from: invokeOnImageAvailable-aKI5c8E, reason: not valid java name */
    public final void m949invokeOnImageAvailableaKI5c8E(int i) {
        this.listener.m449onImageAvailableaKI5c8E(i);
    }

    /* JADX INFO: renamed from: invokeOnImagesAvailable-cfZT-5Y, reason: not valid java name */
    public final void m950invokeOnImagesAvailablecfZT5Y(long j, long j2) {
        m951invokeOnStartedcfZT5Y(j, j2);
        if (this.isImagesInvoked.a()) {
            this.listener.onImagesAvailable();
        }
    }

    /* JADX INFO: renamed from: invokeOnStarted-cfZT-5Y, reason: not valid java name */
    public final void m951invokeOnStartedcfZT5Y(long j, long j2) {
        if (this.isStarted.a()) {
            this.listener.m448onFrameStartedcfZT5Y(j, j2);
        }
    }
}
