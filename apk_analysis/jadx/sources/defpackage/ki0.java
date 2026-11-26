package defpackage;

import android.content.Context;
import androidx.compose.ui.node.LayoutNode;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import com.google.android.material.carousel.MaskableFrameLayout;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.io.IOException;
import java.util.List;
import yads.e92;
import yads.gl1;
import yads.hs1;
import yads.l66;
import yads.q52;
import yads.st3;
import yads.vg2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ki0 implements TrackSelector.Factory, xl3, ShapeAppearanceModel.CornerSizeUnaryOperator, f39, l66, st3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ki0(int i) {
        this.b = i;
    }

    public static int b(LayoutNode layoutNode) {
        return layoutNode.getNodes$ui().getHead$ui().getAggregateChildKindSet$ui();
    }

    public static /* synthetic */ void c(Object obj, String str, Object obj2) {
        throw new IllegalStateException(str + obj + obj2);
    }

    public static /* synthetic */ void d(String str) throws IOException {
        throw new IOException(str);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 6:
                return e92.g(((Long) obj).longValue());
            case 7:
                return gl1.f(((Long) obj).longValue());
            case 8:
                return hs1.a(((Long) obj).longValue());
            default:
                return vg2.a(((Double) obj).doubleValue());
        }
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        List list = (List) obj;
        nq5.a(list, "source is null");
        return new jr5(list);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.Factory
    public TrackSelector createTrackSelector(Context context) {
        return new DefaultTrackSelector(context);
    }

    @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
    public CornerSize apply(CornerSize cornerSize) {
        return MaskableFrameLayout.lambda$setShapeAppearanceModel$0(cornerSize);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return q52.a(list);
    }

    @Override // defpackage.f39
    public void a(Exception exc) {
    }
}
