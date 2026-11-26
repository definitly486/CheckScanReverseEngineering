package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.ScrollState;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p14 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ p14(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [n95] */
    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                o95.a aVar = new o95.a();
                final Context context = ((r14.a) obj).a;
                final double d = 0.2d;
                try {
                    Object systemService = ContextCompat.getSystemService(context, ActivityManager.class);
                    systemService.getClass();
                    if (((ActivityManager) systemService).isLowRamDevice()) {
                        d = 0.15d;
                    }
                } catch (Exception unused) {
                }
                if (0.0d > d || d > 1.0d) {
                    fg.c("percent must be in the range [0.0, 1.0].");
                    return null;
                }
                aVar.a = new ll3() { // from class: n95
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        int largeMemoryClass;
                        Context context2 = context;
                        try {
                            Object systemService2 = ContextCompat.getSystemService(context2, ActivityManager.class);
                            systemService2.getClass();
                            ActivityManager activityManager = (ActivityManager) systemService2;
                            largeMemoryClass = (context2.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
                        } catch (Exception unused2) {
                            largeMemoryClass = 256;
                        }
                        return Long.valueOf((long) (d * ((long) largeMemoryClass) * 1048576));
                    }
                };
                lz6 lz6Var = new lz6();
                n95 n95Var = aVar.a;
                if (n95Var != null) {
                    return new gz6(new jz6(((Number) n95Var.invoke()).longValue(), lz6Var), lz6Var);
                }
                ah.f("maxSizeBytesFactory == null");
                return null;
            case 1:
                return new wd6((nb6) obj);
            case 2:
                return Boolean.valueOf(ScrollState.canScrollBackward_delegate$lambda$0((ScrollState) obj));
            case 3:
                return ThreadConfigModule.provideTestOnlyThreads$lambda$0((ThreadConfigModule) obj);
            default:
                return Boolean.valueOf(Transition.animateTo$lambda$0$0((Transition) obj));
        }
    }
}
