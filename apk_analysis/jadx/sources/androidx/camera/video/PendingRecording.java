package androidx.camera.video;

import android.content.Context;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.core.content.PermissionChecker;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import defpackage.aq5;
import defpackage.e02;
import defpackage.g02;
import defpackage.o22;
import defpackage.r22;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class PendingRecording {
    private final Context applicationContext;
    private Consumer<VideoRecordEvent> eventListener;
    private boolean isAudioEnabled;
    private boolean isAudioInitialMuted;
    private boolean isPersistent;
    private Executor listenerExecutor;
    private final OutputOptions outputOptions;
    private final Recorder recorder;

    public PendingRecording(Context context, Recorder recorder, OutputOptions outputOptions) {
        context.getClass();
        recorder.getClass();
        outputOptions.getClass();
        this.recorder = recorder;
        this.outputOptions = outputOptions;
        Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
        persistentApplicationContext.getClass();
        this.applicationContext = persistentApplicationContext;
    }

    public static /* synthetic */ PendingRecording withAudioEnabled$default(PendingRecording pendingRecording, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return pendingRecording.withAudioEnabled(z);
    }

    public final PendingRecording asPersistentRecording() {
        this.isPersistent = true;
        return this;
    }

    public final Context getApplicationContext() {
        return this.applicationContext;
    }

    public final Consumer<VideoRecordEvent> getEventListener() {
        return this.eventListener;
    }

    public final Executor getListenerExecutor() {
        return this.listenerExecutor;
    }

    public final OutputOptions getOutputOptions() {
        return this.outputOptions;
    }

    public final Recorder getRecorder() {
        return this.recorder;
    }

    public final boolean isAudioEnabled() {
        return this.isAudioEnabled;
    }

    public final boolean isAudioInitialMuted() {
        return this.isAudioInitialMuted;
    }

    public final boolean isPersistent() {
        return this.isPersistent;
    }

    public final Object start(Consumer<VideoRecordEvent> consumer, e02<? super Recording> e02Var) {
        Executor executorDirectExecutor;
        o22.a aVar = e02Var.getContext().get(g02.a.b);
        r22 r22Var = aVar instanceof r22 ? (r22) aVar : null;
        if (r22Var != null) {
            executorDirectExecutor = aq5.a(r22Var);
        } else {
            executorDirectExecutor = CameraXExecutors.directExecutor();
            executorDirectExecutor.getClass();
        }
        return start(executorDirectExecutor, consumer);
    }

    public final PendingRecording withAudioEnabled(boolean z) {
        if (PermissionChecker.checkSelfPermission(this.applicationContext, "android.permission.RECORD_AUDIO") == -1) {
            throw new SecurityException("Attempted to enable audio for recording but application does not have RECORD_AUDIO permission granted.");
        }
        Preconditions.checkState(this.recorder.isAudioSupported(), "The Recorder this recording is associated to doesn't support audio.");
        this.isAudioEnabled = true;
        this.isAudioInitialMuted = z;
        return this;
    }

    public final PendingRecording withAudioEnabled() {
        return withAudioEnabled$default(this, false, 1, null);
    }

    public final Recording start(Executor executor, Consumer<VideoRecordEvent> consumer) {
        executor.getClass();
        consumer.getClass();
        Preconditions.checkNotNull(executor, "Listener Executor can't be null.");
        Preconditions.checkNotNull(consumer, "Event listener can't be null");
        this.listenerExecutor = executor;
        this.eventListener = consumer;
        Recording recordingStart = this.recorder.start(this);
        recordingStart.getClass();
        return recordingStart;
    }
}
