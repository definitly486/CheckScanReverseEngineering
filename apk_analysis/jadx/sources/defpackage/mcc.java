package defpackage;

import android.os.Process;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzqi;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mcc implements Runnable {
    public final /* synthetic */ zzqi b;

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        if (((Boolean) this.b.c.get()).booleanValue()) {
            Log.i("PhenotypeProcessReaper", "Killing process to refresh experiment configuration");
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }
}
