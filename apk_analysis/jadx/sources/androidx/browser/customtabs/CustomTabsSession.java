package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.widget.RemoteViews;
import defpackage.oz3;
import defpackage.qz3;
import defpackage.rz3;
import defpackage.sz3;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class CustomTabsSession {
    private static final String TAG = "CustomTabsSession";
    static final String TARGET_ORIGIN_KEY = "target_origin";
    private final qz3 mCallback;
    private final ComponentName mComponentName;
    private final PendingIntent mId;
    private final Object mLock = new Object();
    private final rz3 mService;

    /* JADX INFO: renamed from: androidx.browser.customtabs.CustomTabsSession$1, reason: invalid class name */
    public class AnonymousClass1 extends sz3.a {
        private final Handler mHandler = new Handler(Looper.getMainLooper());
        final /* synthetic */ EngagementSignalsCallback val$callback;

        public AnonymousClass1(EngagementSignalsCallback engagementSignalsCallback) {
            this.val$callback = engagementSignalsCallback;
        }

        @Override // defpackage.sz3
        public int getInterfaceVersion() {
            return 1;
        }

        @Override // defpackage.sz3
        public void onGreatestScrollPercentageIncreased(final int i, final Bundle bundle) {
            Handler handler = this.mHandler;
            final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.g
                @Override // java.lang.Runnable
                public final void run() {
                    engagementSignalsCallback.onGreatestScrollPercentageIncreased(i, bundle);
                }
            });
        }

        @Override // defpackage.sz3
        public void onSessionEnded(final boolean z, final Bundle bundle) {
            Handler handler = this.mHandler;
            final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.f
                @Override // java.lang.Runnable
                public final void run() {
                    engagementSignalsCallback.onSessionEnded(z, bundle);
                }
            });
        }

        @Override // defpackage.sz3
        public void onVerticalScrollEvent(final boolean z, final Bundle bundle) {
            Handler handler = this.mHandler;
            final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.h
                @Override // java.lang.Runnable
                public final void run() {
                    engagementSignalsCallback.onVerticalScrollEvent(z, bundle);
                }
            });
        }
    }

    /* JADX INFO: renamed from: androidx.browser.customtabs.CustomTabsSession$2, reason: invalid class name */
    public class AnonymousClass2 extends sz3.a {
        private final Executor mExecutor;
        final /* synthetic */ EngagementSignalsCallback val$callback;
        final /* synthetic */ Executor val$executor;

        public AnonymousClass2(Executor executor, EngagementSignalsCallback engagementSignalsCallback) {
            this.val$executor = executor;
            this.val$callback = engagementSignalsCallback;
            this.mExecutor = executor;
        }

        @Override // defpackage.sz3
        public int getInterfaceVersion() {
            return 1;
        }

        @Override // defpackage.sz3
        public void onGreatestScrollPercentageIncreased(final int i, final Bundle bundle) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                Executor executor = this.mExecutor;
                final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
                executor.execute(new Runnable() { // from class: androidx.browser.customtabs.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        engagementSignalsCallback.onGreatestScrollPercentageIncreased(i, bundle);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        @Override // defpackage.sz3
        public void onSessionEnded(final boolean z, final Bundle bundle) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                Executor executor = this.mExecutor;
                final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
                executor.execute(new Runnable() { // from class: androidx.browser.customtabs.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        engagementSignalsCallback.onSessionEnded(z, bundle);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        @Override // defpackage.sz3
        public void onVerticalScrollEvent(final boolean z, final Bundle bundle) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                Executor executor = this.mExecutor;
                final EngagementSignalsCallback engagementSignalsCallback = this.val$callback;
                executor.execute(new Runnable() { // from class: androidx.browser.customtabs.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        engagementSignalsCallback.onVerticalScrollEvent(z, bundle);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    public static class MockSession extends rz3.a {
        @Override // defpackage.rz3
        public Bundle extraCommand(String str, Bundle bundle) {
            return null;
        }

        @Override // defpackage.rz3
        public int getInterfaceVersion() {
            return 1;
        }

        @Override // defpackage.rz3
        public boolean isEngagementSignalsApiAvailable(qz3 qz3Var, Bundle bundle) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean mayLaunchUrl(qz3 qz3Var, Uri uri, Bundle bundle, List<Bundle> list) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean newAuthTabSession(oz3 oz3Var, Bundle bundle) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean newSession(qz3 qz3Var) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean newSessionWithExtras(qz3 qz3Var, Bundle bundle) {
            return false;
        }

        @Override // defpackage.rz3
        public int postMessage(qz3 qz3Var, String str, Bundle bundle) {
            return 0;
        }

        @Override // defpackage.rz3
        public void prefetch(qz3 qz3Var, Uri uri, Bundle bundle) {
        }

        @Override // defpackage.rz3
        public void prefetchWithMultipleUrls(qz3 qz3Var, List<Uri> list, Bundle bundle) {
        }

        @Override // defpackage.rz3
        public boolean receiveFile(qz3 qz3Var, Uri uri, int i, Bundle bundle) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean requestPostMessageChannel(qz3 qz3Var, Uri uri) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean requestPostMessageChannelWithExtras(qz3 qz3Var, Uri uri, Bundle bundle) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean setEngagementSignalsCallback(qz3 qz3Var, IBinder iBinder, Bundle bundle) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean updateVisuals(qz3 qz3Var, Bundle bundle) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean validateRelationship(qz3 qz3Var, int i, Uri uri, Bundle bundle) {
            return false;
        }

        @Override // defpackage.rz3
        public boolean warmup(long j) {
            return false;
        }
    }

    public static class PendingSession {
        private final CustomTabsCallback mCallback;
        private final PendingIntent mId;

        public PendingSession(CustomTabsCallback customTabsCallback, PendingIntent pendingIntent) {
            this.mCallback = customTabsCallback;
            this.mId = pendingIntent;
        }

        public CustomTabsCallback getCallback() {
            return this.mCallback;
        }

        public PendingIntent getId() {
            return this.mId;
        }
    }

    public CustomTabsSession(rz3 rz3Var, qz3 qz3Var, ComponentName componentName, PendingIntent pendingIntent) {
        this.mService = rz3Var;
        this.mCallback = qz3Var;
        this.mComponentName = componentName;
        this.mId = pendingIntent;
    }

    private void addIdToBundle(Bundle bundle) {
        PendingIntent pendingIntent = this.mId;
        if (pendingIntent != null) {
            bundle.putParcelable(CustomTabsIntent.EXTRA_SESSION_ID, pendingIntent);
        }
    }

    private Bundle createBundleWithId(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        addIdToBundle(bundle2);
        return bundle2;
    }

    private sz3.a createEngagementSignalsCallbackWrapper(EngagementSignalsCallback engagementSignalsCallback) {
        return new AnonymousClass1(engagementSignalsCallback);
    }

    public static CustomTabsSession createMockSessionForTesting(ComponentName componentName) {
        return new CustomTabsSession(new MockSession(), new CustomTabsSessionToken.MockCallback(), componentName, null);
    }

    private Bundle createPostMessageExtraBundle(Uri uri) {
        Bundle bundle = new Bundle();
        if (uri != null) {
            bundle.putParcelable(TARGET_ORIGIN_KEY, uri);
        }
        if (this.mId != null) {
            addIdToBundle(bundle);
        }
        if (bundle.isEmpty()) {
            return null;
        }
        return bundle;
    }

    public IBinder getBinder() {
        return this.mCallback.asBinder();
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    public PendingIntent getId() {
        return this.mId;
    }

    public boolean isEngagementSignalsApiAvailable(Bundle bundle) {
        try {
            return this.mService.isEngagementSignalsApiAvailable(this.mCallback, createBundleWithId(bundle));
        } catch (SecurityException e) {
            throw new UnsupportedOperationException("This method isn't supported by the Custom Tabs implementation.", e);
        }
    }

    public boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        try {
            return this.mService.mayLaunchUrl(this.mCallback, uri, createBundleWithId(bundle), list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public int postMessage(String str, Bundle bundle) {
        int iPostMessage;
        Bundle bundleCreateBundleWithId = createBundleWithId(bundle);
        synchronized (this.mLock) {
            try {
                try {
                    iPostMessage = this.mService.postMessage(this.mCallback, str, bundleCreateBundleWithId);
                } catch (RemoteException unused) {
                    return -2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iPostMessage;
    }

    public void prefetch(Uri uri, PrefetchOptions prefetchOptions) {
        try {
            this.mService.prefetch(this.mCallback, uri, createBundleWithId(prefetchOptions.toBundle()));
        } catch (RemoteException unused) {
        }
    }

    public boolean receiveFile(Uri uri, int i, Bundle bundle) {
        try {
            return this.mService.receiveFile(this.mCallback, uri, i, createBundleWithId(bundle));
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean requestPostMessageChannel(Uri uri, Uri uri2, Bundle bundle) {
        try {
            Bundle bundleCreatePostMessageExtraBundle = createPostMessageExtraBundle(uri2);
            if (bundleCreatePostMessageExtraBundle == null) {
                return this.mService.requestPostMessageChannel(this.mCallback, uri);
            }
            bundle.putAll(bundleCreatePostMessageExtraBundle);
            return this.mService.requestPostMessageChannelWithExtras(this.mCallback, uri, bundle);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean setActionButton(Bitmap bitmap, String str) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(CustomTabsIntent.KEY_ICON, bitmap);
        bundle.putString(CustomTabsIntent.KEY_DESCRIPTION, str);
        Bundle bundle2 = new Bundle();
        bundle2.putBundle(CustomTabsIntent.EXTRA_ACTION_BUTTON_BUNDLE, bundle);
        addIdToBundle(bundle);
        try {
            return this.mService.updateVisuals(this.mCallback, bundle2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean setEngagementSignalsCallback(EngagementSignalsCallback engagementSignalsCallback, Bundle bundle) {
        try {
            return this.mService.setEngagementSignalsCallback(this.mCallback, createEngagementSignalsCallbackWrapper(engagementSignalsCallback).asBinder(), createBundleWithId(bundle));
        } catch (SecurityException e) {
            throw new UnsupportedOperationException("This method isn't supported by the Custom Tabs implementation.", e);
        }
    }

    public boolean setSecondaryToolbarSwipeUpGesture(PendingIntent pendingIntent) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(CustomTabsIntent.EXTRA_SECONDARY_TOOLBAR_SWIPE_UP_GESTURE, pendingIntent);
        addIdToBundle(bundle);
        try {
            return this.mService.updateVisuals(this.mCallback, bundle);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean setSecondaryToolbarViews(RemoteViews remoteViews, int[] iArr, PendingIntent pendingIntent) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(CustomTabsIntent.EXTRA_REMOTEVIEWS, remoteViews);
        bundle.putIntArray(CustomTabsIntent.EXTRA_REMOTEVIEWS_VIEW_IDS, iArr);
        bundle.putParcelable(CustomTabsIntent.EXTRA_REMOTEVIEWS_PENDINGINTENT, pendingIntent);
        addIdToBundle(bundle);
        try {
            return this.mService.updateVisuals(this.mCallback, bundle);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public boolean setToolbarItem(int i, Bitmap bitmap, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt(CustomTabsIntent.KEY_ID, i);
        bundle.putParcelable(CustomTabsIntent.KEY_ICON, bitmap);
        bundle.putString(CustomTabsIntent.KEY_DESCRIPTION, str);
        Bundle bundle2 = new Bundle();
        bundle2.putBundle(CustomTabsIntent.EXTRA_ACTION_BUTTON_BUNDLE, bundle);
        addIdToBundle(bundle2);
        try {
            return this.mService.updateVisuals(this.mCallback, bundle2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean validateRelationship(int i, Uri uri, Bundle bundle) {
        if (i >= 1 && i <= 2) {
            try {
                return this.mService.validateRelationship(this.mCallback, i, uri, createBundleWithId(bundle));
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    private sz3.a createEngagementSignalsCallbackWrapper(EngagementSignalsCallback engagementSignalsCallback, Executor executor) {
        return new AnonymousClass2(executor, engagementSignalsCallback);
    }

    public void prefetch(List<Uri> list, PrefetchOptions prefetchOptions) {
        try {
            this.mService.prefetchWithMultipleUrls(this.mCallback, list, createBundleWithId(prefetchOptions.toBundle()));
        } catch (RemoteException unused) {
        }
    }

    public boolean requestPostMessageChannel(Uri uri) {
        return requestPostMessageChannel(uri, null, new Bundle());
    }

    public boolean setEngagementSignalsCallback(Executor executor, EngagementSignalsCallback engagementSignalsCallback, Bundle bundle) {
        try {
            return this.mService.setEngagementSignalsCallback(this.mCallback, createEngagementSignalsCallbackWrapper(engagementSignalsCallback, executor).asBinder(), createBundleWithId(bundle));
        } catch (SecurityException e) {
            throw new UnsupportedOperationException("This method isn't supported by the Custom Tabs implementation.", e);
        }
    }
}
