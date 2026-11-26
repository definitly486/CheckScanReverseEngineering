package defpackage;

import android.graphics.drawable.Drawable;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import com.google.android.material.button.MaterialButton;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import com.tapjoy.TJError;
import com.tapjoy.c0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z42 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ z42(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((CrashlyticsCore) obj2).lambda$doBackgroundInitializationAsync$0((SettingsProvider) obj);
                break;
            case 1:
                ((MaterialButton) obj2).lambda$setIcon$2((Drawable) obj);
                break;
            case 2:
                ((MediaCodecRenderer) obj2).lambda$feedInputBuffer$0((FormatHolder) obj);
                break;
            default:
                ((c0) obj2).a((TJError) obj);
                break;
        }
    }
}
