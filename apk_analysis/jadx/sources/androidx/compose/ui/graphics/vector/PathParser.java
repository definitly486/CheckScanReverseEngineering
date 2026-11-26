package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.kx2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PathParser {
    public static final int $stable = 8;
    private float[] nodeData = new float[64];
    private ArrayList<PathNode> nodes;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ArrayList pathStringToNodes$default(PathParser pathParser, String str, ArrayList arrayList, int i, Object obj) {
        if ((i & 2) != 0) {
            arrayList = new ArrayList();
        }
        return pathParser.pathStringToNodes(str, arrayList);
    }

    private final void resizeNodeData(int i) {
        float[] fArr = this.nodeData;
        if (i >= fArr.length) {
            float[] fArr2 = new float[i * 2];
            this.nodeData = fArr2;
            aq5.k(fArr, 0, fArr2, 0, fArr.length);
        }
    }

    public static /* synthetic */ Path toPath$default(PathParser pathParser, Path path, int i, Object obj) {
        if ((i & 1) != 0) {
            path = AndroidPath_androidKt.Path();
        }
        return pathParser.toPath(path);
    }

    public final PathParser addPathNodes(List<? extends PathNode> list) {
        ArrayList<PathNode> arrayList = this.nodes;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.nodes = arrayList;
        }
        arrayList.addAll(list);
        return this;
    }

    public final void clear() {
        ArrayList<PathNode> arrayList = this.nodes;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public final PathParser parsePathString(String str) {
        ArrayList<PathNode> arrayList = this.nodes;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.nodes = arrayList;
        } else {
            arrayList.clear();
        }
        pathStringToNodes(str, arrayList);
        return this;
    }

    public final ArrayList<PathNode> pathStringToNodes(String str, ArrayList<PathNode> arrayList) {
        int i;
        char cCharAt;
        float fIntBitsToFloat;
        int length = str.length();
        int i2 = 0;
        while (i2 < length && aa4.f(str.charAt(i2), 32) <= 0) {
            i2++;
        }
        while (length > i2 && aa4.f(str.charAt(length - 1), 32) <= 0) {
            length--;
        }
        int i3 = 0;
        while (i2 < length) {
            while (true) {
                i = i2 + 1;
                cCharAt = str.charAt(i2);
                int i4 = cCharAt | ' ';
                if ((i4 - 122) * (i4 - 97) <= 0 && i4 != 101) {
                    break;
                }
                if (i >= length) {
                    cCharAt = 0;
                    break;
                }
                i2 = i;
            }
            if (cCharAt != 0) {
                int i5 = cCharAt | ' ';
                if (i5 != 122) {
                    while (i < length && aa4.f(str.charAt(i), 32) <= 0) {
                        i++;
                    }
                    boolean z = i5 == 97;
                    int i6 = 0;
                    do {
                        long jNextFloat = (!z || 3 > i6 || i6 >= 5) ? FastFloatParserKt.nextFloat(str, i, length) : FastFloatParserKt.nextFloat(str, i, Math.min(i + 1, length));
                        i = (int) (jNextFloat >>> 32);
                        fIntBitsToFloat = Float.intBitsToFloat((int) (jNextFloat & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        if (!Float.isNaN(fIntBitsToFloat)) {
                            float[] fArr = this.nodeData;
                            int i7 = i6 + 1;
                            fArr[i6] = fIntBitsToFloat;
                            if (i7 >= fArr.length) {
                                float[] fArr2 = new float[i7 * 2];
                                this.nodeData = fArr2;
                                aq5.k(fArr, 0, fArr2, 0, fArr.length);
                            }
                            i6 = i7;
                        }
                        while (i < length && (aa4.f(str.charAt(i), 32) <= 0 || str.charAt(i) == ',')) {
                            i++;
                        }
                        if (i >= length) {
                            break;
                        }
                    } while (!Float.isNaN(fIntBitsToFloat));
                    i3 = i6;
                }
                PathNodeKt.addPathNodes(cCharAt, arrayList, this.nodeData, i3);
            }
            i2 = i;
        }
        return arrayList;
    }

    public final List<PathNode> toNodes() {
        ArrayList<PathNode> arrayList = this.nodes;
        return arrayList != null ? arrayList : kx2.b;
    }

    public final Path toPath(Path path) {
        Path path2;
        ArrayList<PathNode> arrayList = this.nodes;
        return (arrayList == null || (path2 = PathParserKt.toPath(arrayList, path)) == null) ? AndroidPath_androidKt.Path() : path2;
    }
}
