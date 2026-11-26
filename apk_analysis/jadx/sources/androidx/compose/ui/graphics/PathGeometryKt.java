package androidx.compose.ui.graphics;

import defpackage.i8;
import defpackage.me0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PathGeometryKt {

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PathSegment.Type.values().length];
            try {
                iArr[PathSegment.Type.Move.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PathSegment.Type.Line.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PathSegment.Type.Quadratic.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PathSegment.Type.Conic.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PathSegment.Type.Cubic.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PathSegment.Type.Close.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PathSegment.Type.Done.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Path.Direction computeDirection(Path path) {
        float f;
        PathIterator it = path.iterator();
        float[] fArr = new float[8];
        PathSegment.Type typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
        char c = 1;
        boolean z = true;
        float fCubicArea = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        while (true) {
            if (typeNext$default != PathSegment.Type.Done) {
                switch (WhenMappings.$EnumSwitchMapping$0[typeNext$default.ordinal()]) {
                    case 1:
                        c = c;
                        f = 0.0f;
                        if (z) {
                            z = false;
                            f4 = fArr[0];
                            f5 = fArr[c];
                            typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                            c = c;
                        }
                        break;
                    case 2:
                        c = c;
                        float f6 = fArr[0];
                        float f7 = fArr[c];
                        float f8 = fArr[2];
                        float f9 = fArr[3];
                        fCubicArea += BezierKt.cubicArea(f6, f7, f6, f7, f8, f9, f8, f9);
                        f2 = f8;
                        f3 = f9;
                        typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                        c = c;
                        break;
                    case 3:
                        float f10 = fArr[0];
                        float f11 = fArr[c];
                        float f12 = fArr[2];
                        float f13 = fArr[3];
                        c = c;
                        float f14 = fArr[4];
                        float f15 = fArr[5];
                        fCubicArea += BezierKt.cubicArea(f10, f11, i8.b(f12, f10, 0.6666667f, f10), i8.b(f13, f11, 0.6666667f, f11), i8.b(f12, f14, 0.6666667f, f14), i8.b(f13, f15, 0.6666667f, f15), f14, f15);
                        f2 = f14;
                        f3 = f15;
                        typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                        c = c;
                        break;
                    case 4:
                        break;
                    case 5:
                        fCubicArea += BezierKt.cubicArea(fArr[0], fArr[c], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6], fArr[7]);
                        float f16 = fArr[6];
                        c = c;
                        f3 = fArr[7];
                        f2 = f16;
                        typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                        c = c;
                        break;
                    case 6:
                        if (Math.abs(f2 - f4) >= 1.05E-6f || Math.abs(f3 - f5) >= 1.05E-6f) {
                            fCubicArea += BezierKt.cubicArea(f2, f3, f2, f3, f4, f5, f4, f5);
                            f2 = f4;
                            f3 = f5;
                        }
                        typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                        c = c;
                        break;
                    case 7:
                        break;
                    default:
                        me0.e();
                        return null;
                }
            }
            f = 0.0f;
        }
        return fCubicArea >= f ? Path.Direction.Clockwise : Path.Direction.CounterClockwise;
    }

    public static final List<Path> divide(Path path, List<Path> list) {
        Path Path = AndroidPath_androidKt.Path();
        PathIterator it = path.iterator();
        float[] fArr = new float[8];
        PathSegment.Type typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
        Path Path2 = Path;
        boolean z = true;
        boolean z2 = true;
        while (typeNext$default != PathSegment.Type.Done) {
            switch (WhenMappings.$EnumSwitchMapping$0[typeNext$default.ordinal()]) {
                case 1:
                    if (!z && !z2) {
                        list.add(Path2);
                        Path2 = AndroidPath_androidKt.Path();
                    }
                    Path2.moveTo(fArr[0], fArr[1]);
                    z = false;
                    z2 = true;
                    typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                    break;
                case 2:
                    Path2.lineTo(fArr[2], fArr[3]);
                    z2 = false;
                    typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                    break;
                case 3:
                    Path2.quadraticTo(fArr[2], fArr[3], fArr[4], fArr[5]);
                    z2 = false;
                    typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                    break;
                case 4:
                case 7:
                    break;
                case 5:
                    Path2.cubicTo(fArr[2], fArr[3], fArr[4], fArr[5], fArr[6], fArr[7]);
                    z2 = false;
                    typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                    break;
                case 6:
                    Path2.close();
                    typeNext$default = PathIterator.next$default(it, fArr, 0, 2, null);
                    break;
                default:
                    me0.e();
                    return null;
            }
        }
        if (!z && !z2) {
            list.add(Path2);
        }
        return list;
    }

    public static /* synthetic */ List divide$default(Path path, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = new ArrayList();
        }
        return divide(path, list);
    }

    private static final int floatCountForType(PathSegment.Type type) {
        switch (WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 6;
            case 4:
            case 5:
                return 8;
            case 6:
            case 7:
                return 0;
            default:
                me0.e();
                return 0;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final Path reverse(Path path, Path path2) {
        boolean z;
        float[] fArr;
        PathIterator it = path.iterator();
        int iCalculateSize = it.calculateSize(false);
        ArrayList arrayList = new ArrayList(iCalculateSize);
        ArrayList arrayList2 = new ArrayList(iCalculateSize);
        float[] fArr2 = new float[8];
        for (PathSegment.Type typeNext$default = PathIterator.next$default(it, fArr2, 0, 2, null); typeNext$default != PathSegment.Type.Done; typeNext$default = PathIterator.next$default(it, fArr2, 0, 2, null)) {
            arrayList.add(typeNext$default);
            if (typeNext$default != PathSegment.Type.Close) {
                arrayList2.add(Arrays.copyOf(fArr2, floatCountForType(typeNext$default)));
            }
        }
        int size = arrayList2.size();
        boolean z2 = false;
        boolean z3 = true;
        for (int size2 = arrayList.size() - 1; -1 < size2; size2--) {
            if (z3) {
                size--;
                fArr = (float[]) arrayList2.get(size);
                fArr.getClass();
                int length = fArr.length;
                path2.moveTo(fArr[length - 2], fArr[length - 1]);
                z = false;
            } else {
                z = z3;
                fArr = (float[]) arrayList2.get(size);
            }
            int i = size;
            switch (WhenMappings.$EnumSwitchMapping$0[((PathSegment.Type) arrayList.get(size2)).ordinal()]) {
                case 1:
                    if (z2) {
                        path2.close();
                        z2 = false;
                    }
                    z3 = true;
                    size = i;
                    break;
                case 2:
                    float[] fArr3 = fArr;
                    path2.lineTo(fArr3[0], fArr3[1]);
                    i--;
                    size = i;
                    z3 = z;
                    break;
                case 3:
                    float[] fArr4 = fArr;
                    path2.quadraticTo(fArr4[2], fArr4[3], fArr4[0], fArr4[1]);
                    i--;
                    size = i;
                    z3 = z;
                    break;
                case 4:
                case 7:
                    size = i;
                    z3 = z;
                    break;
                case 5:
                    float[] fArr5 = fArr;
                    path2.cubicTo(fArr[4], fArr[5], fArr[2], fArr5[3], fArr5[0], fArr5[1]);
                    i--;
                    size = i;
                    z3 = z;
                    break;
                case 6:
                    z2 = true;
                    size = i;
                    z3 = z;
                    break;
                default:
                    me0.e();
                    return null;
            }
        }
        if (z2) {
            path2.close();
        }
        return path2;
    }

    public static /* synthetic */ Path reverse$default(Path path, Path path2, int i, Object obj) {
        if ((i & 1) != 0) {
            path2 = AndroidPath_androidKt.Path();
        }
        return reverse(path, path2);
    }
}
