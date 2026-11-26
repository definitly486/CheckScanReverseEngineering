package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraColorSpace;
import defpackage.aa4;
import defpackage.e2;
import defpackage.ej0;
import defpackage.jh2;
import defpackage.k;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class SessionConfigData {
    private final Executor executor;
    private final List<InputConfigData> inputConfiguration;
    private final List<OutputConfigurationWrapper> outputConfigurations;
    private final String sessionColorSpace;
    private final Map<?, Object> sessionParameters;
    private final int sessionTemplateId;
    private final int sessionType;
    private final CameraCaptureSessionWrapper.StateCallback stateCallback;

    /* JADX WARN: Multi-variable type inference failed */
    private SessionConfigData(int i, List<InputConfigData> list, List<? extends OutputConfigurationWrapper> list2, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map<?, ? extends Object> map, String str) {
        list2.getClass();
        executor.getClass();
        stateCallback.getClass();
        map.getClass();
        this.sessionType = i;
        this.inputConfiguration = list;
        this.outputConfigurations = list2;
        this.executor = executor;
        this.stateCallback = stateCallback;
        this.sessionTemplateId = i2;
        this.sessionParameters = map;
        this.sessionColorSpace = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-WTWd9Ag$default, reason: not valid java name */
    public static /* synthetic */ SessionConfigData m835copyWTWd9Ag$default(SessionConfigData sessionConfigData, int i, List list, List list2, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map map, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = sessionConfigData.sessionType;
        }
        if ((i3 & 2) != 0) {
            list = sessionConfigData.inputConfiguration;
        }
        if ((i3 & 4) != 0) {
            list2 = sessionConfigData.outputConfigurations;
        }
        if ((i3 & 8) != 0) {
            executor = sessionConfigData.executor;
        }
        if ((i3 & 16) != 0) {
            stateCallback = sessionConfigData.stateCallback;
        }
        if ((i3 & 32) != 0) {
            i2 = sessionConfigData.sessionTemplateId;
        }
        if ((i3 & 64) != 0) {
            map = sessionConfigData.sessionParameters;
        }
        if ((i3 & 128) != 0) {
            str = sessionConfigData.sessionColorSpace;
        }
        Map map2 = map;
        String str2 = str;
        CameraCaptureSessionWrapper.StateCallback stateCallback2 = stateCallback;
        int i4 = i2;
        return sessionConfigData.m837copyWTWd9Ag(i, list, list2, executor, stateCallback2, i4, map2, str2);
    }

    public final int component1() {
        return this.sessionType;
    }

    public final List<InputConfigData> component2() {
        return this.inputConfiguration;
    }

    public final List<OutputConfigurationWrapper> component3() {
        return this.outputConfigurations;
    }

    public final Executor component4() {
        return this.executor;
    }

    public final CameraCaptureSessionWrapper.StateCallback component5() {
        return this.stateCallback;
    }

    public final int component6() {
        return this.sessionTemplateId;
    }

    public final Map<?, Object> component7() {
        return this.sessionParameters;
    }

    /* JADX INFO: renamed from: component8-dxVZaPA, reason: not valid java name */
    public final String m836component8dxVZaPA() {
        return this.sessionColorSpace;
    }

    /* JADX INFO: renamed from: copy-WTWd9Ag, reason: not valid java name */
    public final SessionConfigData m837copyWTWd9Ag(int i, List<InputConfigData> list, List<? extends OutputConfigurationWrapper> list2, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map<?, ? extends Object> map, String str) {
        list2.getClass();
        executor.getClass();
        stateCallback.getClass();
        map.getClass();
        return new SessionConfigData(i, list, list2, executor, stateCallback, i2, map, str, null);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x005b  */
    public boolean equals(Object obj) {
        boolean zM198equalsimpl0;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionConfigData)) {
            return false;
        }
        SessionConfigData sessionConfigData = (SessionConfigData) obj;
        if (this.sessionType != sessionConfigData.sessionType || !aa4.e(this.inputConfiguration, sessionConfigData.inputConfiguration) || !aa4.e(this.outputConfigurations, sessionConfigData.outputConfigurations) || !aa4.e(this.executor, sessionConfigData.executor) || !aa4.e(this.stateCallback, sessionConfigData.stateCallback) || this.sessionTemplateId != sessionConfigData.sessionTemplateId || !aa4.e(this.sessionParameters, sessionConfigData.sessionParameters)) {
            return false;
        }
        String str = this.sessionColorSpace;
        String str2 = sessionConfigData.sessionColorSpace;
        if (str == null) {
            if (str2 == null) {
                zM198equalsimpl0 = true;
            } else {
                zM198equalsimpl0 = false;
            }
        } else if (str2 == null) {
            zM198equalsimpl0 = false;
        } else {
            zM198equalsimpl0 = CameraColorSpace.m198equalsimpl0(str, str2);
        }
        return zM198equalsimpl0;
    }

    public final Executor getExecutor() {
        return this.executor;
    }

    public final List<InputConfigData> getInputConfiguration() {
        return this.inputConfiguration;
    }

    public final List<OutputConfigurationWrapper> getOutputConfigurations() {
        return this.outputConfigurations;
    }

    /* JADX INFO: renamed from: getSessionColorSpace-dxVZaPA, reason: not valid java name */
    public final String m838getSessionColorSpacedxVZaPA() {
        return this.sessionColorSpace;
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
        int iHashCode = Integer.hashCode(this.sessionType) * 31;
        List<InputConfigData> list = this.inputConfiguration;
        int iC = k.c(this.sessionParameters, ej0.b(this.sessionTemplateId, (this.stateCallback.hashCode() + ((this.executor.hashCode() + e2.b(this.outputConfigurations, (iHashCode + (list == null ? 0 : list.hashCode())) * 31, 31)) * 31)) * 31, 31), 31);
        String str = this.sessionColorSpace;
        return iC + (str != null ? CameraColorSpace.m200hashCodeimpl(str) : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SessionConfigData(sessionType=");
        sb.append(this.sessionType);
        sb.append(", inputConfiguration=");
        sb.append(this.inputConfiguration);
        sb.append(", outputConfigurations=");
        sb.append(this.outputConfigurations);
        sb.append(", executor=");
        sb.append(this.executor);
        sb.append(", stateCallback=");
        sb.append(this.stateCallback);
        sb.append(", sessionTemplateId=");
        sb.append(this.sessionTemplateId);
        sb.append(", sessionParameters=");
        sb.append(this.sessionParameters);
        sb.append(", sessionColorSpace=");
        String str = this.sessionColorSpace;
        sb.append((Object) (str == null ? "null" : CameraColorSpace.m202toStringimpl(str)));
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ SessionConfigData(int i, List list, List list2, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map map, String str, jh2 jh2Var) {
        this(i, list, list2, executor, stateCallback, i2, map, str);
    }
}
