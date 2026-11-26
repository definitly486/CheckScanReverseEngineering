package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.browser.auth.AuthTabSessionToken;
import androidx.collection.SimpleArrayMap;
import defpackage.oz3;
import defpackage.qz3;
import defpackage.rz3;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class CustomTabsService extends Service {
    public static final String ACTION_CUSTOM_TABS_CONNECTION = "android.support.customtabs.action.CustomTabsService";
    public static final String CATEGORY_AUTH_TAB = "androidx.browser.auth.category.AuthTab";
    public static final String CATEGORY_COLOR_SCHEME_CUSTOMIZATION = "androidx.browser.customtabs.category.ColorSchemeCustomization";
    public static final String CATEGORY_EPHEMERAL_BROWSING = "androidx.browser.customtabs.category.EphemeralBrowsing";
    public static final String CATEGORY_NAVBAR_COLOR_CUSTOMIZATION = "androidx.browser.customtabs.category.NavBarColorCustomization";
    public static final String CATEGORY_SET_NETWORK = "androidx.browser.customtabs.category.SetNetwork";
    public static final String CATEGORY_TRUSTED_WEB_ACTIVITY_IMMERSIVE_MODE = "androidx.browser.trusted.category.ImmersiveMode";
    public static final String CATEGORY_WEB_SHARE_TARGET_V2 = "androidx.browser.trusted.category.WebShareTargetV2";
    public static final int FILE_PURPOSE_TRUSTED_WEB_ACTIVITY_SPLASH_IMAGE = 1;
    public static final String KEY_SUCCESS = "androidx.browser.customtabs.SUCCESS";
    public static final String KEY_URL = "android.support.customtabs.otherurls.URL";
    public static final int RELATION_HANDLE_ALL_URLS = 2;
    public static final int RELATION_USE_AS_ORIGIN = 1;
    public static final int RESULT_FAILURE_DISALLOWED = -1;
    public static final int RESULT_FAILURE_MESSAGING_ERROR = -3;
    public static final int RESULT_FAILURE_REMOTE_ERROR = -2;
    public static final int RESULT_SUCCESS = 0;
    private static final String TAG = "CustomTabsService";
    public static final String TRUSTED_WEB_ACTIVITY_CATEGORY = "androidx.browser.trusted.category.TrustedWebActivities";
    final SimpleArrayMap<IBinder, IBinder.DeathRecipient> mDeathRecipientMap = new SimpleArrayMap<>();
    private rz3.a mBinder = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.browser.customtabs.CustomTabsService$1, reason: invalid class name */
    public class AnonymousClass1 extends rz3.a {
        public AnonymousClass1() {
        }

        private PendingIntent getSessionIdFromBundle(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(CustomTabsIntent.EXTRA_SESSION_ID);
            bundle.remove(CustomTabsIntent.EXTRA_SESSION_ID);
            return pendingIntent;
        }

        private Uri getTargetOriginFromBundle(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            return Build.VERSION.SDK_INT >= 33 ? (Uri) Api33Impl.getParcelable(bundle, "target_origin", Uri.class) : (Uri) bundle.getParcelable("target_origin");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$newAuthTabSession$1(AuthTabSessionToken authTabSessionToken) {
            CustomTabsService.this.cleanUpSession(authTabSessionToken);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$newSessionInternal$0(CustomTabsSessionToken customTabsSessionToken) {
            CustomTabsService.this.cleanUpSession(customTabsSessionToken);
        }

        private boolean newSessionInternal(qz3 qz3Var, PendingIntent pendingIntent) {
            final CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(qz3Var, pendingIntent);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: androidx.browser.customtabs.d
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        this.a.lambda$newSessionInternal$0(customTabsSessionToken);
                    }
                };
                synchronized (CustomTabsService.this.mDeathRecipientMap) {
                    qz3Var.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.mDeathRecipientMap.put(qz3Var.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.newSession(customTabsSessionToken);
            } catch (RemoteException unused) {
                return false;
            }
        }

        @Override // defpackage.rz3
        public Bundle extraCommand(String str, Bundle bundle) {
            return CustomTabsService.this.extraCommand(str, bundle);
        }

        @Override // defpackage.rz3
        public int getInterfaceVersion() {
            return 1;
        }

        @Override // defpackage.rz3
        public boolean isEngagementSignalsApiAvailable(qz3 qz3Var, Bundle bundle) {
            return CustomTabsService.this.isEngagementSignalsApiAvailable(new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle)), bundle);
        }

        @Override // defpackage.rz3
        public boolean mayLaunchUrl(qz3 qz3Var, Uri uri, Bundle bundle, List<Bundle> list) {
            return CustomTabsService.this.mayLaunchUrl(new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle)), uri, bundle, list);
        }

        @Override // defpackage.rz3
        public boolean newAuthTabSession(oz3 oz3Var, Bundle bundle) {
            final AuthTabSessionToken authTabSessionToken = new AuthTabSessionToken(oz3Var, getSessionIdFromBundle(bundle));
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: androidx.browser.customtabs.e
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        this.a.lambda$newAuthTabSession$1(authTabSessionToken);
                    }
                };
                synchronized (CustomTabsService.this.mDeathRecipientMap) {
                    oz3Var.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.mDeathRecipientMap.put(oz3Var.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.registerAuthTabSession(authTabSessionToken);
            } catch (RemoteException unused) {
                return false;
            }
        }

        @Override // defpackage.rz3
        public boolean newSession(qz3 qz3Var) {
            return newSessionInternal(qz3Var, null);
        }

        @Override // defpackage.rz3
        public boolean newSessionWithExtras(qz3 qz3Var, Bundle bundle) {
            return newSessionInternal(qz3Var, getSessionIdFromBundle(bundle));
        }

        @Override // defpackage.rz3
        public int postMessage(qz3 qz3Var, String str, Bundle bundle) {
            return CustomTabsService.this.postMessage(new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle)), str, bundle);
        }

        @Override // defpackage.rz3
        public void prefetch(qz3 qz3Var, Uri uri, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle));
            ArrayList arrayList = new ArrayList(1);
            Object obj = new Object[]{uri}[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            customTabsService.prefetch(customTabsSessionToken, Collections.unmodifiableList(arrayList), PrefetchOptions.fromBundle(bundle));
        }

        @Override // defpackage.rz3
        public void prefetchWithMultipleUrls(qz3 qz3Var, List<Uri> list, Bundle bundle) {
            CustomTabsService.this.prefetch(new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle)), list, PrefetchOptions.fromBundle(bundle));
        }

        @Override // defpackage.rz3
        public boolean receiveFile(qz3 qz3Var, Uri uri, int i, Bundle bundle) {
            return CustomTabsService.this.receiveFile(new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle)), uri, i, bundle);
        }

        @Override // defpackage.rz3
        public boolean requestPostMessageChannel(qz3 qz3Var, Uri uri) {
            return CustomTabsService.this.requestPostMessageChannel(new CustomTabsSessionToken(qz3Var, null), uri, null, new Bundle());
        }

        @Override // defpackage.rz3
        public boolean requestPostMessageChannelWithExtras(qz3 qz3Var, Uri uri, Bundle bundle) {
            return CustomTabsService.this.requestPostMessageChannel(new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle)), uri, getTargetOriginFromBundle(bundle), bundle);
        }

        @Override // defpackage.rz3
        public boolean setEngagementSignalsCallback(qz3 qz3Var, IBinder iBinder, Bundle bundle) {
            return CustomTabsService.this.setEngagementSignalsCallback(new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle)), EngagementSignalsCallbackRemote.fromBinder(iBinder), bundle);
        }

        @Override // defpackage.rz3
        public boolean updateVisuals(qz3 qz3Var, Bundle bundle) {
            return CustomTabsService.this.updateVisuals(new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle)), bundle);
        }

        @Override // defpackage.rz3
        public boolean validateRelationship(qz3 qz3Var, int i, Uri uri, Bundle bundle) {
            return CustomTabsService.this.validateRelationship(new CustomTabsSessionToken(qz3Var, getSessionIdFromBundle(bundle)), i, uri, bundle);
        }

        @Override // defpackage.rz3
        public boolean warmup(long j) {
            return CustomTabsService.this.warmup(j);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FilePurpose {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Relation {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Result {
    }

    public boolean cleanUpSession(CustomTabsSessionToken customTabsSessionToken) {
        try {
            synchronized (this.mDeathRecipientMap) {
                try {
                    IBinder callbackBinder = customTabsSessionToken.getCallbackBinder();
                    if (callbackBinder == null) {
                        return false;
                    }
                    callbackBinder.unlinkToDeath(this.mDeathRecipientMap.get(callbackBinder), 0);
                    this.mDeathRecipientMap.remove(callbackBinder);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (NoSuchElementException unused) {
            return false;
        }
    }

    public abstract Bundle extraCommand(String str, Bundle bundle);

    public boolean isEngagementSignalsApiAvailable(CustomTabsSessionToken customTabsSessionToken, Bundle bundle) {
        return false;
    }

    public abstract boolean mayLaunchUrl(CustomTabsSessionToken customTabsSessionToken, Uri uri, Bundle bundle, List<Bundle> list);

    public abstract boolean newSession(CustomTabsSessionToken customTabsSessionToken);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    public abstract int postMessage(CustomTabsSessionToken customTabsSessionToken, String str, Bundle bundle);

    public void prefetch(CustomTabsSessionToken customTabsSessionToken, Uri uri, PrefetchOptions prefetchOptions) {
    }

    public void prefetch(CustomTabsSessionToken customTabsSessionToken, List<Uri> list, PrefetchOptions prefetchOptions) {
    }

    public abstract boolean receiveFile(CustomTabsSessionToken customTabsSessionToken, Uri uri, int i, Bundle bundle);

    public boolean registerAuthTabSession(AuthTabSessionToken authTabSessionToken) {
        return false;
    }

    public abstract boolean requestPostMessageChannel(CustomTabsSessionToken customTabsSessionToken, Uri uri);

    public boolean requestPostMessageChannel(CustomTabsSessionToken customTabsSessionToken, Uri uri, Uri uri2, Bundle bundle) {
        return requestPostMessageChannel(customTabsSessionToken, uri);
    }

    public boolean setEngagementSignalsCallback(CustomTabsSessionToken customTabsSessionToken, EngagementSignalsCallback engagementSignalsCallback, Bundle bundle) {
        return false;
    }

    public abstract boolean updateVisuals(CustomTabsSessionToken customTabsSessionToken, Bundle bundle);

    public abstract boolean validateRelationship(CustomTabsSessionToken customTabsSessionToken, int i, Uri uri, Bundle bundle);

    public abstract boolean warmup(long j);

    public boolean cleanUpSession(AuthTabSessionToken authTabSessionToken) {
        try {
            synchronized (this.mDeathRecipientMap) {
                try {
                    IBinder callbackBinder = authTabSessionToken.getCallbackBinder();
                    if (callbackBinder == null) {
                        return false;
                    }
                    callbackBinder.unlinkToDeath(this.mDeathRecipientMap.get(callbackBinder), 0);
                    this.mDeathRecipientMap.remove(callbackBinder);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (NoSuchElementException unused) {
            return false;
        }
    }
}
