package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.aa4;
import defpackage.vm2;

/* JADX INFO: loaded from: classes.dex */
public final class DeviceQuirks {
    public static final DeviceQuirks INSTANCE = new DeviceQuirks();
    private static final String TAG = "DeviceQuirks";
    public static volatile Quirks all;

    static {
        QuirkSettingsHolder.instance().observe(CameraXExecutors.directExecutor(), new vm2());
    }

    private DeviceQuirks() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(QuirkSettings quirkSettings) {
        DeviceQuirksLoader deviceQuirksLoader = DeviceQuirksLoader.INSTANCE;
        quirkSettings.getClass();
        setAll(new Quirks(deviceQuirksLoader.loadQuirks(quirkSettings)));
        Logger.d(TAG, "camera2 DeviceQuirks = " + Quirks.toString(getAll()));
    }

    public static final Quirks getAll() {
        Quirks quirks = all;
        if (quirks != null) {
            return quirks;
        }
        aa4.j(TtmlNode.COMBINE_ALL);
        throw null;
    }

    public static /* synthetic */ void getAll$annotations() {
    }

    public static final void setAll(Quirks quirks) {
        quirks.getClass();
        all = quirks;
    }

    public final <T extends Quirk> T get(Class<T> cls) {
        cls.getClass();
        return (T) getAll().get(cls);
    }
}
