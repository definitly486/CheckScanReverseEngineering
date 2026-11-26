package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import defpackage.ah;
import defpackage.fg;
import defpackage.qz3;
import defpackage.vz3;

/* JADX INFO: loaded from: classes.dex */
public abstract class PostMessageServiceConnection implements PostMessageBackend, ServiceConnection {
    private static final String TAG = "PostMessageServConn";
    private final Object mLock = new Object();
    private boolean mMessageChannelCreated;
    private String mPackageName;
    private vz3 mService;
    private final qz3 mSessionBinder;

    public PostMessageServiceConnection(CustomTabsSessionToken customTabsSessionToken) {
        IBinder callbackBinder = customTabsSessionToken.getCallbackBinder();
        if (callbackBinder != null) {
            this.mSessionBinder = qz3.a.asInterface(callbackBinder);
        } else {
            fg.c("Provided session must have binder.");
            throw null;
        }
    }

    private boolean isBoundToService() {
        return this.mService != null;
    }

    private boolean notifyMessageChannelReadyInternal(Bundle bundle) {
        if (this.mService == null) {
            return false;
        }
        synchronized (this.mLock) {
            try {
                try {
                    this.mService.onMessageChannelReady(this.mSessionBinder, bundle);
                } catch (RemoteException unused) {
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public boolean bindSessionToPostMessageService(Context context, String str) {
        Intent intent = new Intent();
        intent.setClassName(str, PostMessageService.class.getName());
        boolean zBindService = context.bindService(intent, this, 1);
        if (!zBindService) {
            Log.w(TAG, "Could not bind to PostMessageService in client.");
        }
        return zBindService;
    }

    public void cleanup(Context context) {
        if (isBoundToService()) {
            unbindFromContext(context);
        }
    }

    public final boolean notifyMessageChannelReady(Bundle bundle) {
        this.mMessageChannelCreated = true;
        return notifyMessageChannelReadyInternal(bundle);
    }

    @Override // androidx.browser.customtabs.PostMessageBackend
    public void onDisconnectChannel(Context context) {
        unbindFromContext(context);
    }

    @Override // androidx.browser.customtabs.PostMessageBackend
    public final boolean onNotifyMessageChannelReady(Bundle bundle) {
        return notifyMessageChannelReady(bundle);
    }

    @Override // androidx.browser.customtabs.PostMessageBackend
    public final boolean onPostMessage(String str, Bundle bundle) {
        return postMessage(str, bundle);
    }

    public void onPostMessageServiceConnected() {
        if (this.mMessageChannelCreated) {
            notifyMessageChannelReadyInternal(null);
        }
    }

    public void onPostMessageServiceDisconnected() {
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.mService = vz3.a.asInterface(iBinder);
        onPostMessageServiceConnected();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.mService = null;
        onPostMessageServiceDisconnected();
    }

    public final boolean postMessage(String str, Bundle bundle) {
        if (this.mService == null) {
            return false;
        }
        synchronized (this.mLock) {
            try {
                try {
                    this.mService.onPostMessage(this.mSessionBinder, str, bundle);
                } catch (RemoteException unused) {
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public void setPackageName(String str) {
        this.mPackageName = str;
    }

    public void unbindFromContext(Context context) {
        if (isBoundToService()) {
            context.unbindService(this);
            this.mService = null;
        }
    }

    public boolean bindSessionToPostMessageService(Context context) {
        String str = this.mPackageName;
        if (str != null) {
            return bindSessionToPostMessageService(context, str);
        }
        ah.f("setPackageName must be called before bindSessionToPostMessageService.");
        return false;
    }
}
