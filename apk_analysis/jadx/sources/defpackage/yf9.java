package defpackage;

import androidx.webkit.WebStorageCompat;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yf9 implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        WebStorageCompat.lambda$deleteBrowsingDataForSite$1(runnable);
    }
}
