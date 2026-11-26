package androidx.camera.core;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class FlashState {
    public static final int FIRED = 1;
    public static final FlashState INSTANCE = new FlashState();
    public static final int NOT_FIRED = 3;
    public static final int UNAVAILABLE = 2;
    public static final int UNKNOWN = 0;

    /* JADX INFO: renamed from: androidx.camera.core.FlashState$FlashState, reason: collision with other inner class name */
    @Retention(RetentionPolicy.SOURCE)
    public @interface InterfaceC0013FlashState {
    }

    private FlashState() {
    }
}
