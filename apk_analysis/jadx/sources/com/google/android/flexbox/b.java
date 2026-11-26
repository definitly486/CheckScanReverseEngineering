package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import androidx.media3.muxer.MuxerUtil;
import defpackage.fg;
import defpackage.jh;
import defpackage.pc3;
import defpackage.rg;
import defpackage.xy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public final pc3 a;
    public boolean[] b;
    public int[] c;
    public long[] d;
    public long[] e;

    public static class a {
        public List<com.google.android.flexbox.a> a;
        public int b;
    }

    /* JADX INFO: renamed from: com.google.android.flexbox.b$b, reason: collision with other inner class name */
    public static class C0129b implements Comparable<C0129b> {
        public int b;
        public int c;

        @Override // java.lang.Comparable
        public final int compareTo(C0129b c0129b) {
            C0129b c0129b2 = c0129b;
            int i = this.c;
            int i2 = c0129b2.c;
            return i != i2 ? i - i2 : this.b - c0129b2.b;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Order{order=");
            sb.append(this.c);
            sb.append(", index=");
            return rg.h(sb, this.b, '}');
        }
    }

    public b(pc3 pc3Var) {
        this.a = pc3Var;
    }

    public static ArrayList e(List list, int i, int i2) {
        int i3 = (i - i2) / 2;
        ArrayList arrayList = new ArrayList();
        com.google.android.flexbox.a aVar = new com.google.android.flexbox.a();
        aVar.g = i3;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (i4 == 0) {
                arrayList.add(aVar);
            }
            arrayList.add((com.google.android.flexbox.a) list.get(i4));
            if (i4 == list.size() - 1) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    public static int[] r(int i, ArrayList arrayList, SparseIntArray sparseIntArray) {
        Collections.sort(arrayList);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            C0129b c0129b = (C0129b) it.next();
            int i3 = c0129b.b;
            iArr[i2] = i3;
            sparseIntArray.append(i3, c0129b.c);
            i2++;
        }
        return iArr;
    }

    public final void a(List<com.google.android.flexbox.a> list, com.google.android.flexbox.a aVar, int i, int i2) {
        aVar.m = i2;
        this.a.j(aVar);
        aVar.p = i;
        list.add(aVar);
    }

    /* JADX WARN: Code duplicated, block: B:83:0x01cb  */
    public final void b(a aVar, int i, int i2, int i3, int i4, int i5, List<com.google.android.flexbox.a> list) {
        int iE;
        FlexItem flexItem;
        int i6;
        boolean z;
        int i7 = i;
        pc3 pc3Var = this.a;
        boolean zM = pc3Var.m();
        int mode = View.MeasureSpec.getMode(i7);
        int size = View.MeasureSpec.getSize(i7);
        List<com.google.android.flexbox.a> arrayList = list == null ? new ArrayList<>() : list;
        aVar.a = arrayList;
        boolean z2 = i5 == -1;
        int paddingStart = zM ? pc3Var.getPaddingStart() : pc3Var.getPaddingTop();
        int paddingEnd = zM ? pc3Var.getPaddingEnd() : pc3Var.getPaddingBottom();
        int paddingTop = zM ? pc3Var.getPaddingTop() : pc3Var.getPaddingStart();
        int paddingBottom = zM ? pc3Var.getPaddingBottom() : pc3Var.getPaddingEnd();
        com.google.android.flexbox.a aVar2 = new com.google.android.flexbox.a();
        int i8 = i4;
        int i9 = 1;
        aVar2.o = i8;
        int i10 = paddingStart + paddingEnd;
        aVar2.e = i10;
        int flexItemCount = pc3Var.getFlexItemCount();
        boolean z3 = z2;
        int i11 = Integer.MIN_VALUE;
        int iCombineMeasuredStates = 0;
        int i12 = 0;
        int i13 = 0;
        while (i8 < flexItemCount) {
            int i14 = flexItemCount;
            View viewG = pc3Var.g(i8);
            if (viewG != null) {
                if (viewG.getVisibility() == 8) {
                    aVar2.i++;
                    aVar2.h++;
                    if (i8 == i14 - 1 && aVar2.a() != 0) {
                        a(arrayList, aVar2, i8, i12);
                    }
                } else {
                    if (viewG instanceof CompoundButton) {
                        CompoundButton compoundButton = (CompoundButton) viewG;
                        FlexItem flexItem2 = (FlexItem) compoundButton.getLayoutParams();
                        int iV = flexItem2.v();
                        int iR0 = flexItem2.r0();
                        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
                        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
                        int minimumHeight = buttonDrawable == null ? 0 : buttonDrawable.getMinimumHeight();
                        if (iV == -1) {
                            iV = minimumWidth;
                        }
                        flexItem2.k0(iV);
                        if (iR0 == -1) {
                            iR0 = minimumHeight;
                        }
                        flexItem2.U(iR0);
                    }
                    FlexItem flexItem3 = (FlexItem) viewG.getLayoutParams();
                    if (flexItem3.P() == 4) {
                        aVar2.n.add(Integer.valueOf(i8));
                    }
                    int width = zM ? flexItem3.getWidth() : flexItem3.getHeight();
                    if (flexItem3.X() != -1.0f && mode == 1073741824) {
                        width = Math.round(size * flexItem3.X());
                    }
                    if (zM) {
                        iE = pc3Var.i(i7, i10 + flexItem3.n0() + flexItem3.q0(), width);
                        int iE2 = pc3Var.e(i2, paddingTop + paddingBottom + flexItem3.y() + flexItem3.E() + i12, flexItem3.getHeight());
                        viewG.measure(iE, iE2);
                        v(i8, iE, iE2, viewG);
                    } else {
                        int i15 = pc3Var.i(i2, paddingTop + paddingBottom + flexItem3.n0() + flexItem3.q0() + i12, flexItem3.getWidth());
                        iE = pc3Var.e(i7, i10 + flexItem3.y() + flexItem3.E(), width);
                        viewG.measure(i15, iE);
                        v(i8, i15, iE, viewG);
                    }
                    pc3Var.k(i8, viewG);
                    c(i8, viewG);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewG.getMeasuredState());
                    int i16 = aVar2.e;
                    int measuredWidth = (zM ? viewG.getMeasuredWidth() : viewG.getMeasuredHeight()) + (zM ? flexItem3.n0() : flexItem3.y()) + (zM ? flexItem3.q0() : flexItem3.E());
                    int size2 = arrayList.size();
                    if (pc3Var.getFlexWrap() != 0) {
                        if (flexItem3.Z()) {
                            flexItem = flexItem3;
                        } else {
                            if (mode == 0) {
                                flexItem = flexItem3;
                            } else {
                                flexItem = flexItem3;
                                int maxLine = pc3Var.getMaxLine();
                                if (maxLine == -1 || maxLine > size2 + 1) {
                                    int iH = pc3Var.h(viewG, i8, i13);
                                    if (iH > 0) {
                                        measuredWidth += iH;
                                    }
                                    if (size < i16 + measuredWidth) {
                                    }
                                }
                            }
                            i10 = i10;
                            arrayList = arrayList;
                            aVar2.h += i9;
                            i13++;
                            i6 = i11;
                        }
                        if (aVar2.a() > 0) {
                            arrayList = arrayList;
                            a(arrayList, aVar2, i8 > 0 ? i8 - 1 : 0, i12);
                            i12 += aVar2.g;
                        }
                        if (zM) {
                            arrayList = arrayList;
                            if (flexItem.getHeight() == -1) {
                                viewG.measure(iE, pc3Var.e(i2, pc3Var.getPaddingBottom() + pc3Var.getPaddingTop() + flexItem.y() + flexItem.E() + i12, flexItem.getHeight()));
                                c(i8, viewG);
                            }
                        } else {
                            arrayList = arrayList;
                            if (flexItem.getWidth() == -1) {
                                viewG.measure(pc3Var.i(i2, pc3Var.getPaddingRight() + pc3Var.getPaddingLeft() + flexItem.n0() + flexItem.q0() + i12, flexItem.getWidth()), iE);
                                c(i8, viewG);
                            }
                        }
                        aVar2 = new com.google.android.flexbox.a();
                        aVar2.h = i9;
                        i10 = i10;
                        aVar2.e = i10;
                        aVar2.o = i8;
                        i6 = Integer.MIN_VALUE;
                        i13 = 0;
                    } else {
                        flexItem = flexItem3;
                        i10 = i10;
                        arrayList = arrayList;
                        aVar2.h += i9;
                        i13++;
                        i6 = i11;
                    }
                    aVar2.q |= flexItem.V() != 0.0f;
                    aVar2.r |= flexItem.Q() != 0.0f;
                    int[] iArr = this.c;
                    if (iArr != null) {
                        iArr[i8] = arrayList.size();
                    }
                    aVar2.e = (zM ? viewG.getMeasuredWidth() : viewG.getMeasuredHeight()) + (zM ? flexItem.n0() : flexItem.y()) + (zM ? flexItem.q0() : flexItem.E()) + aVar2.e;
                    aVar2.j += flexItem.V();
                    aVar2.k += flexItem.Q();
                    pc3Var.a(viewG, i8, i13, aVar2);
                    int iMax = Math.max(i6, pc3Var.f(viewG) + (zM ? viewG.getMeasuredHeight() : viewG.getMeasuredWidth()) + (zM ? flexItem.y() : flexItem.n0()) + (zM ? flexItem.E() : flexItem.q0()));
                    aVar2.g = Math.max(aVar2.g, iMax);
                    if (zM) {
                        int flexWrap = pc3Var.getFlexWrap();
                        int i17 = aVar2.l;
                        i11 = iMax;
                        if (flexWrap != 2) {
                            aVar2.l = Math.max(i17, viewG.getBaseline() + flexItem.y());
                        } else {
                            aVar2.l = Math.max(i17, (viewG.getMeasuredHeight() - viewG.getBaseline()) + flexItem.E());
                        }
                    } else {
                        i11 = iMax;
                    }
                    if (i8 == i14 - 1 && aVar2.a() != 0) {
                        a(arrayList, aVar2, i8, i12);
                        i12 += aVar2.g;
                    }
                    if (i5 != -1 && arrayList.size() > 0) {
                        if (((com.google.android.flexbox.a) xy.d(1, arrayList)).p >= i5 && i8 >= i5 && !z3) {
                            i12 = -aVar2.g;
                            z = true;
                        }
                        if (i12 > i3 && z) {
                            break;
                        }
                    }
                    z = z3;
                    if (i12 > i3) {
                        continue;
                    }
                }
                i8++;
                i7 = i;
                z3 = z;
                flexItemCount = i14;
                i9 = 1;
            } else if (i8 == i14 - 1 && aVar2.a() != 0) {
                a(arrayList, aVar2, i8, i12);
            }
            z = z3;
            i8++;
            i7 = i;
            z3 = z;
            flexItemCount = i14;
            i9 = 1;
        }
        aVar.b = iCombineMeasuredStates;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    public final void c(int i, View view) {
        boolean z;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z2 = true;
        if (measuredWidth >= flexItem.v()) {
            if (measuredWidth > flexItem.e0()) {
                measuredWidth = flexItem.e0();
            } else {
                z = false;
            }
            if (measuredHeight < flexItem.r0()) {
                measuredHeight = flexItem.r0();
            } else if (measuredHeight > flexItem.u0()) {
                measuredHeight = flexItem.u0();
            } else {
                z2 = z;
            }
            if (z2) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                v(i, iMakeMeasureSpec, iMakeMeasureSpec2, view);
                this.a.k(i, view);
            }
        }
        measuredWidth = flexItem.v();
        z = true;
        if (measuredHeight < flexItem.r0()) {
            measuredHeight = flexItem.r0();
        } else if (measuredHeight > flexItem.u0()) {
            measuredHeight = flexItem.u0();
        } else {
            z2 = z;
        }
        if (z2) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            v(i, iMakeMeasureSpec3, iMakeMeasureSpec4, view);
            this.a.k(i, view);
        }
    }

    public final void d(int i, List list) {
        int i2 = this.c[i];
        if (i2 == -1) {
            i2 = 0;
        }
        if (list.size() > i2) {
            list.subList(i2, list.size()).clear();
        }
        int[] iArr = this.c;
        int length = iArr.length - 1;
        if (i > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i, length, -1);
        }
        long[] jArr = this.d;
        int length2 = jArr.length - 1;
        if (i > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i, length2, 0L);
        }
    }

    public final ArrayList f(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            FlexItem flexItem = (FlexItem) this.a.d(i2).getLayoutParams();
            C0129b c0129b = new C0129b();
            c0129b.c = flexItem.getOrder();
            c0129b.b = i2;
            arrayList.add(c0129b);
        }
        return arrayList;
    }

    public final void g(int i, int i2, int i3) {
        int mode;
        int size;
        int iRound;
        pc3 pc3Var = this.a;
        int flexDirection = pc3Var.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            mode = mode2;
            size = size2;
        } else if (flexDirection != 2 && flexDirection != 3) {
            fg.c(jh.b(flexDirection, "Invalid flex direction: "));
            return;
        } else {
            mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
        }
        List<com.google.android.flexbox.a> flexLinesInternal = pc3Var.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = pc3Var.getSumOfCrossSize() + i3;
            int i4 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).g = size - i3;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = pc3Var.getAlignContent();
                if (alignContent == 1) {
                    com.google.android.flexbox.a aVar = new com.google.android.flexbox.a();
                    aVar.g = size - sumOfCrossSize;
                    flexLinesInternal.add(0, aVar);
                    return;
                }
                if (alignContent == 2) {
                    pc3Var.setFlexLines(e(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize >= size) {
                        return;
                    }
                    float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size4 = flexLinesInternal.size();
                    float f = 0.0f;
                    while (i4 < size4) {
                        arrayList.add(flexLinesInternal.get(i4));
                        if (i4 != flexLinesInternal.size() - 1) {
                            com.google.android.flexbox.a aVar2 = new com.google.android.flexbox.a();
                            if (i4 == flexLinesInternal.size() - 2) {
                                int iRound2 = Math.round(f + size3);
                                aVar2.g = iRound2;
                                iRound = iRound2;
                                f = 0.0f;
                            } else {
                                iRound = Math.round(size3);
                                aVar2.g = iRound;
                            }
                            float f2 = (size3 - iRound) + f;
                            if (f2 > 1.0f) {
                                aVar2.g = iRound + 1;
                                f2 -= 1.0f;
                            } else if (f2 < -1.0f) {
                                aVar2.g = iRound - 1;
                                f2 += 1.0f;
                            }
                            f = f2;
                            arrayList.add(aVar2);
                        }
                        i4++;
                    }
                    pc3Var.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        pc3Var.setFlexLines(e(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    com.google.android.flexbox.a aVar3 = new com.google.android.flexbox.a();
                    aVar3.g = size5;
                    for (com.google.android.flexbox.a aVar4 : flexLinesInternal) {
                        arrayList2.add(aVar3);
                        arrayList2.add(aVar4);
                        arrayList2.add(aVar3);
                    }
                    pc3Var.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f3 = 0.0f;
                    while (i4 < size7) {
                        com.google.android.flexbox.a aVar5 = flexLinesInternal.get(i4);
                        float f4 = aVar5.g + size6;
                        if (i4 == flexLinesInternal.size() - 1) {
                            f4 += f3;
                            f3 = 0.0f;
                        }
                        int iRound3 = Math.round(f4);
                        float f5 = (f4 - iRound3) + f3;
                        if (f5 > 1.0f) {
                            iRound3++;
                            f5 -= 1.0f;
                        } else if (f5 < -1.0f) {
                            iRound3--;
                            f5 += 1.0f;
                        }
                        f3 = f5;
                        aVar5.g = iRound3;
                        i4++;
                    }
                }
            }
        }
    }

    public final void h(int i, int i2, int i3) {
        int size;
        int paddingLeft;
        int paddingRight;
        b bVar;
        int i4;
        int i5;
        pc3 pc3Var = this.a;
        int flexItemCount = pc3Var.getFlexItemCount();
        boolean[] zArr = this.b;
        if (zArr == null) {
            this.b = new boolean[Math.max(flexItemCount, 10)];
        } else if (zArr.length < flexItemCount) {
            this.b = new boolean[Math.max(zArr.length * 2, flexItemCount)];
        } else {
            Arrays.fill(zArr, false);
        }
        if (i3 >= pc3Var.getFlexItemCount()) {
            return;
        }
        int flexDirection = pc3Var.getFlexDirection();
        int flexDirection2 = pc3Var.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
            int largestMainSize = pc3Var.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = pc3Var.getPaddingLeft();
            paddingRight = pc3Var.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                fg.c(jh.b(flexDirection, "Invalid flex direction: "));
                return;
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                size = pc3Var.getLargestMainSize();
            }
            paddingLeft = pc3Var.getPaddingTop();
            paddingRight = pc3Var.getPaddingBottom();
        }
        int i6 = paddingRight + paddingLeft;
        int i7 = size;
        int[] iArr = this.c;
        int i8 = iArr != null ? iArr[i3] : 0;
        List<com.google.android.flexbox.a> flexLinesInternal = pc3Var.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        while (i8 < size2) {
            com.google.android.flexbox.a aVar = flexLinesInternal.get(i8);
            int i9 = aVar.e;
            if (i9 >= i7 || !aVar.q) {
                bVar = this;
                i4 = i;
                i5 = i2;
                if (i9 > i7 && aVar.r) {
                    bVar.q(i4, i5, aVar, i7, i6, false);
                }
            } else {
                bVar = this;
                i4 = i;
                i5 = i2;
                bVar.l(i4, i5, aVar, i7, i6, false);
            }
            i8++;
            this = bVar;
            i = i4;
            i2 = i5;
        }
    }

    public final void i(int i) {
        int[] iArr = this.c;
        if (iArr == null) {
            this.c = new int[Math.max(i, 10)];
        } else if (iArr.length < i) {
            this.c = Arrays.copyOf(this.c, Math.max(iArr.length * 2, i));
        }
    }

    public final void j(int i) {
        long[] jArr = this.d;
        if (jArr == null) {
            this.d = new long[Math.max(i, 10)];
        } else if (jArr.length < i) {
            this.d = Arrays.copyOf(this.d, Math.max(jArr.length * 2, i));
        }
    }

    public final void k(int i) {
        long[] jArr = this.e;
        if (jArr == null) {
            this.e = new long[Math.max(i, 10)];
        } else if (jArr.length < i) {
            this.e = Arrays.copyOf(this.e, Math.max(jArr.length * 2, i));
        }
    }

    public final void l(int i, int i2, com.google.android.flexbox.a aVar, int i3, int i4, boolean z) {
        int i5;
        float f;
        float f2;
        boolean z2;
        int i6;
        int iMax;
        double d;
        boolean z3;
        double d2;
        float f3 = aVar.j;
        float f4 = 0.0f;
        if (f3 <= 0.0f || i3 < (i5 = aVar.e)) {
            return;
        }
        float f5 = (i3 - i5) / f3;
        aVar.e = i4 + aVar.f;
        if (!z) {
            aVar.g = Integer.MIN_VALUE;
        }
        int i7 = 0;
        boolean z4 = false;
        int i8 = 0;
        float f6 = 0.0f;
        while (i7 < aVar.h) {
            int i9 = aVar.o + i7;
            pc3 pc3Var = this.a;
            View viewG = pc3Var.g(i9);
            if (viewG == null || viewG.getVisibility() == 8) {
                f = f4;
                i5 = i5;
                f2 = f5;
                z2 = z4;
                i6 = i7;
            } else {
                FlexItem flexItem = (FlexItem) viewG.getLayoutParams();
                int flexDirection = pc3Var.getFlexDirection();
                f = f4;
                if (flexDirection == 0 || flexDirection == 1) {
                    i5 = i5;
                    float f7 = f5;
                    z2 = z4;
                    int measuredWidth = viewG.getMeasuredWidth();
                    long[] jArr = this.e;
                    if (jArr != null) {
                        measuredWidth = (int) jArr[i9];
                    }
                    int measuredHeight = viewG.getMeasuredHeight();
                    long[] jArr2 = this.e;
                    if (jArr2 != null) {
                        measuredHeight = (int) (jArr2[i9] >> 32);
                    }
                    if (this.b[i9] || flexItem.V() <= f) {
                        i6 = i7;
                        f2 = f7;
                    } else {
                        float fV = (f7 * flexItem.V()) + measuredWidth;
                        if (i7 == aVar.h - 1) {
                            fV += f6;
                            f6 = f;
                        }
                        int iRound = Math.round(fV);
                        if (iRound > flexItem.e0()) {
                            iRound = flexItem.e0();
                            this.b[i9] = true;
                            aVar.j -= flexItem.V();
                            z2 = true;
                            i6 = i7;
                            f2 = f7;
                        } else {
                            float f8 = (fV - iRound) + f6;
                            i6 = i7;
                            f2 = f7;
                            double d3 = f8;
                            if (d3 > 1.0d) {
                                iRound++;
                                d = d3 - 1.0d;
                            } else if (d3 < -1.0d) {
                                iRound--;
                                d = d3 + 1.0d;
                            } else {
                                f6 = f8;
                            }
                            f6 = (float) d;
                        }
                        int iM = m(i2, flexItem, aVar.m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        viewG.measure(iMakeMeasureSpec, iM);
                        int measuredWidth2 = viewG.getMeasuredWidth();
                        int measuredHeight2 = viewG.getMeasuredHeight();
                        v(i9, iMakeMeasureSpec, iM, viewG);
                        pc3Var.k(i9, viewG);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i8, pc3Var.f(viewG) + measuredHeight + flexItem.y() + flexItem.E());
                    aVar.e = measuredWidth + flexItem.n0() + flexItem.q0() + aVar.e;
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewG.getMeasuredHeight();
                    long[] jArr3 = this.e;
                    if (jArr3 != null) {
                        measuredHeight3 = (int) (jArr3[i9] >> 32);
                    }
                    int measuredWidth3 = viewG.getMeasuredWidth();
                    long[] jArr4 = this.e;
                    if (jArr4 != null) {
                        measuredWidth3 = (int) jArr4[i9];
                    }
                    if (this.b[i9] || flexItem.V() <= f) {
                        i5 = i5;
                        z3 = z4;
                    } else {
                        float fV2 = (flexItem.V() * f5) + measuredHeight3;
                        if (i7 == aVar.h - 1) {
                            fV2 += f6;
                            f6 = f;
                        }
                        int iRound2 = Math.round(fV2);
                        if (iRound2 > flexItem.u0()) {
                            iRound2 = flexItem.u0();
                            this.b[i9] = true;
                            aVar.j -= flexItem.V();
                            z3 = true;
                        } else {
                            float f9 = (fV2 - iRound2) + f6;
                            double d4 = f9;
                            if (d4 > 1.0d) {
                                iRound2++;
                                d2 = d4 - 1.0d;
                            } else {
                                if (d4 < -1.0d) {
                                    iRound2--;
                                    d2 = d4 + 1.0d;
                                } else {
                                    f6 = f9;
                                }
                                z3 = z4;
                            }
                            f6 = (float) d2;
                            z3 = z4;
                        }
                        int iN = n(i, flexItem, aVar.m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        viewG.measure(iN, iMakeMeasureSpec2);
                        int measuredWidth4 = viewG.getMeasuredWidth();
                        int measuredHeight4 = viewG.getMeasuredHeight();
                        v(i9, iN, iMakeMeasureSpec2, viewG);
                        pc3Var.k(i9, viewG);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i8, pc3Var.f(viewG) + measuredWidth3 + flexItem.n0() + flexItem.q0());
                    aVar.e = measuredHeight3 + flexItem.y() + flexItem.E() + aVar.e;
                    f2 = f5;
                    z2 = z3;
                    i6 = i7;
                }
                aVar.g = Math.max(aVar.g, iMax);
                i8 = iMax;
            }
            i7 = i6 + 1;
            f5 = f2;
            f4 = f;
            i5 = i5;
            z4 = z2;
        }
        int i10 = i5;
        if (!z4 || i10 == aVar.e) {
            return;
        }
        l(i, i2, aVar, i3, i4, true);
    }

    public final int m(int i, FlexItem flexItem, int i2) {
        pc3 pc3Var = this.a;
        int iE = pc3Var.e(i, pc3Var.getPaddingBottom() + pc3Var.getPaddingTop() + flexItem.y() + flexItem.E() + i2, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(iE);
        if (size > flexItem.u0()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.u0(), View.MeasureSpec.getMode(iE));
        }
        return size < flexItem.r0() ? View.MeasureSpec.makeMeasureSpec(flexItem.r0(), View.MeasureSpec.getMode(iE)) : iE;
    }

    public final int n(int i, FlexItem flexItem, int i2) {
        pc3 pc3Var = this.a;
        int i3 = pc3Var.i(i, pc3Var.getPaddingRight() + pc3Var.getPaddingLeft() + flexItem.n0() + flexItem.q0() + i2, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(i3);
        if (size > flexItem.e0()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.e0(), View.MeasureSpec.getMode(i3));
        }
        return size < flexItem.v() ? View.MeasureSpec.makeMeasureSpec(flexItem.v(), View.MeasureSpec.getMode(i3)) : i3;
    }

    public final void o(View view, com.google.android.flexbox.a aVar, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        pc3 pc3Var = this.a;
        int alignItems = pc3Var.getAlignItems();
        if (flexItem.P() != -1) {
            alignItems = flexItem.P();
        }
        int i5 = aVar.g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (pc3Var.getFlexWrap() != 2) {
                    int i6 = i2 + i5;
                    view.layout(i, (i6 - view.getMeasuredHeight()) - flexItem.E(), i3, i6 - flexItem.E());
                    return;
                } else {
                    view.layout(i, view.getMeasuredHeight() + (i2 - i5) + flexItem.y(), i3, view.getMeasuredHeight() + (i4 - i5) + flexItem.y());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i5 - view.getMeasuredHeight()) + flexItem.y()) - flexItem.E()) / 2;
                if (pc3Var.getFlexWrap() != 2) {
                    int i7 = i2 + measuredHeight;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                } else {
                    int i8 = i2 - measuredHeight;
                    view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                    return;
                }
            }
            if (alignItems == 3) {
                int flexWrap = pc3Var.getFlexWrap();
                int i9 = aVar.l;
                if (flexWrap != 2) {
                    int iMax = Math.max(i9 - view.getBaseline(), flexItem.y());
                    view.layout(i, i2 + iMax, i3, i4 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max(view.getBaseline() + (i9 - view.getMeasuredHeight()), flexItem.E());
                    view.layout(i, i2 - iMax2, i3, i4 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (pc3Var.getFlexWrap() != 2) {
            view.layout(i, i2 + flexItem.y(), i3, i4 + flexItem.y());
        } else {
            view.layout(i, i2 - flexItem.E(), i3, i4 - flexItem.E());
        }
    }

    public final void p(View view, com.google.android.flexbox.a aVar, boolean z, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.a.getAlignItems();
        if (flexItem.P() != -1) {
            alignItems = flexItem.P();
        }
        int i5 = aVar.g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z) {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.q0(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.q0(), i4);
                    return;
                }
                view.layout(view.getMeasuredWidth() + (i - i5) + flexItem.n0(), i2, view.getMeasuredWidth() + (i3 - i5) + flexItem.n0(), i4);
                return;
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int marginStart = ((MarginLayoutParamsCompat.getMarginStart(marginLayoutParams) + (i5 - view.getMeasuredWidth())) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (z) {
                    view.layout(i - marginStart, i2, i3 - marginStart, i4);
                    return;
                } else {
                    view.layout(i + marginStart, i2, i3 + marginStart, i4);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (z) {
            view.layout(i - flexItem.q0(), i2, i3 - flexItem.q0(), i4);
        } else {
            view.layout(i + flexItem.n0(), i2, i3 + flexItem.n0(), i4);
        }
    }

    public final void q(int i, int i2, com.google.android.flexbox.a aVar, int i3, int i4, boolean z) {
        float f;
        int iMax;
        int iV;
        int iR0;
        int i5 = aVar.e;
        float f2 = aVar.k;
        float f3 = 0.0f;
        if (f2 <= 0.0f || i3 > i5) {
            return;
        }
        float f4 = (i5 - i3) / f2;
        aVar.e = i4 + aVar.f;
        if (!z) {
            aVar.g = Integer.MIN_VALUE;
        }
        int i6 = 0;
        boolean z2 = false;
        int i7 = 0;
        float f5 = 0.0f;
        while (i6 < aVar.h) {
            int i8 = aVar.o + i6;
            pc3 pc3Var = this.a;
            View viewG = pc3Var.g(i8);
            if (viewG == null || viewG.getVisibility() == 8) {
                f = f3;
                f4 = f4;
            } else {
                FlexItem flexItem = (FlexItem) viewG.getLayoutParams();
                int flexDirection = pc3Var.getFlexDirection();
                f = f3;
                if (flexDirection == 0 || flexDirection == 1) {
                    f4 = f4;
                    int measuredWidth = viewG.getMeasuredWidth();
                    long[] jArr = this.e;
                    if (jArr != null) {
                        measuredWidth = (int) jArr[i8];
                    }
                    int measuredHeight = viewG.getMeasuredHeight();
                    long[] jArr2 = this.e;
                    if (jArr2 != null) {
                        measuredHeight = (int) (jArr2[i8] >> 32);
                    }
                    if (!this.b[i8] && flexItem.Q() > f) {
                        float fQ = measuredWidth - (f4 * flexItem.Q());
                        if (i6 == aVar.h - 1) {
                            fQ += f5;
                            f5 = f;
                        }
                        int iRound = Math.round(fQ);
                        if (iRound < flexItem.v()) {
                            iV = flexItem.v();
                            this.b[i8] = true;
                            aVar.k -= flexItem.Q();
                            z2 = true;
                        } else {
                            float f6 = (fQ - iRound) + f5;
                            double d = f6;
                            if (d > 1.0d) {
                                iV = iRound + 1;
                                f6 -= 1.0f;
                            } else if (d < -1.0d) {
                                iV = iRound - 1;
                                f6 += 1.0f;
                            } else {
                                iV = iRound;
                            }
                            f5 = f6;
                        }
                        int iM = m(i2, flexItem, aVar.m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iV, 1073741824);
                        viewG.measure(iMakeMeasureSpec, iM);
                        int measuredWidth2 = viewG.getMeasuredWidth();
                        int measuredHeight2 = viewG.getMeasuredHeight();
                        v(i8, iMakeMeasureSpec, iM, viewG);
                        pc3Var.k(i8, viewG);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i7, pc3Var.f(viewG) + measuredHeight + flexItem.y() + flexItem.E());
                    aVar.e = measuredWidth + flexItem.n0() + flexItem.q0() + aVar.e;
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewG.getMeasuredHeight();
                    long[] jArr3 = this.e;
                    if (jArr3 != null) {
                        measuredHeight3 = (int) (jArr3[i8] >> 32);
                    }
                    int measuredWidth3 = viewG.getMeasuredWidth();
                    long[] jArr4 = this.e;
                    if (jArr4 != null) {
                        measuredWidth3 = (int) jArr4[i8];
                    }
                    if (this.b[i8] || flexItem.Q() <= f) {
                        f4 = f4;
                    } else {
                        float fQ2 = measuredHeight3 - (flexItem.Q() * f4);
                        if (i6 == aVar.h - 1) {
                            fQ2 += f5;
                            f5 = f;
                        }
                        int iRound2 = Math.round(fQ2);
                        if (iRound2 < flexItem.r0()) {
                            iR0 = flexItem.r0();
                            this.b[i8] = true;
                            aVar.k -= flexItem.Q();
                            z2 = true;
                        } else {
                            float f7 = (fQ2 - iRound2) + f5;
                            double d2 = f7;
                            if (d2 > 1.0d) {
                                iR0 = iRound2 + 1;
                                f7 -= 1.0f;
                            } else if (d2 < -1.0d) {
                                iR0 = iRound2 - 1;
                                f7 += 1.0f;
                            } else {
                                iR0 = iRound2;
                            }
                            f5 = f7;
                        }
                        int iN = n(i, flexItem, aVar.m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iR0, 1073741824);
                        viewG.measure(iN, iMakeMeasureSpec2);
                        int measuredWidth4 = viewG.getMeasuredWidth();
                        int measuredHeight4 = viewG.getMeasuredHeight();
                        v(i8, iN, iMakeMeasureSpec2, viewG);
                        pc3Var.k(i8, viewG);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i7, pc3Var.f(viewG) + measuredWidth3 + flexItem.n0() + flexItem.q0());
                    aVar.e = measuredHeight3 + flexItem.y() + flexItem.E() + aVar.e;
                }
                aVar.g = Math.max(aVar.g, iMax);
                i7 = iMax;
            }
            i6++;
            f3 = f;
            f4 = f4;
        }
        if (!z2 || i5 == aVar.e) {
            return;
        }
        q(i, i2, aVar, i3, i4, true);
    }

    public final void s(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iN0 = (i - flexItem.n0()) - flexItem.q0();
        pc3 pc3Var = this.a;
        int iMin = Math.min(Math.max(iN0 - pc3Var.f(view), flexItem.v()), flexItem.e0());
        long[] jArr = this.e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) (jArr[i2] >> 32) : view.getMeasuredHeight(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        v(i2, iMakeMeasureSpec2, iMakeMeasureSpec, view);
        pc3Var.k(i2, view);
    }

    public final void t(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iY = (i - flexItem.y()) - flexItem.E();
        pc3 pc3Var = this.a;
        int iMin = Math.min(Math.max(iY - pc3Var.f(view), flexItem.r0()), flexItem.u0());
        long[] jArr = this.e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) jArr[i2] : view.getMeasuredWidth(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        v(i2, iMakeMeasureSpec, iMakeMeasureSpec2, view);
        pc3Var.k(i2, view);
    }

    public final void u(int i) {
        View viewG;
        pc3 pc3Var = this.a;
        if (i >= pc3Var.getFlexItemCount()) {
            return;
        }
        int flexDirection = pc3Var.getFlexDirection();
        if (pc3Var.getAlignItems() != 4) {
            for (com.google.android.flexbox.a aVar : pc3Var.getFlexLinesInternal()) {
                for (Integer num : aVar.n) {
                    View viewG2 = pc3Var.g(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        t(viewG2, aVar.g, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            fg.c(jh.b(flexDirection, "Invalid flex direction: "));
                            return;
                        }
                        s(viewG2, aVar.g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.c;
        List<com.google.android.flexbox.a> flexLinesInternal = pc3Var.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
            com.google.android.flexbox.a aVar2 = flexLinesInternal.get(i2);
            int i3 = aVar2.h;
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = aVar2.o + i4;
                if (i4 < pc3Var.getFlexItemCount() && (viewG = pc3Var.g(i5)) != null && viewG.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) viewG.getLayoutParams();
                    if (flexItem.P() == -1 || flexItem.P() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            t(viewG, aVar2.g, i5);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                fg.c(jh.b(flexDirection, "Invalid flex direction: "));
                                return;
                            }
                            s(viewG, aVar2.g, i5);
                        }
                    }
                }
            }
        }
    }

    public final void v(int i, int i2, int i3, View view) {
        long[] jArr = this.d;
        if (jArr != null) {
            jArr[i] = (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i3) << 32);
        }
        long[] jArr2 = this.e;
        if (jArr2 != null) {
            jArr2[i] = (((long) view.getMeasuredHeight()) << 32) | (((long) view.getMeasuredWidth()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        }
    }
}
