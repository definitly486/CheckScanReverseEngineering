package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import ru.rustore.sdk.core.exception.RuStoreException;
import ru.vk.store.sdk.install.referrer.InstallReferrerProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class nh8 implements ServiceConnection {
    public final String b;
    public final i c;
    public final uz d;

    public static final class a extends pp3 {
        public a() {
            attachInterface(this, "ru.vk.store.sdk.install.referrer.GetInstallReferrerCallback");
        }
    }

    public nh8(String str, eg9 eg9Var, i iVar, uz uzVar) {
        this.b = str;
        this.c = iVar;
        this.d = uzVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        InstallReferrerProvider installReferrerProvider;
        Object aVar;
        int i = InstallReferrerProvider.a.a;
        if (iBinder == null) {
            installReferrerProvider = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
            if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InstallReferrerProvider)) {
                InstallReferrerProvider.a.C0326a c0326a = new InstallReferrerProvider.a.C0326a();
                c0326a.a = iBinder;
                installReferrerProvider = c0326a;
            } else {
                installReferrerProvider = (InstallReferrerProvider) iInterfaceQueryLocalInterface;
            }
        }
        try {
            installReferrerProvider.d(this.b, new a());
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            String message = thA.getMessage();
            if (message == null) {
                message = "";
            }
            this.d.invoke(new RuStoreException(message));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.d.invoke(new RuStoreException("onServiceDisconnected"));
    }
}
