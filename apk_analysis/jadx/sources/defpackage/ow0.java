package defpackage;

import android.net.Uri;
import androidx.arch.core.util.Function;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.internal.ScreenFlashWrapper;
import androidx.media3.datasource.ByteArrayDataSource;
import androidx.paging.ItemKeyedDataSource;
import java.util.ArrayList;
import java.util.List;
import yads.bw4;
import yads.c62;
import yads.iw4;
import yads.lq;
import yads.tt3;
import yads.ub6;
import yads.ut4;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ow0 implements ByteArrayDataSource.UriResolver, Function, xl3, ImageCapture.ScreenFlashListener, lq, tt3, ut4 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ow0(ts5 ts5Var, ms5 ms5Var) {
        this.b = 2;
        this.c = ms5Var;
    }

    @Override // yads.lq
    public List a() {
        return c62.a((ArrayList) this.c);
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return ItemKeyedDataSource.mapByPage$lambda$0((nl3) obj2, (List) obj);
            default:
                Throwable th = (Throwable) obj;
                th.getClass();
                return ts5.b((ms5) obj2, a57.a(418, ts5.d(th.getMessage())));
        }
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).onPlaybackSuppressionReasonChanged(((bw4) this.c).m);
    }

    @Override // androidx.camera.core.ImageCapture.ScreenFlashListener
    public void onCompleted() {
        ScreenFlashWrapper.apply$lambda$1((ScreenFlashWrapper) this.c);
    }

    @Override // androidx.media3.datasource.ByteArrayDataSource.UriResolver
    public byte[] resolve(Uri uri) {
        return ByteArrayDataSource.lambda$new$0((byte[]) this.c, uri);
    }

    public /* synthetic */ ow0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // yads.ut4
    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public void mo9532a() {
        ub6.a((ub6) this.c);
    }
}
