package defpackage;

import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.internal.base.zar;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public final class aka implements OnCompleteListener {
    public final GoogleApiManager b;
    public final int c;
    public final ApiKey d;
    public final long e;
    public final long f;

    public aka(GoogleApiManager googleApiManager, int i, ApiKey apiKey, long j, long j2) {
        this.b = googleApiManager;
        this.c = i;
        this.d = apiKey;
        this.e = j;
        this.f = j2;
    }

    public static ConnectionTelemetryConfiguration a(zabk zabkVar, BaseGmsClient baseGmsClient, int i) {
        ConnectionTelemetryConfiguration telemetryConfiguration = baseGmsClient.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
            return null;
        }
        int[] methodInvocationMethodKeyAllowlist = telemetryConfiguration.getMethodInvocationMethodKeyAllowlist();
        if (methodInvocationMethodKeyAllowlist == null) {
            int[] methodInvocationMethodKeyDisallowlist = telemetryConfiguration.getMethodInvocationMethodKeyDisallowlist();
            if (methodInvocationMethodKeyDisallowlist != null && ArrayUtils.contains(methodInvocationMethodKeyDisallowlist, i)) {
                return null;
            }
        } else if (!ArrayUtils.contains(methodInvocationMethodKeyAllowlist, i)) {
            return null;
        }
        if (zabkVar.u < telemetryConfiguration.getMaxMethodInvocationsLogged()) {
            return telemetryConfiguration;
        }
        return null;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        int version;
        int i;
        int i2;
        int statusCode;
        int errorCode;
        int i3;
        long j;
        long j2;
        GoogleApiManager googleApiManager = this.b;
        if (googleApiManager.d()) {
            RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
            if (config == null || config.getMethodInvocationTelemetryEnabled()) {
                zabk zabkVar = (zabk) googleApiManager.k.get(this.d);
                if (zabkVar == null || !(zabkVar.zaf() instanceof BaseGmsClient)) {
                    return;
                }
                BaseGmsClient baseGmsClient = (BaseGmsClient) zabkVar.zaf();
                long j3 = this.e;
                boolean methodTimingTelemetryEnabled = j3 > 0;
                int gCoreServiceId = baseGmsClient.getGCoreServiceId();
                if (config != null) {
                    methodTimingTelemetryEnabled &= config.getMethodTimingTelemetryEnabled();
                    int batchPeriodMillis = config.getBatchPeriodMillis();
                    int maxMethodInvocationsInBatch = config.getMaxMethodInvocationsInBatch();
                    version = config.getVersion();
                    if (baseGmsClient.hasConnectionInfo() && !baseGmsClient.isConnecting()) {
                        ConnectionTelemetryConfiguration connectionTelemetryConfigurationA = a(zabkVar, baseGmsClient, this.c);
                        if (connectionTelemetryConfigurationA == null) {
                            return;
                        }
                        boolean z = connectionTelemetryConfigurationA.getMethodTimingTelemetryEnabled() && j3 > 0;
                        maxMethodInvocationsInBatch = connectionTelemetryConfigurationA.getMaxMethodInvocationsLogged();
                        methodTimingTelemetryEnabled = z;
                    }
                    i2 = batchPeriodMillis;
                    i = maxMethodInvocationsInBatch;
                } else {
                    version = 0;
                    i = 100;
                    i2 = 5000;
                }
                int iElapsedRealtime = -1;
                if (task.isSuccessful()) {
                    i3 = 0;
                    errorCode = 0;
                } else if (task.isCanceled()) {
                    errorCode = -1;
                    i3 = 100;
                } else {
                    Exception exception = task.getException();
                    if (exception instanceof ApiException) {
                        Status status = ((ApiException) exception).getStatus();
                        statusCode = status.getStatusCode();
                        ConnectionResult connectionResult = status.getConnectionResult();
                        if (connectionResult != null) {
                            errorCode = connectionResult.getErrorCode();
                        }
                        i3 = statusCode;
                    } else {
                        statusCode = TypedValues.TYPE_TARGET;
                    }
                    errorCode = -1;
                    i3 = statusCode;
                }
                if (methodTimingTelemetryEnabled) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.f);
                    j = j3;
                    j2 = jCurrentTimeMillis;
                } else {
                    j = 0;
                    j2 = 0;
                }
                bka bkaVar = new bka(new MethodInvocation(this.c, i3, errorCode, j, j2, null, null, gCoreServiceId, iElapsedRealtime), version, i2, i);
                zar zarVar = googleApiManager.o;
                zarVar.sendMessage(zarVar.obtainMessage(18, bkaVar));
            }
        }
    }
}
