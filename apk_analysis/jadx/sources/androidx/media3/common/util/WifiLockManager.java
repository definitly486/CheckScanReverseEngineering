package androidx.media3.common.util;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Looper;
import com.tapjoy.TJDeviceNetworkKt;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class WifiLockManager {
    private static final String TAG = "WifiLockManager";
    private static final int UNREACTIVE_WIFILOCK_HANDLER_RELEASE_DELAY_MS = 1000;
    private static final String WIFI_LOCK_TAG = "ExoPlayer:WifiLockManager";
    private boolean enabled;
    private final HandlerWrapper mainHandler;
    private boolean stayAwake;
    private final HandlerWrapper wifiLockHandler;
    private final WifiLockManagerInternal wifiLockManagerInternal;

    public static final class WifiLockManagerInternal {
        private final Context applicationContext;
        private WifiManager.WifiLock wifiLock;

        public WifiLockManagerInternal(Context context) {
            this.applicationContext = context;
        }

        public static /* synthetic */ void access$100(WifiLockManagerInternal wifiLockManagerInternal) {
            wifiLockManagerInternal.forceReleaseWifiLock();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void forceReleaseWifiLock() {
            WifiManager.WifiLock wifiLock = this.wifiLock;
            if (wifiLock != null) {
                wifiLock.release();
            }
        }

        public void updateWifiLock(boolean z, boolean z2) {
            if (z && this.wifiLock == null) {
                if (this.applicationContext.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                    Log.w(WifiLockManager.TAG, "WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                    return;
                }
                WifiManager wifiManager = (WifiManager) this.applicationContext.getApplicationContext().getSystemService(TJDeviceNetworkKt.TJC_CONNECTION_TYPE_WIFI);
                if (wifiManager == null) {
                    Log.w(WifiLockManager.TAG, "WifiManager is null, therefore not creating the WifiLock.");
                    return;
                } else {
                    WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, WifiLockManager.WIFI_LOCK_TAG);
                    this.wifiLock = wifiLockCreateWifiLock;
                    wifiLockCreateWifiLock.setReferenceCounted(false);
                }
            }
            if (this.wifiLock == null) {
                return;
            }
            boolean zShouldAcquireWifilock = WifiLockManager.shouldAcquireWifilock(z, z2);
            WifiManager.WifiLock wifiLock = this.wifiLock;
            if (zShouldAcquireWifilock) {
                wifiLock.acquire();
            } else {
                wifiLock.release();
            }
        }
    }

    public WifiLockManager(Context context, Looper looper, Clock clock) {
        this.wifiLockManagerInternal = new WifiLockManagerInternal(context.getApplicationContext());
        this.wifiLockHandler = clock.createHandler(looper, null);
        this.mainHandler = clock.createHandler(Looper.getMainLooper(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWifiLock$0(boolean z, boolean z2) {
        this.wifiLockManagerInternal.updateWifiLock(z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWifiLock$2(Runnable runnable, boolean z, boolean z2) {
        this.mainHandler.removeCallbacks(runnable);
        this.wifiLockManagerInternal.updateWifiLock(z, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.media3.common.util.d, java.lang.Runnable] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void postUpdateWifiLock(final boolean z, final boolean z2) {
        if (shouldAcquireWifilock(z, z2)) {
            this.wifiLockHandler.post(new Runnable() { // from class: fi9
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.lambda$postUpdateWifiLock$0(z, z2);
                }
            });
            return;
        }
        final WifiLockManagerInternal wifiLockManagerInternal = this.wifiLockManagerInternal;
        Objects.requireNonNull(wifiLockManagerInternal);
        final ?? r1 = new Runnable() { // from class: androidx.media3.common.util.d
            @Override // java.lang.Runnable
            public final void run() {
                WifiLockManager.WifiLockManagerInternal.access$100(wifiLockManagerInternal);
            }
        };
        this.mainHandler.postDelayed(r1, 1000L);
        this.wifiLockHandler.post(new Runnable() { // from class: gi9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$postUpdateWifiLock$2(r1, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldAcquireWifilock(boolean z, boolean z2) {
        return z && z2;
    }

    public void setEnabled(boolean z) {
        if (this.enabled == z) {
            return;
        }
        this.enabled = z;
        postUpdateWifiLock(z, this.stayAwake);
    }

    public void setStayAwake(boolean z) {
        if (this.stayAwake == z) {
            return;
        }
        this.stayAwake = z;
        if (this.enabled) {
            postUpdateWifiLock(true, z);
        }
    }
}
