package androidx.media3.common.util;

import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class WakeLockManager {
    private static final String TAG = "WakeLockManager";
    private static final int UNREACTIVE_WAKELOCK_HANDLER_RELEASE_DELAY_MS = 1000;
    private static final String WAKE_LOCK_TAG = "ExoPlayer:WakeLockManager";
    private boolean enabled;
    private final HandlerWrapper mainHandler;
    private boolean stayAwake;
    private final HandlerWrapper wakeLockHandler;
    private final WakeLockManagerInternal wakeLockManagerInternal;

    public static final class WakeLockManagerInternal {
        private final Context applicationContext;
        private PowerManager.WakeLock wakeLock;

        public WakeLockManagerInternal(Context context) {
            this.applicationContext = context;
        }

        public static /* synthetic */ void access$200(WakeLockManagerInternal wakeLockManagerInternal) {
            wakeLockManagerInternal.forceReleaseWakeLock();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void forceReleaseWakeLock() {
            PowerManager.WakeLock wakeLock = this.wakeLock;
            if (wakeLock != null) {
                wakeLock.release();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void updateWakeLock(boolean z, boolean z2) {
            if (z) {
                if (this.wakeLock == null) {
                    if (this.applicationContext.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                        Log.w(WakeLockManager.TAG, "WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                        return;
                    }
                    PowerManager powerManager = (PowerManager) this.applicationContext.getSystemService("power");
                    if (powerManager == null) {
                        Log.w(WakeLockManager.TAG, "PowerManager is null, therefore not creating the WakeLock.");
                        return;
                    } else {
                        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, WakeLockManager.WAKE_LOCK_TAG);
                        this.wakeLock = wakeLockNewWakeLock;
                        wakeLockNewWakeLock.setReferenceCounted(false);
                    }
                }
            }
            if (this.wakeLock == null) {
                return;
            }
            boolean zShouldAcquireWakelock = WakeLockManager.shouldAcquireWakelock(z, z2);
            PowerManager.WakeLock wakeLock = this.wakeLock;
            if (zShouldAcquireWakelock) {
                wakeLock.acquire();
            } else {
                wakeLock.release();
            }
        }
    }

    public WakeLockManager(Context context, Looper looper, Clock clock) {
        this.wakeLockManagerInternal = new WakeLockManagerInternal(context.getApplicationContext());
        this.wakeLockHandler = clock.createHandler(looper, null);
        this.mainHandler = clock.createHandler(Looper.getMainLooper(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWakeLock$0(boolean z, boolean z2) {
        this.wakeLockManagerInternal.updateWakeLock(z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWakeLock$2(Runnable runnable, boolean z, boolean z2) {
        this.mainHandler.removeCallbacks(runnable);
        this.wakeLockManagerInternal.updateWakeLock(z, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.media3.common.util.c, java.lang.Runnable] */
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
    private void postUpdateWakeLock(final boolean z, final boolean z2) {
        if (shouldAcquireWakelock(z, z2)) {
            this.wakeLockHandler.post(new Runnable() { // from class: nf9
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.lambda$postUpdateWakeLock$0(z, z2);
                }
            });
            return;
        }
        final WakeLockManagerInternal wakeLockManagerInternal = this.wakeLockManagerInternal;
        Objects.requireNonNull(wakeLockManagerInternal);
        final ?? r1 = new Runnable() { // from class: androidx.media3.common.util.c
            @Override // java.lang.Runnable
            public final void run() {
                WakeLockManager.WakeLockManagerInternal.access$200(wakeLockManagerInternal);
            }
        };
        this.mainHandler.postDelayed(r1, 1000L);
        this.wakeLockHandler.post(new Runnable() { // from class: of9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$postUpdateWakeLock$2(r1, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldAcquireWakelock(boolean z, boolean z2) {
        return z && z2;
    }

    public void setEnabled(boolean z) {
        if (this.enabled == z) {
            return;
        }
        this.enabled = z;
        postUpdateWakeLock(z, this.stayAwake);
    }

    public void setStayAwake(boolean z) {
        if (this.stayAwake == z) {
            return;
        }
        this.stayAwake = z;
        if (this.enabled) {
            postUpdateWakeLock(true, z);
        }
    }
}
