package androidx.graphics.shapes;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableCubic extends Cubic {
    public MutableCubic() {
        super(null, 1, null);
    }

    private final void transformOnePoint(PointTransformer pointTransformer, int i) {
        int i2 = i + 1;
        long jMo9333transformXgqJiTY = pointTransformer.mo9333transformXgqJiTY(getPoints$graphics_shapes_release()[i], getPoints$graphics_shapes_release()[i2]);
        getPoints$graphics_shapes_release()[i] = Float.intBitsToFloat((int) (jMo9333transformXgqJiTY >> 32));
        getPoints$graphics_shapes_release()[i2] = Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & jMo9333transformXgqJiTY));
    }

    public final void interpolate(Cubic cubic, Cubic cubic2, float f) {
        cubic.getClass();
        cubic2.getClass();
        for (int i = 0; i < 8; i++) {
            getPoints$graphics_shapes_release()[i] = Utils.interpolate(cubic.getPoints$graphics_shapes_release()[i], cubic2.getPoints$graphics_shapes_release()[i], f);
        }
    }

    public final void transform(PointTransformer pointTransformer) {
        pointTransformer.getClass();
        transformOnePoint(pointTransformer, 0);
        transformOnePoint(pointTransformer, 2);
        transformOnePoint(pointTransformer, 4);
        transformOnePoint(pointTransformer, 6);
    }
}
