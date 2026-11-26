package io.appmetrica.analytics.impl;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.aj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class ServiceConnectionC0796aj implements ServiceConnection {
    public final InterfaceC1207qg a;
    public final Zi b;
    public final /* synthetic */ C0822bj c;

    public ServiceConnectionC0796aj(C0822bj c0822bj, InterfaceC1207qg interfaceC1207qg) {
        this.c = c0822bj;
        this.a = interfaceC1207qg;
        this.b = new Zi(c0822bj, this);
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        C0822bj.a(this.c, this);
        this.a.a(new C1360wg("RuStore service binding died", null, 2, null));
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        C0822bj.a(this.c, this);
        this.a.a(new C1360wg("RuStore service returned null binding", null, 2, null));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            InterfaceC1098mb interfaceC1098mbA = AbstractBinderC1072lb.a(iBinder);
            if (interfaceC1098mbA == null) {
                C0822bj.a(this.c, this);
                this.a.a(new C1360wg("RuStore service binder is null", null, 2, null));
                return;
            }
            String packageName = this.c.a.getPackageName();
            Zi zi = this.b;
            C1046kb c1046kb = (C1046kb) interfaceC1098mbA;
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
                parcelObtain.writeString(packageName);
                parcelObtain.writeStrongInterface(zi);
                c1046kb.a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        } catch (Throwable th) {
            C0822bj.a(this.c, this);
            this.a.a(new C1360wg("Failed to referrer from RuStore service", th));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
