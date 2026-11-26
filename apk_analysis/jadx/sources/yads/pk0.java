package yads;

import android.net.Uri;
import android.util.SparseArray;
import androidx.media3.common.C;
import com.monetization.ads.exo.source.dash.offline.DashDownloader;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
public final class pk0 {
    public static final SparseArray c;
    public final bw a;
    public final ExecutorService b;

    static {
        SparseArray sparseArray = new SparseArray();
        try {
            sparseArray.put(0, a(DashDownloader.class));
        } catch (ClassNotFoundException unused) {
        }
        try {
            sparseArray.put(2, a(Class.forName("com.monetization.ads.exo.source.hls.offline.HlsDownloader")));
        } catch (ClassNotFoundException unused2) {
        }
        try {
            sparseArray.put(1, a(Class.forName("com.monetization.ads.exo.source.smoothstreaming.offline.SsDownloader")));
        } catch (ClassNotFoundException unused3) {
        }
        c = sparseArray;
    }

    public pk0(bw bwVar, ExecutorService executorService) {
        this.a = bwVar;
        executorService.getClass();
        this.b = executorService;
    }

    public final uk2 a(tk2 tk2Var) {
        int iA = u56.a(tk2Var.c, tk2Var.d);
        if (iA != 0 && iA != 1 && iA != 2) {
            if (iA != 4) {
                defpackage.fg.c(vx4.a(iA, "Unsupported type: "));
                return null;
            }
            e04 e04Var = new e04();
            le3 le3Var = oe3.c;
            k55 k55Var = k55.f;
            List list = Collections.EMPTY_LIST;
            k55 k55Var2 = k55.f;
            m04 m04Var = m04.d;
            Uri uri = tk2Var.c;
            return new p15(new p04("", new g04(e04Var), uri != null ? new k04(uri, null, list, tk2Var.g, k55Var2) : null, new j04(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, -3.4028235E38f, -3.4028235E38f), t04.H, m04Var), this.a, this.b);
        }
        Constructor constructor = (Constructor) c.get(iA);
        if (constructor == null) {
            defpackage.ah.f(vx4.a(iA, "Module missing for content type "));
            return null;
        }
        e04 e04Var2 = new e04();
        le3 le3Var2 = oe3.c;
        k55 k55Var3 = k55.f;
        m04 m04Var2 = m04.d;
        Uri uri2 = tk2Var.c;
        List list2 = tk2Var.e;
        try {
            return (uk2) constructor.newInstance(new p04("", new g04(e04Var2), uri2 != null ? new k04(uri2, null, (list2 == null || list2.isEmpty()) ? Collections.EMPTY_LIST : Collections.unmodifiableList(new ArrayList(list2)), tk2Var.g, k55Var3) : null, new j04(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, -3.4028235E38f, -3.4028235E38f), t04.H, m04Var2), this.a, this.b);
        } catch (Exception unused) {
            defpackage.ah.f(vx4.a(iA, "Failed to instantiate downloader for content type "));
            return null;
        }
    }

    public static Constructor a(Class cls) {
        try {
            return cls.asSubclass(uk2.class).getConstructor(p04.class, bw.class, Executor.class);
        } catch (NoSuchMethodException e) {
            defpackage.h2.e("Downloader constructor missing", e);
            return null;
        }
    }
}
