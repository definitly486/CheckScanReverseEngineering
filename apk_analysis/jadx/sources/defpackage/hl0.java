package defpackage;

import androidx.camera.core.SurfaceRequest;
import androidx.camera.video.Recorder;
import androidx.media3.common.TrackGroup;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class hl0 implements xl3, li0, DefaultTrackSelector.TrackInfo.Factory, SurfaceRequest.TransformationInfoListener, rr5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hl0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.rr5
    public void a(xq5.a aVar) {
        aVar.onNext((Long) this.c);
        aVar.a();
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (c18) ((q4) obj2).invoke(obj);
            case 1:
                return (Map) ((nl3) obj2).invoke(obj);
            default:
                return ((ts5.b) obj2).invoke(obj);
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
    public List create(int i, TrackGroup trackGroup, int[] iArr) {
        return DefaultTrackSelector.lambda$selectImageTrack$5((DefaultTrackSelector.Parameters) this.c, i, trackGroup, iArr);
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
    public void onTransformationInfoUpdate(SurfaceRequest.TransformationInfo transformationInfo) {
        ((Recorder) this.c).lambda$configureInternal$9(transformationInfo);
    }

    @Override // defpackage.li0
    public Object apply(Object obj, Object obj2) {
        return CreateCardPresenter.onIssueClick$lambda$0((bm3) this.c, obj, obj2);
    }
}
