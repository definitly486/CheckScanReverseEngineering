package defpackage;

import com.posthog.PostHogEvent;
import java.io.File;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class qd6 implements xc6<PostHogEvent> {
    public final nb6 a;
    public final wc6 b;
    public final ExecutorService c;
    public final ed6 d;
    public od6.a e;

    public qd6(nb6 nb6Var, wc6 wc6Var, String str, ExecutorService executorService) {
        String str2 = nb6Var.t;
        this.a = nb6Var;
        this.b = wc6Var;
        this.c = executorService;
        if (str != null) {
            new File(str, str2);
        }
        this.d = new ed6(nb6Var, str != null ? new File(str.concat("-buffer"), str2) : new File(System.getProperty("java.io.tmpdir"), bj.c("posthog-replay-buffer/", str2)));
    }

    public final void a() {
        List<String> listT0;
        int iA = this.d.a();
        if (iA == 0) {
            this.a.v.a("No buffered replay events to migrate");
            return;
        }
        ed6 ed6Var = this.d;
        wc6 wc6Var = this.b;
        String str = wc6Var.b.b;
        File file = str != null ? new File(str, wc6Var.a.t) : null;
        int i = 0;
        if (file == null) {
            ed6Var.a.v.a("Replay queue has no disk directory configured. Skipping buffer migration.");
        } else {
            synchronized (ed6Var.d) {
                listT0 = qn1.t0(ed6Var.c);
                ed6Var.c.clear();
            }
            try {
                file.mkdirs();
            } catch (Throwable th) {
                ed6Var.a.v.a("Error creating replay target queue directory: " + th);
            }
            for (String str2 : listT0) {
                File file2 = new File(ed6Var.b, str2);
                if (file2.exists()) {
                    File file3 = new File(file, str2);
                    try {
                        if (file3.exists()) {
                            file2.delete();
                        } else if (file2.renameTo(file3)) {
                            i++;
                        } else {
                            ed6Var.a.v.a("Failed to move replay buffer item " + str2);
                            j59 j59Var = j59.a;
                        }
                    } catch (Throwable th2) {
                        ed6Var.a.v.a("Failed to migrate replay buffer item " + str2 + ": " + th2);
                        j59 j59Var2 = j59.a;
                    }
                }
            }
            ExecutorService executorService = wc6Var.c;
            iq iqVar = new iq(wc6Var, 2);
            executorService.getClass();
            try {
                executorService.submit(iqVar).get();
            } catch (Throwable unused) {
            }
        }
        this.a.v.a("Migrated " + i + '/' + iA + " buffered replay events to replay queue.");
    }

    @Override // defpackage.xc6
    public final void add(PostHogEvent postHogEvent) {
        PostHogEvent postHogEvent2 = postHogEvent;
        od6.a aVar = this.e;
        if (aVar != null && aVar.a()) {
            try {
                this.c.execute(new zg4(1, this, postHogEvent2));
            } catch (Throwable unused) {
            }
        } else {
            od6.a aVar2 = this.e;
            if ((aVar2 == null || od6.this.l) ? false : true) {
                return;
            }
            this.b.add(postHogEvent2);
        }
    }

    @Override // defpackage.xc6
    public final void flush() {
        od6.a aVar = this.e;
        if (aVar == null || !aVar.a()) {
            this.b.flush();
        } else {
            this.a.v.a("Replay queue flush suppressed — still buffering");
        }
    }

    @Override // defpackage.xc6
    public final void start() {
        this.b.start();
    }
}
