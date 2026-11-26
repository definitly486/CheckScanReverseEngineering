package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.pipe.AudioRestrictionMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.config.CameraPipeJob;
import androidx.camera.camera2.pipe.core.CoroutineMutex;
import androidx.camera.camera2.pipe.core.MutexesKt;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import defpackage.fg;
import defpackage.j59;
import defpackage.jd8;
import defpackage.ka;
import defpackage.mb4;
import defpackage.o22;
import defpackage.w22;
import defpackage.y22;
import defpackage.z22;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class AudioRestrictionControllerImpl implements AudioRestrictionController {
    private final CopyOnWriteArrayList<AudioRestrictionController.Listener> activeListeners;
    private final Map<CameraGraph, AudioRestrictionMode> audioRestrictionModeMap;
    private final CoroutineMutex coroutineMutex;
    private AudioRestrictionMode globalAudioRestrictionMode;
    private final Object lock;
    private final y22 scope;

    public AudioRestrictionControllerImpl(Threads threads, CameraPipeLifetime cameraPipeLifetime, @CameraPipeJob mb4 mb4Var) {
        threads.getClass();
        cameraPipeLifetime.getClass();
        mb4Var.getClass();
        this.scope = z22.a(o22.a.C0306a.d(new jd8(mb4Var), threads.getLightweightDispatcher().plus(new w22("CXCP-AudioRestrictionControllerImpl"))));
        this.coroutineMutex = new CoroutineMutex();
        this.lock = new Object();
        this.audioRestrictionModeMap = new LinkedHashMap();
        this.activeListeners = new CopyOnWriteArrayList<>();
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new ka(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(AudioRestrictionControllerImpl audioRestrictionControllerImpl) {
        z22.b(audioRestrictionControllerImpl.scope, null);
    }

    /* JADX INFO: renamed from: computeAudioRestrictionMode-4o0Og1A, reason: not valid java name */
    private final AudioRestrictionMode m753computeAudioRestrictionMode4o0Og1A() {
        Map<CameraGraph, AudioRestrictionMode> map = this.audioRestrictionModeMap;
        AudioRestrictionMode.Companion companion = AudioRestrictionMode.Companion;
        if (!map.containsValue(AudioRestrictionMode.m139boximpl(companion.m148getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE()))) {
            AudioRestrictionMode audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A = mo750getGlobalAudioRestrictionMode4o0Og1A();
            if (!(audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A == null ? false : AudioRestrictionMode.m142equalsimpl0(audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A.m145unboximpl(), companion.m148getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE()))) {
                if (!this.audioRestrictionModeMap.containsValue(AudioRestrictionMode.m139boximpl(companion.m147getAUDIO_RESTRICTION_VIBRATION_b5Q8KE()))) {
                    AudioRestrictionMode audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A2 = mo750getGlobalAudioRestrictionMode4o0Og1A();
                    if (!(audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A2 == null ? false : AudioRestrictionMode.m142equalsimpl0(audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A2.m145unboximpl(), companion.m147getAUDIO_RESTRICTION_VIBRATION_b5Q8KE()))) {
                        if (!this.audioRestrictionModeMap.containsValue(AudioRestrictionMode.m139boximpl(companion.m146getAUDIO_RESTRICTION_NONE_b5Q8KE()))) {
                            AudioRestrictionMode audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A3 = mo750getGlobalAudioRestrictionMode4o0Og1A();
                            if (!(audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A3 != null ? AudioRestrictionMode.m142equalsimpl0(audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A3.m145unboximpl(), companion.m146getAUDIO_RESTRICTION_NONE_b5Q8KE()) : false)) {
                                return null;
                            }
                        }
                        return AudioRestrictionMode.m139boximpl(companion.m146getAUDIO_RESTRICTION_NONE_b5Q8KE());
                    }
                }
                return AudioRestrictionMode.m139boximpl(companion.m147getAUDIO_RESTRICTION_VIBRATION_b5Q8KE());
            }
        }
        return AudioRestrictionMode.m139boximpl(companion.m148getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE());
    }

    /* JADX INFO: renamed from: updateListenersMode-3NUV5dA, reason: not valid java name */
    private final void m754updateListenersMode3NUV5dA(AudioRestrictionMode audioRestrictionMode) {
        AudioRestrictionMode audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A = m753computeAudioRestrictionMode4o0Og1A();
        if (audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A == null || audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A.equals(audioRestrictionMode)) {
            return;
        }
        MutexesKt.withLockLaunch(this.coroutineMutex, this.scope, new AudioRestrictionControllerImpl$updateListenersMode$1(this, audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A, null));
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    public void addListener(AudioRestrictionController.Listener listener) {
        listener.getClass();
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        synchronized (this.lock) {
            try {
                this.activeListeners.add(listener);
                AudioRestrictionMode audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A = m753computeAudioRestrictionMode4o0Og1A();
                if (audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A != null) {
                    MutexesKt.withLockLaunch(this.coroutineMutex, this.scope, new AudioRestrictionControllerImpl$addListener$1$1(listener, audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A, null));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    /* JADX INFO: renamed from: getGlobalAudioRestrictionMode-4o0Og1A */
    public AudioRestrictionMode mo750getGlobalAudioRestrictionMode4o0Og1A() {
        AudioRestrictionMode audioRestrictionMode;
        synchronized (this.lock) {
            audioRestrictionMode = this.globalAudioRestrictionMode;
        }
        return audioRestrictionMode;
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    public void removeCameraGraph(CameraGraph cameraGraph) {
        cameraGraph.getClass();
        synchronized (this.lock) {
            AudioRestrictionMode audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A = m753computeAudioRestrictionMode4o0Og1A();
            this.audioRestrictionModeMap.remove(cameraGraph);
            m754updateListenersMode3NUV5dA(audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A);
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    public void removeListener(AudioRestrictionController.Listener listener) {
        listener.getClass();
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        this.activeListeners.remove(listener);
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    /* JADX INFO: renamed from: setGlobalAudioRestrictionMode-3NUV5dA */
    public void mo751setGlobalAudioRestrictionMode3NUV5dA(AudioRestrictionMode audioRestrictionMode) {
        if (audioRestrictionMode == null) {
            fg.c("Unsupported setting AudioRestrictionMode to null.");
            return;
        }
        synchronized (this.lock) {
            AudioRestrictionMode audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A = m753computeAudioRestrictionMode4o0Og1A();
            this.globalAudioRestrictionMode = audioRestrictionMode;
            m754updateListenersMode3NUV5dA(audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A);
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    /* JADX INFO: renamed from: updateCameraGraphAudioRestrictionMode-TyYSX5E */
    public void mo752updateCameraGraphAudioRestrictionModeTyYSX5E(CameraGraph cameraGraph, int i) {
        cameraGraph.getClass();
        synchronized (this.lock) {
            AudioRestrictionMode audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A = m753computeAudioRestrictionMode4o0Og1A();
            this.audioRestrictionModeMap.put(cameraGraph, AudioRestrictionMode.m139boximpl(i));
            m754updateListenersMode3NUV5dA(audioRestrictionModeM753computeAudioRestrictionMode4o0Og1A);
            j59 j59Var = j59.a;
        }
    }
}
