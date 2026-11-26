package defpackage;

import androidx.camera.video.internal.muxer.MediaMuxerImpl;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.material3.TimePickerState;
import androidx.compose.runtime.Recomposer;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.paging.PagingDataPresenter;
import yads.b8;
import yads.n32;
import yads.nq0;
import yads.x73;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b80 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b80(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return new hy((i80) obj);
            case 1:
                return MediaMuxerImpl.stop$lambda$1((MediaMuxerImpl) obj);
            case 2:
                return NavDestinationImpl._set_route_$lambda$3((String) obj);
            case 3:
                return PagingDataPresenter._init_$lambda$0((PagingDataPresenter) obj);
            case 4:
                return Recomposer.broadcastFrameClock$lambda$0((Recomposer) obj);
            case 5:
                return TimePickerKt.PeriodToggleImpl$lambda$46$lambda$45$lambda$44((TimePickerState) obj);
            case 6:
                return b8.a((b8) obj);
            case 7:
                return n32.a((n32) obj);
            case 8:
                return nq0.u((nq0) obj);
            default:
                return x73.a((x73) obj);
        }
    }
}
