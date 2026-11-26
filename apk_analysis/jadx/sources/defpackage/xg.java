package defpackage;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import com.google.android.gms.internal.measurement.zzaef;
import com.google.android.gms.internal.measurement.zzaeh;
import yads.bt2;
import yads.py2;
import yads.ws2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xg implements Consumer, bt2 {
    public static zzaef c(zzaef zzaefVar) {
        int size = zzaefVar.size();
        return zzaefVar.zzg(size + size);
    }

    public static /* synthetic */ void d(Object obj) {
        throw new AssertionError(obj);
    }

    public static /* synthetic */ void e(String str) throws zzaeh {
        throw new zzaeh(str);
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((DrmSessionEventListener.EventDispatcher) obj).drmKeysRestored();
    }

    @Override // yads.bt2
    public ws2[] b() {
        return py2.a();
    }
}
