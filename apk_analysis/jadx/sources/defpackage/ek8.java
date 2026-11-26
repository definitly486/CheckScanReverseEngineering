package defpackage;

import android.graphics.Bitmap;
import androidx.camera.core.imagecapture.TakePictureRequest;
import com.my.target.d1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ek8 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ek8(int i, Object obj, Object obj2) {
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
                ((TakePictureRequest) obj2).lambda$onPostviewBitmapAvailable$4((Bitmap) obj);
                break;
            default:
                ((e5a) obj2).accept((d1.a) obj);
                break;
        }
    }
}
