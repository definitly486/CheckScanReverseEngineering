package defpackage;

import androidx.camera.core.ImageProxy;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.exoplayer.offline.DownloadManager;
import androidx.media3.exoplayer.scheduler.RequirementsWatcher;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.List;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class k4 implements xl3, RequirementsWatcher.Listener, SimpleBasePlayer.PositionSupplier, OnCompleteListener, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ k4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (Long) ((m4) obj2).invoke(obj);
            default:
                return (List) ((nl3) obj2).invoke(obj);
        }
    }

    @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
    public long get() {
        return ((Player) this.c).getContentPosition();
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        ImageProxy imageProxy = (ImageProxy) this.c;
        task.getClass();
        imageProxy.close();
    }

    @Override // androidx.media3.exoplayer.scheduler.RequirementsWatcher.Listener
    public void onRequirementsStateChanged(RequirementsWatcher requirementsWatcher, int i) {
        ((DownloadManager) this.c).onRequirementsStateChanged(requirementsWatcher, i);
    }
}
