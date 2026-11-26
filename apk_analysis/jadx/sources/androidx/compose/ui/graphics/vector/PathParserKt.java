package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import defpackage.me0;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PathParserKt {
    private static final float[] EmptyArray = new float[0];

    private static final void arcToBezier(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        double d10 = d3;
        int iCeil = (int) Math.ceil(Math.abs((d9 * 4.0d) / 3.141592653589793d));
        double dCos = Math.cos(d7);
        double dSin = Math.sin(d7);
        double dCos2 = Math.cos(d8);
        double dSin2 = Math.sin(d8);
        double d11 = -d10;
        double d12 = d11 * dCos;
        double d13 = d4 * dSin;
        double d14 = (d12 * dSin2) - (d13 * dCos2);
        double d15 = d11 * dSin;
        double d16 = d4 * dCos;
        double d17 = (dCos2 * d16) + (dSin2 * d15);
        double d18 = d9 / ((double) iCeil);
        double d19 = d17;
        double d20 = d14;
        int i = 0;
        double d21 = d5;
        double d22 = d6;
        double d23 = d8;
        while (i < iCeil) {
            double d24 = d23 + d18;
            double dSin3 = Math.sin(d24);
            double dCos3 = Math.cos(d24);
            double d25 = (((d10 * dCos) * dCos3) + d) - (d13 * dSin3);
            int i2 = i;
            double d26 = (d16 * dSin3) + (d3 * dSin * dCos3) + d2;
            double d27 = (d12 * dSin3) - (d13 * dCos3);
            double d28 = (dCos3 * d16) + (dSin3 * d15);
            double d29 = d24 - d23;
            double dTan = Math.tan(d29 / 2.0d);
            double dSqrt = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d29)) / 3.0d;
            path.cubicTo((float) ((d20 * dSqrt) + d21), (float) ((d19 * dSqrt) + d22), (float) (d25 - (dSqrt * d27)), (float) (d26 - (dSqrt * d28)), (float) d25, (float) d26);
            dSin = dSin;
            d18 = d18;
            d21 = d25;
            d22 = d26;
            i = i2 + 1;
            iCeil = iCeil;
            dCos = dCos;
            d23 = d24;
            d19 = d28;
            d20 = d27;
            d10 = d3;
        }
    }

    private static final void drawArc(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, boolean z, boolean z2) {
        double d8;
        double d9;
        double d10 = (d7 / 180.0d) * 3.141592653589793d;
        double dCos = Math.cos(d10);
        double dSin = Math.sin(d10);
        double d11 = ((d2 * dSin) + (d * dCos)) / d5;
        double d12 = ((d2 * dCos) + ((-d) * dSin)) / d6;
        double d13 = ((d4 * dSin) + (d3 * dCos)) / d5;
        double d14 = ((d4 * dCos) + ((-d3) * dSin)) / d6;
        double d15 = d11 - d13;
        double d16 = d12 - d14;
        double d17 = (d11 + d13) / 2.0d;
        double d18 = (d12 + d14) / 2.0d;
        double d19 = (d16 * d16) + (d15 * d15);
        if (d19 == 0.0d) {
            return;
        }
        double d20 = (1.0d / d19) - 0.25d;
        if (d20 < 0.0d) {
            double dSqrt = (float) (Math.sqrt(d19) / 1.99999d);
            drawArc(path, d, d2, d3, d4, d5 * dSqrt, d6 * dSqrt, d7, z, z2);
            return;
        }
        double dSqrt2 = Math.sqrt(d20);
        double d21 = d15 * dSqrt2;
        double d22 = dSqrt2 * d16;
        if (z == z2) {
            d8 = d17 - d22;
            d9 = d18 + d21;
        } else {
            d8 = d17 + d22;
            d9 = d18 - d21;
        }
        double dAtan2 = Math.atan2(d12 - d9, d11 - d8);
        double dAtan3 = Math.atan2(d14 - d9, d13 - d8) - dAtan2;
        if (z2 != (dAtan3 >= 0.0d)) {
            dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
        }
        double d23 = d8 * d5;
        double d24 = d9 * d6;
        arcToBezier(path, (d23 * dCos) - (d24 * dSin), (d24 * dCos) + (d23 * dSin), d5, d6, d, d2, d10, dAtan2, dAtan3);
    }

    public static final float[] getEmptyArray() {
        return EmptyArray;
    }

    public static final Path toPath(List<? extends PathNode> list, Path path) {
        int i;
        float f;
        PathNode pathNode;
        float f2;
        float f3;
        float x1;
        float y1;
        float x2;
        float y2;
        float dy2;
        float f4;
        float f5;
        float dx1;
        float dy1;
        float dx2;
        float dy3;
        float y3;
        float y;
        float x;
        float x3;
        float y4;
        List<? extends PathNode> list2 = list;
        Path path2 = path;
        int iMo6120getFillTypeRgk1Os = path2.mo6120getFillTypeRgk1Os();
        path2.rewind();
        path2.mo6122setFillTypeoQ8Xj4U(iMo6120getFillTypeRgk1Os);
        PathNode pathNode2 = list2.isEmpty() ? PathNode.Close.INSTANCE : list2.get(0);
        int size = list2.size();
        float f6 = 0.0f;
        int i2 = 0;
        float arcStartX = 0.0f;
        float arcStartY = 0.0f;
        float x4 = 0.0f;
        float y5 = 0.0f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        while (i2 < size) {
            PathNode pathNode3 = list2.get(i2);
            if (pathNode3 instanceof PathNode.Close) {
                path2.close();
                i = size;
                f = f6;
                pathNode = pathNode3;
                arcStartX = f7;
                x4 = arcStartX;
                arcStartY = f8;
            } else {
                if (pathNode3 instanceof PathNode.RelativeMoveTo) {
                    PathNode.RelativeMoveTo relativeMoveTo = (PathNode.RelativeMoveTo) pathNode3;
                    x3 = relativeMoveTo.getDx() + x4;
                    y4 = relativeMoveTo.getDy() + y5;
                    path2.relativeMoveTo(relativeMoveTo.getDx(), relativeMoveTo.getDy());
                } else {
                    if (pathNode3 instanceof PathNode.MoveTo) {
                        PathNode.MoveTo moveTo = (PathNode.MoveTo) pathNode3;
                        x3 = moveTo.getX();
                        y4 = moveTo.getY();
                        path2.moveTo(moveTo.getX(), moveTo.getY());
                    } else {
                        if (pathNode3 instanceof PathNode.RelativeLineTo) {
                            PathNode.RelativeLineTo relativeLineTo = (PathNode.RelativeLineTo) pathNode3;
                            path2.relativeLineTo(relativeLineTo.getDx(), relativeLineTo.getDy());
                            x2 = relativeLineTo.getDx() + x4;
                            dy2 = relativeLineTo.getDy();
                        } else {
                            if (pathNode3 instanceof PathNode.LineTo) {
                                PathNode.LineTo lineTo = (PathNode.LineTo) pathNode3;
                                path2.lineTo(lineTo.getX(), lineTo.getY());
                                x2 = lineTo.getX();
                                y2 = lineTo.getY();
                            } else {
                                if (pathNode3 instanceof PathNode.RelativeHorizontalTo) {
                                    PathNode.RelativeHorizontalTo relativeHorizontalTo = (PathNode.RelativeHorizontalTo) pathNode3;
                                    path2.relativeLineTo(relativeHorizontalTo.getDx(), f6);
                                    x = relativeHorizontalTo.getDx() + x4;
                                } else if (pathNode3 instanceof PathNode.HorizontalTo) {
                                    PathNode.HorizontalTo horizontalTo = (PathNode.HorizontalTo) pathNode3;
                                    path2.lineTo(horizontalTo.getX(), y5);
                                    x = horizontalTo.getX();
                                } else {
                                    if (pathNode3 instanceof PathNode.RelativeVerticalTo) {
                                        PathNode.RelativeVerticalTo relativeVerticalTo = (PathNode.RelativeVerticalTo) pathNode3;
                                        path2.relativeLineTo(f6, relativeVerticalTo.getDy());
                                        y = relativeVerticalTo.getDy() + y5;
                                    } else if (pathNode3 instanceof PathNode.VerticalTo) {
                                        PathNode.VerticalTo verticalTo = (PathNode.VerticalTo) pathNode3;
                                        path2.lineTo(x4, verticalTo.getY());
                                        y = verticalTo.getY();
                                    } else {
                                        if (pathNode3 instanceof PathNode.RelativeCurveTo) {
                                            PathNode.RelativeCurveTo relativeCurveTo = (PathNode.RelativeCurveTo) pathNode3;
                                            path2.relativeCubicTo(relativeCurveTo.getDx1(), relativeCurveTo.getDy1(), relativeCurveTo.getDx2(), relativeCurveTo.getDy2(), relativeCurveTo.getDx3(), relativeCurveTo.getDy3());
                                            dx1 = relativeCurveTo.getDx2() + x4;
                                            dy1 = relativeCurveTo.getDy2() + y5;
                                            dx2 = relativeCurveTo.getDx3() + x4;
                                            dy3 = relativeCurveTo.getDy3();
                                        } else if (pathNode3 instanceof PathNode.CurveTo) {
                                            PathNode.CurveTo curveTo = (PathNode.CurveTo) pathNode3;
                                            path.cubicTo(curveTo.getX1(), curveTo.getY1(), curveTo.getX2(), curveTo.getY2(), curveTo.getX3(), curveTo.getY3());
                                            dx1 = curveTo.getX2();
                                            dy1 = curveTo.getY2();
                                            dx2 = curveTo.getX3();
                                            y3 = curveTo.getY3();
                                            x4 = dx2;
                                            y5 = y3;
                                            i = size;
                                            f = f6;
                                            i2 = i2;
                                            pathNode = pathNode3;
                                            arcStartX = dx1;
                                            arcStartY = dy1;
                                        } else if (pathNode3 instanceof PathNode.RelativeReflectiveCurveTo) {
                                            if (pathNode2.isCurve()) {
                                                float f9 = x4 - arcStartX;
                                                f5 = y5 - arcStartY;
                                                f4 = f9;
                                            } else {
                                                f4 = f6;
                                                f5 = f4;
                                            }
                                            PathNode.RelativeReflectiveCurveTo relativeReflectiveCurveTo = (PathNode.RelativeReflectiveCurveTo) pathNode3;
                                            path.relativeCubicTo(f4, f5, relativeReflectiveCurveTo.getDx1(), relativeReflectiveCurveTo.getDy1(), relativeReflectiveCurveTo.getDx2(), relativeReflectiveCurveTo.getDy2());
                                            dx1 = relativeReflectiveCurveTo.getDx1() + x4;
                                            dy1 = relativeReflectiveCurveTo.getDy1() + y5;
                                            dx2 = relativeReflectiveCurveTo.getDx2() + x4;
                                            dy3 = relativeReflectiveCurveTo.getDy2();
                                        } else {
                                            if (pathNode3 instanceof PathNode.ReflectiveCurveTo) {
                                                if (pathNode2.isCurve()) {
                                                    x4 = (x4 * 2.0f) - arcStartX;
                                                    y5 = (2.0f * y5) - arcStartY;
                                                }
                                                PathNode.ReflectiveCurveTo reflectiveCurveTo = (PathNode.ReflectiveCurveTo) pathNode3;
                                                path.cubicTo(x4, y5, reflectiveCurveTo.getX1(), reflectiveCurveTo.getY1(), reflectiveCurveTo.getX2(), reflectiveCurveTo.getY2());
                                                x1 = reflectiveCurveTo.getX1();
                                                y1 = reflectiveCurveTo.getY1();
                                                float x5 = reflectiveCurveTo.getX2();
                                                float y6 = reflectiveCurveTo.getY2();
                                                x4 = x5;
                                                y5 = y6;
                                            } else if (pathNode3 instanceof PathNode.RelativeQuadTo) {
                                                PathNode.RelativeQuadTo relativeQuadTo = (PathNode.RelativeQuadTo) pathNode3;
                                                path.relativeQuadraticTo(relativeQuadTo.getDx1(), relativeQuadTo.getDy1(), relativeQuadTo.getDx2(), relativeQuadTo.getDy2());
                                                arcStartX = relativeQuadTo.getDx1() + x4;
                                                arcStartY = relativeQuadTo.getDy1() + y5;
                                                x2 = relativeQuadTo.getDx2() + x4;
                                                dy2 = relativeQuadTo.getDy2();
                                            } else if (pathNode3 instanceof PathNode.QuadTo) {
                                                PathNode.QuadTo quadTo = (PathNode.QuadTo) pathNode3;
                                                path.quadraticTo(quadTo.getX1(), quadTo.getY1(), quadTo.getX2(), quadTo.getY2());
                                                arcStartX = quadTo.getX1();
                                                arcStartY = quadTo.getY1();
                                                x2 = quadTo.getX2();
                                                y2 = quadTo.getY2();
                                            } else if (pathNode3 instanceof PathNode.RelativeReflectiveQuadTo) {
                                                if (pathNode2.isQuad()) {
                                                    f2 = x4 - arcStartX;
                                                    f3 = y5 - arcStartY;
                                                } else {
                                                    f2 = f6;
                                                    f3 = f2;
                                                }
                                                PathNode.RelativeReflectiveQuadTo relativeReflectiveQuadTo = (PathNode.RelativeReflectiveQuadTo) pathNode3;
                                                path.relativeQuadraticTo(f2, f3, relativeReflectiveQuadTo.getDx(), relativeReflectiveQuadTo.getDy());
                                                x1 = f2 + x4;
                                                y1 = f3 + y5;
                                                float dx = relativeReflectiveQuadTo.getDx() + x4;
                                                y5 = relativeReflectiveQuadTo.getDy() + y5;
                                                x4 = dx;
                                            } else if (pathNode3 instanceof PathNode.ReflectiveQuadTo) {
                                                if (pathNode2.isQuad()) {
                                                    x4 = (x4 * 2.0f) - arcStartX;
                                                    y5 = (2.0f * y5) - arcStartY;
                                                }
                                                PathNode.ReflectiveQuadTo reflectiveQuadTo = (PathNode.ReflectiveQuadTo) pathNode3;
                                                path.quadraticTo(x4, y5, reflectiveQuadTo.getX(), reflectiveQuadTo.getY());
                                                float f10 = x4;
                                                x4 = reflectiveQuadTo.getX();
                                                arcStartX = f10;
                                                i = size;
                                                f = f6;
                                                i2 = i2;
                                                arcStartY = y5;
                                                pathNode = pathNode3;
                                                y5 = reflectiveQuadTo.getY();
                                            } else if (pathNode3 instanceof PathNode.RelativeArcTo) {
                                                PathNode.RelativeArcTo relativeArcTo = (PathNode.RelativeArcTo) pathNode3;
                                                float arcStartDx = relativeArcTo.getArcStartDx() + x4;
                                                float arcStartDy = relativeArcTo.getArcStartDy() + y5;
                                                f = f6;
                                                pathNode = pathNode3;
                                                i = size;
                                                drawArc(path, x4, y5, arcStartDx, arcStartDy, relativeArcTo.getHorizontalEllipseRadius(), relativeArcTo.getVerticalEllipseRadius(), relativeArcTo.getTheta(), relativeArcTo.isMoreThanHalf(), relativeArcTo.isPositiveArc());
                                                arcStartX = arcStartDx;
                                                x4 = arcStartX;
                                                arcStartY = arcStartDy;
                                            } else {
                                                i = size;
                                                f = f6;
                                                pathNode = pathNode3;
                                                if (!(pathNode instanceof PathNode.ArcTo)) {
                                                    me0.e();
                                                    return null;
                                                }
                                                PathNode.ArcTo arcTo = (PathNode.ArcTo) pathNode;
                                                drawArc(path, x4, y5, arcTo.getArcStartX(), arcTo.getArcStartY(), arcTo.getHorizontalEllipseRadius(), arcTo.getVerticalEllipseRadius(), arcTo.getTheta(), arcTo.isMoreThanHalf(), arcTo.isPositiveArc());
                                                arcStartX = arcTo.getArcStartX();
                                                x4 = arcStartX;
                                                arcStartY = arcTo.getArcStartY();
                                            }
                                            i = size;
                                            f = f6;
                                            i2 = i2;
                                            pathNode = pathNode3;
                                            arcStartY = y1;
                                            arcStartX = x1;
                                        }
                                        y3 = dy3 + y5;
                                        x4 = dx2;
                                        y5 = y3;
                                        i = size;
                                        f = f6;
                                        i2 = i2;
                                        pathNode = pathNode3;
                                        arcStartX = dx1;
                                        arcStartY = dy1;
                                    }
                                    y5 = y;
                                    i = size;
                                    f = f6;
                                    i2 = i2;
                                    pathNode = pathNode3;
                                }
                                x4 = x;
                                i = size;
                                f = f6;
                                i2 = i2;
                                pathNode = pathNode3;
                            }
                            y5 = y2;
                            x4 = x2;
                            i = size;
                            f = f6;
                            i2 = i2;
                            pathNode = pathNode3;
                        }
                        y2 = dy2 + y5;
                        y5 = y2;
                        x4 = x2;
                        i = size;
                        f = f6;
                        i2 = i2;
                        pathNode = pathNode3;
                    }
                    i2++;
                    path2 = path;
                    pathNode2 = pathNode;
                    size = i;
                    f6 = f;
                    list2 = list;
                }
                x4 = x3;
                f7 = x4;
                y5 = y4;
                f8 = y5;
                i = size;
                f = f6;
                i2 = i2;
                pathNode = pathNode3;
                i2++;
                path2 = path;
                pathNode2 = pathNode;
                size = i;
                f6 = f;
                list2 = list;
            }
            y5 = arcStartY;
            i2++;
            path2 = path;
            pathNode2 = pathNode;
            size = i;
            f6 = f;
            list2 = list;
        }
        return path;
    }

    public static /* synthetic */ Path toPath$default(List list, Path path, int i, Object obj) {
        if ((i & 1) != 0) {
            path = AndroidPath_androidKt.Path();
        }
        return toPath(list, path);
    }

    private static final double toRadians(double d) {
        return (d / 180.0d) * 3.141592653589793d;
    }
}
