package yads;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes6.dex */
public abstract class mp6 extends AsyncTask {
    public sp6 a;
    public final lp6 b;

    public mp6(lp6 lp6Var) {
        this.b = lp6Var;
    }

    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        sp6 sp6Var = this.a;
        if (sp6Var != null) {
            sp6Var.c = null;
            sp6Var.a();
        }
    }

    public final void a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
