package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.core.SystemClockOffsets;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory implements xs6 {

    public static final class InstanceHolder {
        static final SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory INSTANCE = new SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory();

        private InstanceHolder() {
        }
    }

    public static SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static SystemClockOffsets provideSystemClockOffsets() {
        SystemClockOffsets systemClockOffsetsProvideSystemClockOffsets = SharedCameraGraphModules.Companion.provideSystemClockOffsets();
        te6.b(systemClockOffsetsProvideSystemClockOffsets);
        return systemClockOffsetsProvideSystemClockOffsets;
    }

    @Override // defpackage.ws6
    public SystemClockOffsets get() {
        return provideSystemClockOffsets();
    }
}
