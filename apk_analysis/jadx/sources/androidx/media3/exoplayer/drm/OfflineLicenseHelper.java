package androidx.media3.exoplayer.drm;

import android.net.Uri;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import defpackage.i29;
import defpackage.nr7;
import defpackage.o8;
import defpackage.su5;
import defpackage.tu;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineLicenseHelper {
    private static final Format FORMAT_WITH_EMPTY_DRM_INIT_DATA = new Format.Builder().setDrmInitData(new DrmInitData(new DrmInitData.SchemeData[0])).build();
    private final ConditionVariable drmListenerConditionVariable;
    private final DefaultDrmSessionManager drmSessionManager;
    private final DrmSessionEventListener.EventDispatcher eventDispatcher;
    private final Handler handler;
    private final HandlerThread handlerThread;

    public OfflineLicenseHelper(DefaultDrmSessionManager defaultDrmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.drmSessionManager = defaultDrmSessionManager;
        this.eventDispatcher = eventDispatcher;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:OfflineLicenseHelper");
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper());
        this.drmListenerConditionVariable = new ConditionVariable();
        eventDispatcher.addEventListener(new Handler(handlerThread.getLooper()), new DrmSessionEventListener() { // from class: androidx.media3.exoplayer.drm.OfflineLicenseHelper.1
            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmKeysLoaded(int i, MediaSource.MediaPeriodId mediaPeriodId, KeyRequestInfo keyRequestInfo) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmKeysRemoved(int i, MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmKeysRestored(int i, MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmSessionManagerError(int i, MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DrmSession acquireFirstSessionOnHandlerThread(final int i, final byte[] bArr, final Format format) {
        format.drmInitData.getClass();
        final nr7 nr7Var = new nr7();
        this.drmListenerConditionVariable.close();
        this.handler.post(new Runnable() { // from class: qu5
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$acquireFirstSessionOnHandlerThread$2(i, bArr, nr7Var, format);
            }
        });
        try {
            final DrmSession drmSession = (DrmSession) nr7Var.get();
            this.drmListenerConditionVariable.block();
            final nr7 nr7Var2 = new nr7();
            this.handler.post(new Runnable() { // from class: ru5
                @Override // java.lang.Runnable
                public final void run() {
                    this.lambda$acquireFirstSessionOnHandlerThread$3(drmSession, nr7Var2);
                }
            });
            try {
                if (nr7Var2.get() == 0) {
                    return drmSession;
                }
                throw ((DrmSession.DrmSessionException) nr7Var2.get());
            } catch (InterruptedException | ExecutionException e) {
                i29.a(e);
                return null;
            }
        } catch (InterruptedException | ExecutionException e2) {
            i29.a(e2);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private byte[] acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(int i, byte[] bArr, Format format) {
        DrmSession drmSessionAcquireFirstSessionOnHandlerThread = acquireFirstSessionOnHandlerThread(i, bArr, format);
        nr7 nr7Var = new nr7();
        this.handler.post(new tu(this, nr7Var, drmSessionAcquireFirstSessionOnHandlerThread, 2));
        try {
            try {
                byte[] bArr2 = (byte[]) nr7Var.get();
                bArr2.getClass();
                releaseManagerOnHandlerThread();
                return bArr2;
            } catch (Throwable th) {
                releaseManagerOnHandlerThread();
                throw th;
            }
        } catch (InterruptedException | ExecutionException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$acquireFirstSessionOnHandlerThread$2(int i, byte[] bArr, nr7 nr7Var, Format format) {
        try {
            DefaultDrmSessionManager defaultDrmSessionManager = this.drmSessionManager;
            Looper looperMyLooper = Looper.myLooper();
            looperMyLooper.getClass();
            defaultDrmSessionManager.setPlayer(looperMyLooper, PlayerId.UNSET);
            this.drmSessionManager.prepare();
            try {
                this.drmSessionManager.setMode(i, bArr);
                DrmSession drmSessionAcquireSession = this.drmSessionManager.acquireSession(this.eventDispatcher, format);
                drmSessionAcquireSession.getClass();
                nr7Var.l(drmSessionAcquireSession);
            } catch (Throwable th) {
                this.drmSessionManager.release();
                throw th;
            }
        } catch (Throwable th2) {
            nr7Var.m(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acquireFirstSessionOnHandlerThread$3(DrmSession drmSession, nr7 nr7Var) {
        try {
            DrmSession.DrmSessionException error = drmSession.getError();
            if (drmSession.getState() == 1) {
                drmSession.release(this.eventDispatcher);
                this.drmSessionManager.release();
            }
            nr7Var.l(error);
        } catch (Throwable th) {
            nr7Var.m(th);
            drmSession.release(this.eventDispatcher);
            this.drmSessionManager.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1(nr7 nr7Var, DrmSession drmSession) {
        try {
            nr7Var.l(drmSession.getOfflineLicenseKeySetId());
        } catch (Throwable th) {
            try {
                nr7Var.m(th);
            } finally {
                drmSession.release(this.eventDispatcher);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$getLicenseDurationRemainingSec$0(nr7 nr7Var, DrmSession drmSession) {
        try {
            Pair<Long, Long> licenseDurationRemainingSec = WidevineUtil.getLicenseDurationRemainingSec(drmSession);
            licenseDurationRemainingSec.getClass();
            nr7Var.l(licenseDurationRemainingSec);
        } catch (Throwable th) {
            try {
                nr7Var.m(th);
            } finally {
                drmSession.release(this.eventDispatcher);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releaseManagerOnHandlerThread$4(nr7 nr7Var) {
        try {
            this.drmSessionManager.release();
            nr7Var.l(null);
        } catch (Throwable th) {
            nr7Var.m(th);
        }
    }

    private static OfflineLicenseHelper newWidevineInstance(String str, boolean z, Map<String, String> map, DataSource.Factory factory, Map<String, String> map2, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        HttpMediaDrmCallback httpMediaDrmCallback = new HttpMediaDrmCallback(str, z, factory);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpMediaDrmCallback.setKeyRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        return new OfflineLicenseHelper(new DefaultDrmSessionManager.Builder().setKeyRequestParameters(map2).build(httpMediaDrmCallback), eventDispatcher);
    }

    private void releaseManagerOnHandlerThread() {
        nr7 nr7Var = new nr7();
        this.handler.post(new su5(0, this, nr7Var));
        try {
            nr7Var.get();
        } catch (InterruptedException | ExecutionException e) {
            i29.a(e);
        }
    }

    public synchronized byte[] downloadLicense(Format format) {
        o8.e(format.drmInitData != null);
        return acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(2, null, format);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized Pair<Long, Long> getLicenseDurationRemainingSec(byte[] bArr) {
        Pair<Long, Long> pair;
        bArr.getClass();
        try {
            final DrmSession drmSessionAcquireFirstSessionOnHandlerThread = acquireFirstSessionOnHandlerThread(1, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
            final nr7 nr7Var = new nr7();
            this.handler.post(new Runnable() { // from class: pu5
                @Override // java.lang.Runnable
                public final void run() {
                    this.lambda$getLicenseDurationRemainingSec$0(nr7Var, drmSessionAcquireFirstSessionOnHandlerThread);
                }
            });
            try {
                try {
                    pair = (Pair) nr7Var.get();
                    releaseManagerOnHandlerThread();
                } catch (Throwable th) {
                    releaseManagerOnHandlerThread();
                    throw th;
                }
            } catch (InterruptedException | ExecutionException e) {
                throw new IllegalStateException(e);
            }
        } catch (DrmSession.DrmSessionException e2) {
            if (e2.getCause() instanceof KeysExpiredException) {
                return Pair.create(0L, 0L);
            }
            throw e2;
        }
        return pair;
    }

    public void release() {
        this.handlerThread.quit();
    }

    public synchronized void releaseLicense(byte[] bArr) {
        bArr.getClass();
        acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(3, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }

    public synchronized byte[] renewLicense(byte[] bArr) {
        bArr.getClass();
        return acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(2, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, false, factory, eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, z, factory, null, eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z, DataSource.Factory factory, Map<String, String> map, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, z, null, factory, map, eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(MediaItem.DrmConfiguration drmConfiguration, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        o8.e(drmConfiguration.scheme.equals(C.WIDEVINE_UUID));
        Uri uri = drmConfiguration.licenseUri;
        uri.getClass();
        return newWidevineInstance(uri.toString(), drmConfiguration.forceDefaultLicenseUri, drmConfiguration.licenseRequestHeaders, factory, null, eventDispatcher);
    }
}
