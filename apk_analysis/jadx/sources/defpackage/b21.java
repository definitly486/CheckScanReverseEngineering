package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import androidx.camera.core.CameraX;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.my.target.zh;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b21 implements CallbackToFutureAdapter.Resolver, eh8.a, s0a.b {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b21(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // s0a.b
    public void a() {
        WeakReference weakReference = (WeakReference) this.b;
        h14 h14Var = (h14) this.c;
        ImageView imageView = (ImageView) weakReference.get();
        if (imageView != null) {
            WeakHashMap weakHashMap = s0a.c;
            if (h14Var == ((h14) weakHashMap.get(imageView))) {
                weakHashMap.remove(imageView);
                Bitmap bitmap = (Bitmap) h14Var.d;
                if (bitmap != null) {
                    if (imageView instanceof zh) {
                        ((zh) imageView).setImageBitmap(bitmap, true);
                    } else {
                        imageView.setImageBitmap(bitmap);
                    }
                }
            }
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((CameraX) this.b).lambda$initInternal$1((Context) this.c, completer);
    }

    @Override // eh8.a
    public Object execute() {
        r89 r89Var = (r89) this.b;
        return r89Var.c.K((hz) this.c);
    }
}
