package defpackage;

import androidx.camera.view.PreviewView;
import androidx.camera.viewfinder.core.ZoomGestureDetector;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.common.collect.q;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ia5 implements OnSuccessListener, q.b, ZoomGestureDetector.OnZoomGestureListener {
    public final /* synthetic */ Object b;

    public /* synthetic */ ia5(Object obj) {
        this.b = obj;
    }

    @Override // com.google.common.collect.q.b
    public Object a(Object obj, Object obj2) {
        return ((h95) this.b).apply(obj2);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((ne1) this.b).invoke(obj);
    }

    @Override // androidx.camera.viewfinder.core.ZoomGestureDetector.OnZoomGestureListener
    public boolean onZoomEvent(ZoomGestureDetector.ZoomEvent zoomEvent) {
        return ((PreviewView) this.b).lambda$new$1(zoomEvent);
    }
}
