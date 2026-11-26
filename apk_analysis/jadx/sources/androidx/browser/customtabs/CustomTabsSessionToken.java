package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import defpackage.ah;
import defpackage.qz3;

/* JADX INFO: loaded from: classes.dex */
public class CustomTabsSessionToken {
    private static final String TAG = "CustomTabsSessionToken";
    private final CustomTabsCallback mCallback;
    final qz3 mCallbackBinder;
    private final PendingIntent mSessionId;

    public static class MockCallback extends qz3.a {
        @Override // qz3.a, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // defpackage.qz3
        public void extraCallback(String str, Bundle bundle) {
        }

        @Override // defpackage.qz3
        public Bundle extraCallbackWithResult(String str, Bundle bundle) {
            return null;
        }

        @Override // defpackage.qz3
        public int getInterfaceVersion() {
            return 1;
        }

        @Override // defpackage.qz3
        public void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
        }

        @Override // defpackage.qz3
        public void onActivityResized(int i, int i2, Bundle bundle) {
        }

        @Override // defpackage.qz3
        public void onMessageChannelReady(Bundle bundle) {
        }

        @Override // defpackage.qz3
        public void onMinimized(Bundle bundle) {
        }

        @Override // defpackage.qz3
        public void onNavigationEvent(int i, Bundle bundle) {
        }

        @Override // defpackage.qz3
        public void onPostMessage(String str, Bundle bundle) {
        }

        @Override // defpackage.qz3
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
        }

        @Override // defpackage.qz3
        public void onUnminimized(Bundle bundle) {
        }

        @Override // defpackage.qz3
        public void onWarmupCompleted(Bundle bundle) {
        }
    }

    public CustomTabsSessionToken(qz3 qz3Var, PendingIntent pendingIntent) {
        if (qz3Var == null && pendingIntent == null) {
            ah.f("CustomTabsSessionToken must have either a session id or a callback (or both).");
            throw null;
        }
        this.mCallbackBinder = qz3Var;
        this.mSessionId = pendingIntent;
        this.mCallback = qz3Var == null ? null : new CustomTabsCallback() { // from class: androidx.browser.customtabs.CustomTabsSessionToken.1
            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void extraCallback(String str, Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.extraCallback(str, bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public Bundle extraCallbackWithResult(String str, Bundle bundle) {
                try {
                    return CustomTabsSessionToken.this.mCallbackBinder.extraCallbackWithResult(str, bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                    return null;
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onActivityLayout(i, i2, i3, i4, i5, bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onActivityResized(int i, int i2, Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onActivityResized(i, i2, bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onMessageChannelReady(Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onMessageChannelReady(bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onMinimized(Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onMinimized(bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onNavigationEvent(int i, Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onNavigationEvent(i, bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onPostMessage(String str, Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onPostMessage(str, bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onRelationshipValidationResult(i, uri, z, bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onUnminimized(Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onUnminimized(bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.CustomTabsCallback
            public void onWarmupCompleted(Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onWarmupCompleted(bundle);
                } catch (RemoteException unused) {
                    Log.e(CustomTabsSessionToken.TAG, "RemoteException during ICustomTabsCallback transaction");
                }
            }
        };
    }

    public static CustomTabsSessionToken createMockSessionTokenForTesting() {
        return new CustomTabsSessionToken(new MockCallback(), null);
    }

    private IBinder getCallbackBinderAssertNotNull() {
        qz3 qz3Var = this.mCallbackBinder;
        if (qz3Var != null) {
            return qz3Var.asBinder();
        }
        ah.f("CustomTabSessionToken must have valid binder or pending session");
        return null;
    }

    public static CustomTabsSessionToken getSessionTokenFromIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return null;
        }
        IBinder binder = extras.getBinder(CustomTabsIntent.EXTRA_SESSION);
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra(CustomTabsIntent.EXTRA_SESSION_ID);
        if (binder == null && pendingIntent == null) {
            return null;
        }
        return new CustomTabsSessionToken(binder != null ? qz3.a.asInterface(binder) : null, pendingIntent);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CustomTabsSessionToken)) {
            return false;
        }
        CustomTabsSessionToken customTabsSessionToken = (CustomTabsSessionToken) obj;
        PendingIntent id = customTabsSessionToken.getId();
        PendingIntent pendingIntent = this.mSessionId;
        if ((pendingIntent == null) != (id == null)) {
            return false;
        }
        return pendingIntent != null ? pendingIntent.equals(id) : getCallbackBinderAssertNotNull().equals(customTabsSessionToken.getCallbackBinderAssertNotNull());
    }

    public CustomTabsCallback getCallback() {
        return this.mCallback;
    }

    public IBinder getCallbackBinder() {
        qz3 qz3Var = this.mCallbackBinder;
        if (qz3Var == null) {
            return null;
        }
        return qz3Var.asBinder();
    }

    public PendingIntent getId() {
        return this.mSessionId;
    }

    public boolean hasCallback() {
        return this.mCallbackBinder != null;
    }

    public boolean hasId() {
        return this.mSessionId != null;
    }

    public int hashCode() {
        PendingIntent pendingIntent = this.mSessionId;
        return pendingIntent != null ? pendingIntent.hashCode() : getCallbackBinderAssertNotNull().hashCode();
    }

    public boolean isAssociatedWith(CustomTabsSession customTabsSession) {
        return customTabsSession.getBinder().equals(this.mCallbackBinder);
    }
}
