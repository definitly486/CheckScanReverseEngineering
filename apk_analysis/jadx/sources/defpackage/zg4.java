package defpackage;

import androidx.camera.core.imagecapture.RequestWithCallback;
import androidx.camera.core.imagecapture.TakePictureManagerImpl;
import com.posthog.PostHogEvent;
import io.appmetrica.analytics.impl.InterfaceC1207qg;
import io.appmetrica.analytics.impl.InterfaceC1410yg;
import io.appmetrica.analytics.impl.L9;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zg4 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ zg4(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.b) {
            case 0:
                L9.a((InterfaceC1207qg) this.c, (InterfaceC1410yg) this.d);
                return;
            case 1:
                qd6 qd6Var = (qd6) this.c;
                PostHogEvent postHogEvent = (PostHogEvent) this.d;
                od6.a aVar = qd6Var.e;
                if (aVar == null || !aVar.a()) {
                    od6.a aVar2 = qd6Var.e;
                    if ((aVar2 == null || od6.this.l) ? false : true) {
                        return;
                    }
                    qd6Var.b.add(postHogEvent);
                    return;
                }
                ed6 ed6Var = qd6Var.d;
                try {
                    String str = gu8.a() + ".event";
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(ed6Var.b, str));
                    try {
                        wd6 wd6VarB = ed6Var.a.b();
                        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream, ha1.b), 8192);
                        wd6VarB.a.m(postHogEvent, new dd6().b, bufferedWriter);
                        bufferedWriter.flush();
                        j59 j59Var = j59.a;
                        fileOutputStream.close();
                        synchronized (ed6Var.d) {
                            ed6Var.c.add(str);
                        }
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            m96.c(fileOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    ed6Var.a.v.a("Could not write replay buffer file: " + th3);
                }
                qd6Var.a.v.a("Buffered replay event '" + postHogEvent.getEvent() + "'. Buffer depth: " + qd6Var.d.a());
                od6.a aVar3 = qd6Var.e;
                if (aVar3 != null) {
                    od6 od6Var = od6.this;
                    synchronized (od6Var.r) {
                        z = od6Var.u;
                    }
                    if (!z && od6Var.l) {
                        od6Var.l(qd6Var);
                        return;
                    }
                    return;
                }
                return;
            default:
                ((TakePictureManagerImpl) this.c).lambda$trackCurrentRequests$1((RequestWithCallback) this.d);
                return;
        }
    }
}
