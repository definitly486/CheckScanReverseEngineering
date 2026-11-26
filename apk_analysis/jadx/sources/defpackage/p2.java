package defpackage;

import android.view.View;
import androidx.camera.video.OutputOptions;
import androidx.camera.video.internal.OutputStorage;
import androidx.camera.video.internal.OutputStorageImpl;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.tapjoy.TJActivity;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import yads.dx1;
import yads.h32;
import yads.l66;
import yads.st3;
import yads.x92;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p2 implements mq5, OutputStorage.Factory, OnApplyWindowInsetsListener, st3, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ p2(int i) {
        this.b = i;
    }

    public static StringBuilder b(String str, String str2, String str3, String str4, boolean z) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(z);
        sb.append(str4);
        return sb;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 6:
                return h32.a(l.longValue());
            default:
                return x92.b(l.longValue());
        }
    }

    @Override // defpackage.mq5
    public Object c() {
        return new ConcurrentHashMap();
    }

    @Override // androidx.camera.video.internal.OutputStorage.Factory
    public OutputStorage create(OutputOptions outputOptions) {
        return new OutputStorageImpl(outputOptions);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return TJActivity.a(view, windowInsetsCompat);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return dx1.a(list);
    }
}
