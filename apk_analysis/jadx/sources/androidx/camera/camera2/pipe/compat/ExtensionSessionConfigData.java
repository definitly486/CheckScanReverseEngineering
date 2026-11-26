package androidx.camera.camera2.pipe.compat;

import defpackage.aa4;
import defpackage.e2;
import defpackage.ej0;
import defpackage.jh2;
import defpackage.k;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class ExtensionSessionConfigData {
    private final Executor executor;
    private final Integer extensionMode;
    private final CameraExtensionSessionWrapper.StateCallback extensionStateCallback;
    private final List<OutputConfigurationWrapper> outputConfigurations;
    private final OutputConfigurationWrapper postviewOutputConfiguration;
    private final Map<?, Object> sessionParameters;
    private final int sessionTemplateId;
    private final int sessionType;
    private final CameraCaptureSessionWrapper.StateCallback stateCallback;

    /* JADX WARN: Multi-variable type inference failed */
    public ExtensionSessionConfigData(int i, List<? extends OutputConfigurationWrapper> list, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map<?, ? extends Object> map, Integer num, CameraExtensionSessionWrapper.StateCallback stateCallback2, OutputConfigurationWrapper outputConfigurationWrapper) {
        list.getClass();
        executor.getClass();
        stateCallback.getClass();
        map.getClass();
        this.sessionType = i;
        this.outputConfigurations = list;
        this.executor = executor;
        this.stateCallback = stateCallback;
        this.sessionTemplateId = i2;
        this.sessionParameters = map;
        this.extensionMode = num;
        this.extensionStateCallback = stateCallback2;
        this.postviewOutputConfiguration = outputConfigurationWrapper;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ExtensionSessionConfigData copy$default(ExtensionSessionConfigData extensionSessionConfigData, int i, List list, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map map, Integer num, CameraExtensionSessionWrapper.StateCallback stateCallback2, OutputConfigurationWrapper outputConfigurationWrapper, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = extensionSessionConfigData.sessionType;
        }
        if ((i3 & 2) != 0) {
            list = extensionSessionConfigData.outputConfigurations;
        }
        if ((i3 & 4) != 0) {
            executor = extensionSessionConfigData.executor;
        }
        if ((i3 & 8) != 0) {
            stateCallback = extensionSessionConfigData.stateCallback;
        }
        if ((i3 & 16) != 0) {
            i2 = extensionSessionConfigData.sessionTemplateId;
        }
        if ((i3 & 32) != 0) {
            map = extensionSessionConfigData.sessionParameters;
        }
        if ((i3 & 64) != 0) {
            num = extensionSessionConfigData.extensionMode;
        }
        if ((i3 & 128) != 0) {
            stateCallback2 = extensionSessionConfigData.extensionStateCallback;
        }
        if ((i3 & 256) != 0) {
            outputConfigurationWrapper = extensionSessionConfigData.postviewOutputConfiguration;
        }
        CameraExtensionSessionWrapper.StateCallback stateCallback3 = stateCallback2;
        OutputConfigurationWrapper outputConfigurationWrapper2 = outputConfigurationWrapper;
        Map map2 = map;
        Integer num2 = num;
        int i4 = i2;
        Executor executor2 = executor;
        return extensionSessionConfigData.copy(i, list, executor2, stateCallback, i4, map2, num2, stateCallback3, outputConfigurationWrapper2);
    }

    public final int component1() {
        return this.sessionType;
    }

    public final List<OutputConfigurationWrapper> component2() {
        return this.outputConfigurations;
    }

    public final Executor component3() {
        return this.executor;
    }

    public final CameraCaptureSessionWrapper.StateCallback component4() {
        return this.stateCallback;
    }

    public final int component5() {
        return this.sessionTemplateId;
    }

    public final Map<?, Object> component6() {
        return this.sessionParameters;
    }

    public final Integer component7() {
        return this.extensionMode;
    }

    public final CameraExtensionSessionWrapper.StateCallback component8() {
        return this.extensionStateCallback;
    }

    public final OutputConfigurationWrapper component9() {
        return this.postviewOutputConfiguration;
    }

    public final ExtensionSessionConfigData copy(int i, List<? extends OutputConfigurationWrapper> list, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map<?, ? extends Object> map, Integer num, CameraExtensionSessionWrapper.StateCallback stateCallback2, OutputConfigurationWrapper outputConfigurationWrapper) {
        list.getClass();
        executor.getClass();
        stateCallback.getClass();
        map.getClass();
        return new ExtensionSessionConfigData(i, list, executor, stateCallback, i2, map, num, stateCallback2, outputConfigurationWrapper);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExtensionSessionConfigData)) {
            return false;
        }
        ExtensionSessionConfigData extensionSessionConfigData = (ExtensionSessionConfigData) obj;
        return this.sessionType == extensionSessionConfigData.sessionType && aa4.e(this.outputConfigurations, extensionSessionConfigData.outputConfigurations) && aa4.e(this.executor, extensionSessionConfigData.executor) && aa4.e(this.stateCallback, extensionSessionConfigData.stateCallback) && this.sessionTemplateId == extensionSessionConfigData.sessionTemplateId && aa4.e(this.sessionParameters, extensionSessionConfigData.sessionParameters) && aa4.e(this.extensionMode, extensionSessionConfigData.extensionMode) && aa4.e(this.extensionStateCallback, extensionSessionConfigData.extensionStateCallback) && aa4.e(this.postviewOutputConfiguration, extensionSessionConfigData.postviewOutputConfiguration);
    }

    public final Executor getExecutor() {
        return this.executor;
    }

    public final Integer getExtensionMode() {
        return this.extensionMode;
    }

    public final CameraExtensionSessionWrapper.StateCallback getExtensionStateCallback() {
        return this.extensionStateCallback;
    }

    public final List<OutputConfigurationWrapper> getOutputConfigurations() {
        return this.outputConfigurations;
    }

    public final OutputConfigurationWrapper getPostviewOutputConfiguration() {
        return this.postviewOutputConfiguration;
    }

    public final Map<?, Object> getSessionParameters() {
        return this.sessionParameters;
    }

    public final int getSessionTemplateId() {
        return this.sessionTemplateId;
    }

    public final int getSessionType() {
        return this.sessionType;
    }

    public final CameraCaptureSessionWrapper.StateCallback getStateCallback() {
        return this.stateCallback;
    }

    public int hashCode() {
        int iC = k.c(this.sessionParameters, ej0.b(this.sessionTemplateId, (this.stateCallback.hashCode() + ((this.executor.hashCode() + e2.b(this.outputConfigurations, Integer.hashCode(this.sessionType) * 31, 31)) * 31)) * 31, 31), 31);
        Integer num = this.extensionMode;
        int iHashCode = (iC + (num == null ? 0 : num.hashCode())) * 31;
        CameraExtensionSessionWrapper.StateCallback stateCallback = this.extensionStateCallback;
        int iHashCode2 = (iHashCode + (stateCallback == null ? 0 : stateCallback.hashCode())) * 31;
        OutputConfigurationWrapper outputConfigurationWrapper = this.postviewOutputConfiguration;
        return iHashCode2 + (outputConfigurationWrapper != null ? outputConfigurationWrapper.hashCode() : 0);
    }

    public String toString() {
        return "ExtensionSessionConfigData(sessionType=" + this.sessionType + ", outputConfigurations=" + this.outputConfigurations + ", executor=" + this.executor + ", stateCallback=" + this.stateCallback + ", sessionTemplateId=" + this.sessionTemplateId + ", sessionParameters=" + this.sessionParameters + ", extensionMode=" + this.extensionMode + ", extensionStateCallback=" + this.extensionStateCallback + ", postviewOutputConfiguration=" + this.postviewOutputConfiguration + ')';
    }

    public /* synthetic */ ExtensionSessionConfigData(int i, List list, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map map, Integer num, CameraExtensionSessionWrapper.StateCallback stateCallback2, OutputConfigurationWrapper outputConfigurationWrapper, int i3, jh2 jh2Var) {
        this(i, list, executor, stateCallback, i2, map, (i3 & 64) != 0 ? null : num, (i3 & 128) != 0 ? null : stateCallback2, (i3 & 256) != 0 ? null : outputConfigurationWrapper);
    }
}
