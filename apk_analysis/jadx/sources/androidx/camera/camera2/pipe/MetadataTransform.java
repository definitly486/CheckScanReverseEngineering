package androidx.camera.camera2.pipe;

import defpackage.aa4;
import defpackage.ah;
import defpackage.ej0;
import defpackage.jh2;
import defpackage.mx2;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MetadataTransform {
    private final int future;
    private final int past;
    private final TransformFn transformFn;

    public interface TransformFn {

        public static final class DefaultImpls {
            @Deprecated
            /* JADX INFO: renamed from: computeOverridesFor-F8oR-dw, reason: not valid java name */
            public static Map<?, Object> m502computeOverridesForF8oRdw(TransformFn transformFn, FrameInfo frameInfo, String str, List<? extends FrameInfo> list) {
                frameInfo.getClass();
                str.getClass();
                list.getClass();
                return TransformFn.super.m501computeOverridesForF8oRdw(frameInfo, str, list);
            }
        }

        /* JADX INFO: renamed from: computeOverridesFor-F8oR-dw, reason: not valid java name */
        default Map<?, Object> m501computeOverridesForF8oRdw(FrameInfo frameInfo, String str, List<? extends FrameInfo> list) {
            frameInfo.getClass();
            str.getClass();
            list.getClass();
            return mx2.b;
        }
    }

    public MetadataTransform(int i, int i2, TransformFn transformFn) {
        transformFn.getClass();
        this.past = i;
        this.future = i2;
        this.transformFn = transformFn;
        if (i < 0) {
            ah.f("Check failed.");
            throw null;
        }
        if (i2 >= 0) {
            return;
        }
        ah.f("Check failed.");
        throw null;
    }

    public static /* synthetic */ MetadataTransform copy$default(MetadataTransform metadataTransform, int i, int i2, TransformFn transformFn, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = metadataTransform.past;
        }
        if ((i3 & 2) != 0) {
            i2 = metadataTransform.future;
        }
        if ((i3 & 4) != 0) {
            transformFn = metadataTransform.transformFn;
        }
        return metadataTransform.copy(i, i2, transformFn);
    }

    public final int component1() {
        return this.past;
    }

    public final int component2() {
        return this.future;
    }

    public final TransformFn component3() {
        return this.transformFn;
    }

    public final MetadataTransform copy(int i, int i2, TransformFn transformFn) {
        transformFn.getClass();
        return new MetadataTransform(i, i2, transformFn);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MetadataTransform)) {
            return false;
        }
        MetadataTransform metadataTransform = (MetadataTransform) obj;
        return this.past == metadataTransform.past && this.future == metadataTransform.future && aa4.e(this.transformFn, metadataTransform.transformFn);
    }

    public final int getFuture() {
        return this.future;
    }

    public final int getPast() {
        return this.past;
    }

    public final TransformFn getTransformFn() {
        return this.transformFn;
    }

    public int hashCode() {
        return this.transformFn.hashCode() + ej0.b(this.future, Integer.hashCode(this.past) * 31, 31);
    }

    public String toString() {
        return "MetadataTransform(past=" + this.past + ", future=" + this.future + ", transformFn=" + this.transformFn + ')';
    }

    public MetadataTransform() {
        this(0, 0, null, 7, null);
    }

    public /* synthetic */ MetadataTransform(int i, int i2, TransformFn transformFn, int i3, jh2 jh2Var) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? new TransformFn() { // from class: androidx.camera.camera2.pipe.MetadataTransform.1
        } : transformFn);
    }
}
