package defpackage;

import android.view.MenuItem;
import androidx.arch.core.util.Function;
import androidx.camera.lifecycle.LifecycleCameraProvider;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.media3.exoplayer.source.preload.PreloadManagerListener;
import com.google.android.material.navigation.NavigationBarView;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import yads.gd5;
import yads.ks3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class vd0 implements ListenerSet.Event, xl3, NavigationBarView.OnItemSelectedListener, Function, gd5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vd0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // yads.gd5
    public String a() {
        return ks3.b((ks3) this.c);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return (m32) ((o42) obj2).invoke(obj);
            default:
                return LifecycleCameraProvider.Companion.createInstanceAsync$lambda$1((zh) obj2, obj);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        BasePreloadManager.lambda$onCompleted$2((BasePreloadManager.MediaSourceHolder) this.c, (PreloadManagerListener) obj);
    }

    @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
    public boolean onNavigationItemSelected(MenuItem menuItem) {
        DesktopFlowFragment desktopFlowFragment = (DesktopFlowFragment) this.c;
        ze4<Object>[] ze4VarArr = DesktopFlowFragment.s;
        menuItem.getClass();
        desktopFlowFragment.o = menuItem.getOrder();
        for (ri8 ri8Var : ri8.values()) {
            if (DesktopFlowFragment.r(ri8Var) == menuItem.getItemId()) {
                desktopFlowFragment.q().onTabClicked(ri8Var);
                return true;
            }
        }
        ag.g("Array contains no element matching the predicate.");
        return false;
    }
}
