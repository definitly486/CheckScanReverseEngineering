package defpackage;

import android.os.Process;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzhz;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes4.dex */
public final class lpb extends Thread {
    public final Object b;
    public final BlockingQueue c;
    public boolean d = false;
    public final /* synthetic */ zzhz e;

    public lpb(zzhz zzhzVar, String str, BlockingQueue blockingQueue) {
        this.e = zzhzVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.b = new Object();
        this.c = blockingQueue;
        setName(str);
    }

    public final void a() {
        zzhz zzhzVar = this.e;
        synchronized (zzhzVar.i) {
            try {
                if (!this.d) {
                    zzhzVar.j.release();
                    zzhzVar.i.notifyAll();
                    if (this == zzhzVar.c) {
                        zzhzVar.c = null;
                    } else if (this == zzhzVar.d) {
                        zzhzVar.d = null;
                    } else {
                        zzhzVar.a.zzaW().zzb().zza("Current scheduler thread is neither worker nor network");
                    }
                    this.d = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.e.j.acquire();
                z = true;
            } catch (InterruptedException e) {
                this.e.a.zzaW().zze().zzb(String.valueOf(getName()).concat(" was interrupted"), e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                BlockingQueue blockingQueue = this.c;
                hpb hpbVar = (hpb) blockingQueue.poll();
                if (hpbVar != null) {
                    Process.setThreadPriority(true != hpbVar.c ? 10 : threadPriority);
                    hpbVar.run();
                } else {
                    Object obj = this.b;
                    synchronized (obj) {
                        if (blockingQueue.peek() == null) {
                            this.e.getClass();
                            try {
                                obj.wait(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
                            } catch (InterruptedException e2) {
                                this.e.a.zzaW().zze().zzb(String.valueOf(getName()).concat(" was interrupted"), e2);
                            }
                        }
                    }
                    synchronized (this.e.i) {
                        if (this.c.peek() == null) {
                            a();
                            a();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            a();
            throw th;
        }
    }
}
