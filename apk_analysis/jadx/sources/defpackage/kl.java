package defpackage;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class kl implements sl<PointF, PointF> {
    public final dl a;
    public final dl b;

    public kl(dl dlVar, dl dlVar2) {
        this.a = dlVar;
        this.b = dlVar2;
    }

    @Override // defpackage.sl
    public final ld0<PointF, PointF> a() {
        return new h68(this.a.a(), this.b.a());
    }

    @Override // defpackage.sl
    public final List<vf4<PointF>> b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // defpackage.sl
    public final boolean c() {
        return this.a.c() && this.b.c();
    }
}
