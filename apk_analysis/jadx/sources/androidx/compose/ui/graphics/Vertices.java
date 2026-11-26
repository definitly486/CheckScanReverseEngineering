package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Vertices {
    public static final int $stable = 8;
    private final int[] colors;
    private final short[] indices;
    private final float[] positions;
    private final float[] textureCoordinates;
    private final int vertexMode;

    private Vertices(int i, List<Offset> list, List<Offset> list2, List<Color> list3, List<Integer> list4) {
        this.vertexMode = i;
        if (list2.size() != list.size()) {
            InlineClassHelperKt.throwIllegalArgumentException("positions and textureCoordinates lengths must match.");
        }
        if (list3.size() != list.size()) {
            InlineClassHelperKt.throwIllegalArgumentException("positions and colors lengths must match.");
        }
        int size = list4.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iIntValue = list4.get(i2).intValue();
            if (iIntValue < 0 || iIntValue >= list.size()) {
                InlineClassHelperKt.throwIllegalArgumentException("indices values must be valid indices in the positions list.");
                break;
            }
        }
        this.positions = encodePointList(list);
        this.textureCoordinates = encodePointList(list2);
        this.colors = encodeColorList(list3);
        int size2 = list4.size();
        short[] sArr = new short[size2];
        for (int i3 = 0; i3 < size2; i3++) {
            sArr[i3] = (short) list4.get(i3).intValue();
        }
        this.indices = sArr;
    }

    private final int[] encodeColorList(List<Color> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ColorKt.m6286toArgb8_81llA(list.get(i).m6242unboximpl());
        }
        return iArr;
    }

    private final float[] encodePointList(List<Offset> list) {
        int size = list.size() * 2;
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            long jM5997unboximpl = list.get(i / 2).m5997unboximpl();
            fArr[i] = i % 2 == 0 ? Float.intBitsToFloat((int) (jM5997unboximpl >> 32)) : Float.intBitsToFloat((int) (jM5997unboximpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        return fArr;
    }

    public final int[] getColors() {
        return this.colors;
    }

    public final short[] getIndices() {
        return this.indices;
    }

    public final float[] getPositions() {
        return this.positions;
    }

    public final float[] getTextureCoordinates() {
        return this.textureCoordinates;
    }

    /* JADX INFO: renamed from: getVertexMode-c2xauaI, reason: not valid java name */
    public final int m6657getVertexModec2xauaI() {
        return this.vertexMode;
    }

    public /* synthetic */ Vertices(int i, List list, List list2, List list3, List list4, jh2 jh2Var) {
        this(i, list, list2, list3, list4);
    }
}
