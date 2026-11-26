package androidx.compose.foundation.text.input.internal;

import androidx.collection.MutableIntList;
import androidx.compose.foundation.text.input.internal.TextStyleBuffer;
import androidx.compose.ui.text.AnnotatedString;
import defpackage.aa4;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextStyleBuffer<T> {
    public static final int $stable = 8;
    private int gapEnd;
    private int gapStart;
    private final IntIntervalTree<T> intervalTree;

    public TextStyleBuffer(TextStyleBuffer<T> textStyleBuffer) {
        this.intervalTree = textStyleBuffer != null ? new IntIntervalTree<>(textStyleBuffer.intervalTree) : new IntIntervalTree<>(null, 1, null);
        if (textStyleBuffer != null) {
            this.gapStart = textStyleBuffer.gapStart;
            this.gapEnd = textStyleBuffer.gapEnd;
        } else {
            this.gapStart = 0;
            this.gapEnd = 1000;
        }
    }

    private final void deleteAfterGap(int i) {
        if (i == 0) {
            return;
        }
        IntIntervalTree<T> intIntervalTree = this.intervalTree;
        int i2 = this.gapEnd;
        int i3 = i2 + i;
        MutableIntList tempArray = intIntervalTree.getTempArray();
        if (!Node.m2775equalsimpl0(intIntervalTree.m2754getRoot27flxzM(), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2754getRoot27flxzM()) >= i2 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2754getRoot27flxzM()) <= i3) {
            int iM2754getRoot27flxzM = intIntervalTree.m2754getRoot27flxzM();
            loop0: while (true) {
                char c = 0;
                while (true) {
                    if (Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2756getTerminator27flxzM())) {
                        break loop0;
                    }
                    if (c == 0) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) >= i2) {
                            iM2754getRoot27flxzM = intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 1;
                    } else if (c == 1) {
                        int iM2773constructorimpl = Node.m2773constructorimpl(iM2754getRoot27flxzM);
                        int iM2755getStart330cO7A = intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl);
                        int i4 = this.gapEnd;
                        if (iM2755getStart330cO7A < i4 + i && i4 <= iM2755getStart330cO7A) {
                            iM2755getStart330cO7A = i4 + i;
                        }
                        intIntervalTree.m2769setStart9hnwElY(iM2773constructorimpl, iM2755getStart330cO7A);
                        int iM2748getEnd330cO7A = intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl);
                        int i5 = this.gapEnd;
                        if (iM2748getEnd330cO7A < i5 + i && i5 <= iM2748getEnd330cO7A) {
                            iM2748getEnd330cO7A = i5 + i;
                        }
                        intIntervalTree.m2762setEnd9hnwElY(iM2773constructorimpl, iM2748getEnd330cO7A);
                        int iM2751getMin330cO7A = intIntervalTree.m2751getMin330cO7A(iM2773constructorimpl);
                        int i6 = this.gapEnd;
                        if (iM2751getMin330cO7A < i6 + i && i6 <= iM2751getMin330cO7A) {
                            iM2751getMin330cO7A = i6 + i;
                        }
                        intIntervalTree.m2765setMin9hnwElY(iM2773constructorimpl, iM2751getMin330cO7A);
                        int iM2750getMax330cO7A = intIntervalTree.m2750getMax330cO7A(iM2773constructorimpl);
                        int i7 = this.gapEnd;
                        if (iM2750getMax330cO7A < i7 + i && i7 <= iM2750getMax330cO7A) {
                            iM2750getMax330cO7A = i7 + i;
                        }
                        intIntervalTree.m2764setMax9hnwElY(iM2773constructorimpl, iM2750getMax330cO7A);
                        if (intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl) <= intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl)) {
                            intIntervalTree.m2746addZlWbn38(tempArray, iM2773constructorimpl);
                        }
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) >= i2 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) <= i3) {
                            iM2754getRoot27flxzM = intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 2;
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2749getLeftbLpG9ms(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                }
            }
        }
        int[] iArr = tempArray.content;
        int i8 = tempArray._size;
        for (int i9 = 0; i9 < i8; i9++) {
            intIntervalTree.m2740removeNode9hnwElY(Node.m2773constructorimpl(iArr[i9]), false);
        }
        tempArray.clear();
        intIntervalTree.cleanDeletedNodesIfNeeded();
        this.gapEnd += i;
    }

    private final void deleteBeforeGap(int i) {
        if (i == 0) {
            return;
        }
        int i2 = this.gapStart;
        int i3 = i2 - i;
        IntIntervalTree<T> intIntervalTree = this.intervalTree;
        MutableIntList tempArray = intIntervalTree.getTempArray();
        if (!Node.m2775equalsimpl0(intIntervalTree.m2754getRoot27flxzM(), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2754getRoot27flxzM()) >= i3 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2754getRoot27flxzM()) <= i2) {
            int iM2754getRoot27flxzM = intIntervalTree.m2754getRoot27flxzM();
            loop0: while (true) {
                char c = 0;
                while (true) {
                    if (Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2756getTerminator27flxzM())) {
                        break loop0;
                    }
                    if (c == 0) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) >= i3) {
                            iM2754getRoot27flxzM = intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 1;
                    } else if (c == 1) {
                        int iM2773constructorimpl = Node.m2773constructorimpl(iM2754getRoot27flxzM);
                        int iM2755getStart330cO7A = intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl);
                        if (i3 <= iM2755getStart330cO7A && iM2755getStart330cO7A < this.gapStart) {
                            iM2755getStart330cO7A = this.gapEnd;
                        }
                        intIntervalTree.m2769setStart9hnwElY(iM2773constructorimpl, iM2755getStart330cO7A);
                        int iM2748getEnd330cO7A = intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl);
                        if (i3 <= iM2748getEnd330cO7A && iM2748getEnd330cO7A < this.gapStart) {
                            iM2748getEnd330cO7A = this.gapEnd;
                        }
                        intIntervalTree.m2762setEnd9hnwElY(iM2773constructorimpl, iM2748getEnd330cO7A);
                        int iM2751getMin330cO7A = intIntervalTree.m2751getMin330cO7A(iM2773constructorimpl);
                        if (i3 <= iM2751getMin330cO7A && iM2751getMin330cO7A < this.gapStart) {
                            iM2751getMin330cO7A = this.gapEnd;
                        }
                        intIntervalTree.m2765setMin9hnwElY(iM2773constructorimpl, iM2751getMin330cO7A);
                        int iM2750getMax330cO7A = intIntervalTree.m2750getMax330cO7A(iM2773constructorimpl);
                        if (i3 <= iM2750getMax330cO7A && iM2750getMax330cO7A < this.gapStart) {
                            iM2750getMax330cO7A = this.gapEnd;
                        }
                        intIntervalTree.m2764setMax9hnwElY(iM2773constructorimpl, iM2750getMax330cO7A);
                        if (intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl) <= intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl)) {
                            intIntervalTree.m2746addZlWbn38(tempArray, iM2773constructorimpl);
                        }
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) >= i3 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) <= i2) {
                            iM2754getRoot27flxzM = intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 2;
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2749getLeftbLpG9ms(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                }
            }
        }
        int[] iArr = tempArray.content;
        int i4 = tempArray._size;
        for (int i5 = 0; i5 < i4; i5++) {
            intIntervalTree.m2740removeNode9hnwElY(Node.m2773constructorimpl(iArr[i5]), false);
        }
        tempArray.clear();
        intIntervalTree.cleanDeletedNodesIfNeeded();
        this.gapStart -= i;
    }

    private final void deleteText(int i, int i2) {
        int i3 = this.gapStart;
        if (i < i3 && i2 <= i3) {
            moveGapLeft(i3 - i2);
            deleteBeforeGap(i2 - i);
        } else if (i >= i3 || i2 < i3) {
            moveGapRight(i - i3);
            deleteAfterGap(i2 - i);
        } else {
            deleteBeforeGap(i3 - i);
            deleteAfterGap(i2 - i3);
        }
    }

    private final void enlargeGapIfNeeded(int i) {
        if (!this.intervalTree.isEmpty() && getGapLength() < i) {
            int gapLength = (getGapLength() - i) + 1000;
            IntIntervalTree<T> intIntervalTree = this.intervalTree;
            int i2 = this.gapStart;
            MutableIntList tempArray = intIntervalTree.getTempArray();
            if (!Node.m2775equalsimpl0(intIntervalTree.m2754getRoot27flxzM(), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2754getRoot27flxzM()) >= i2 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2754getRoot27flxzM()) <= Integer.MAX_VALUE) {
                int iM2754getRoot27flxzM = intIntervalTree.m2754getRoot27flxzM();
                loop0: while (true) {
                    char c = 0;
                    while (true) {
                        if (Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2756getTerminator27flxzM())) {
                            break loop0;
                        }
                        if (c == 0) {
                            if (!Node.m2775equalsimpl0(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) >= i2) {
                                iM2754getRoot27flxzM = intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                                break;
                            }
                            c = 1;
                        } else if (c == 1) {
                            int iM2773constructorimpl = Node.m2773constructorimpl(iM2754getRoot27flxzM);
                            int iM2755getStart330cO7A = intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl);
                            if (iM2755getStart330cO7A >= this.gapStart) {
                                iM2755getStart330cO7A += gapLength;
                            }
                            intIntervalTree.m2769setStart9hnwElY(iM2773constructorimpl, iM2755getStart330cO7A);
                            int iM2748getEnd330cO7A = intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl);
                            if (iM2748getEnd330cO7A >= this.gapStart) {
                                iM2748getEnd330cO7A += gapLength;
                            }
                            intIntervalTree.m2762setEnd9hnwElY(iM2773constructorimpl, iM2748getEnd330cO7A);
                            int iM2751getMin330cO7A = intIntervalTree.m2751getMin330cO7A(iM2773constructorimpl);
                            if (iM2751getMin330cO7A >= this.gapStart) {
                                iM2751getMin330cO7A += gapLength;
                            }
                            intIntervalTree.m2765setMin9hnwElY(iM2773constructorimpl, iM2751getMin330cO7A);
                            int iM2750getMax330cO7A = intIntervalTree.m2750getMax330cO7A(iM2773constructorimpl);
                            if (iM2750getMax330cO7A >= this.gapStart) {
                                iM2750getMax330cO7A += gapLength;
                            }
                            intIntervalTree.m2764setMax9hnwElY(iM2773constructorimpl, iM2750getMax330cO7A);
                            if (intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl) <= intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl)) {
                                intIntervalTree.m2746addZlWbn38(tempArray, iM2773constructorimpl);
                            }
                            if (!Node.m2775equalsimpl0(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) >= i2 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) <= Integer.MAX_VALUE) {
                                iM2754getRoot27flxzM = intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                                break;
                            }
                            c = 2;
                        } else if (c == 2) {
                            if (!Node.m2775equalsimpl0(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM())) {
                                c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2749getLeftbLpG9ms(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                            }
                            iM2754getRoot27flxzM = intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                        }
                    }
                }
            }
            int[] iArr = tempArray.content;
            int i3 = tempArray._size;
            for (int i4 = 0; i4 < i3; i4++) {
                intIntervalTree.m2740removeNode9hnwElY(Node.m2773constructorimpl(iArr[i4]), false);
            }
            tempArray.clear();
            intIntervalTree.cleanDeletedNodesIfNeeded();
            this.gapEnd += gapLength;
        }
    }

    private final int gapBufferToOriginalIndex(int i) {
        return i < this.gapStart ? i : i - getGapLength();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 getAllStyles$lambda$0(List list, TextStyleBuffer textStyleBuffer, Object obj, int i, int i2) {
        list.add(new AnnotatedString.Range(obj, textStyleBuffer.gapBufferToOriginalIndex(i), textStyleBuffer.gapBufferToOriginalIndex(i2)));
        return j59.a;
    }

    private final int getGapLength() {
        return this.gapEnd - this.gapStart;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 getStyles$lambda$0(List list, TextStyleBuffer textStyleBuffer, Object obj, int i, int i2) {
        list.add(new AnnotatedString.Range(obj, textStyleBuffer.gapBufferToOriginalIndex(i), textStyleBuffer.gapBufferToOriginalIndex(i2)));
        return j59.a;
    }

    private final void moveGapLeft(int i) {
        if (i == 0) {
            return;
        }
        IntIntervalTree<T> intIntervalTree = this.intervalTree;
        int i2 = this.gapStart;
        int i3 = i2 - i;
        MutableIntList tempArray = intIntervalTree.getTempArray();
        if (!Node.m2775equalsimpl0(intIntervalTree.m2754getRoot27flxzM(), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2754getRoot27flxzM()) >= i3 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2754getRoot27flxzM()) <= i2) {
            int iM2754getRoot27flxzM = intIntervalTree.m2754getRoot27flxzM();
            loop0: while (true) {
                char c = 0;
                while (true) {
                    if (Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2756getTerminator27flxzM())) {
                        break loop0;
                    }
                    if (c == 0) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) >= i3) {
                            iM2754getRoot27flxzM = intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 1;
                    } else if (c == 1) {
                        int iM2773constructorimpl = Node.m2773constructorimpl(iM2754getRoot27flxzM);
                        int iM2755getStart330cO7A = intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl);
                        int i4 = this.gapStart;
                        int i5 = i4 - i;
                        if (iM2755getStart330cO7A < i4 && i5 <= iM2755getStart330cO7A) {
                            iM2755getStart330cO7A += getGapLength();
                        }
                        intIntervalTree.m2769setStart9hnwElY(iM2773constructorimpl, iM2755getStart330cO7A);
                        int iM2748getEnd330cO7A = intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl);
                        int i6 = this.gapStart;
                        int i7 = i6 - i;
                        if (iM2748getEnd330cO7A < i6 && i7 <= iM2748getEnd330cO7A) {
                            iM2748getEnd330cO7A += getGapLength();
                        }
                        intIntervalTree.m2762setEnd9hnwElY(iM2773constructorimpl, iM2748getEnd330cO7A);
                        int iM2751getMin330cO7A = intIntervalTree.m2751getMin330cO7A(iM2773constructorimpl);
                        int i8 = this.gapStart;
                        int i9 = i8 - i;
                        if (iM2751getMin330cO7A < i8 && i9 <= iM2751getMin330cO7A) {
                            iM2751getMin330cO7A += getGapLength();
                        }
                        intIntervalTree.m2765setMin9hnwElY(iM2773constructorimpl, iM2751getMin330cO7A);
                        int iM2750getMax330cO7A = intIntervalTree.m2750getMax330cO7A(iM2773constructorimpl);
                        int i10 = this.gapStart;
                        int i11 = i10 - i;
                        if (iM2750getMax330cO7A < i10 && i11 <= iM2750getMax330cO7A) {
                            iM2750getMax330cO7A += getGapLength();
                        }
                        intIntervalTree.m2764setMax9hnwElY(iM2773constructorimpl, iM2750getMax330cO7A);
                        if (intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl) <= intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl)) {
                            intIntervalTree.m2746addZlWbn38(tempArray, iM2773constructorimpl);
                        }
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) >= i3 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) <= i2) {
                            iM2754getRoot27flxzM = intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 2;
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2749getLeftbLpG9ms(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                }
            }
        }
        int[] iArr = tempArray.content;
        int i12 = tempArray._size;
        for (int i13 = 0; i13 < i12; i13++) {
            intIntervalTree.m2740removeNode9hnwElY(Node.m2773constructorimpl(iArr[i13]), false);
        }
        tempArray.clear();
        intIntervalTree.cleanDeletedNodesIfNeeded();
        this.gapStart -= i;
        this.gapEnd -= i;
    }

    private final void moveGapRight(int i) {
        if (i == 0) {
            return;
        }
        IntIntervalTree<T> intIntervalTree = this.intervalTree;
        int i2 = this.gapEnd;
        int i3 = i2 + i;
        MutableIntList tempArray = intIntervalTree.getTempArray();
        if (!Node.m2775equalsimpl0(intIntervalTree.m2754getRoot27flxzM(), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2754getRoot27flxzM()) >= i2 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2754getRoot27flxzM()) <= i3) {
            int iM2754getRoot27flxzM = intIntervalTree.m2754getRoot27flxzM();
            loop0: while (true) {
                char c = 0;
                while (true) {
                    if (Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2756getTerminator27flxzM())) {
                        break loop0;
                    }
                    if (c == 0) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) >= i2) {
                            iM2754getRoot27flxzM = intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 1;
                    } else if (c == 1) {
                        int iM2773constructorimpl = Node.m2773constructorimpl(iM2754getRoot27flxzM);
                        int iM2755getStart330cO7A = intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl);
                        int i4 = this.gapEnd;
                        if (iM2755getStart330cO7A < i4 + i && i4 <= iM2755getStart330cO7A) {
                            iM2755getStart330cO7A -= getGapLength();
                        }
                        intIntervalTree.m2769setStart9hnwElY(iM2773constructorimpl, iM2755getStart330cO7A);
                        int iM2748getEnd330cO7A = intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl);
                        int i5 = this.gapEnd;
                        if (iM2748getEnd330cO7A < i5 + i && i5 <= iM2748getEnd330cO7A) {
                            iM2748getEnd330cO7A -= getGapLength();
                        }
                        intIntervalTree.m2762setEnd9hnwElY(iM2773constructorimpl, iM2748getEnd330cO7A);
                        int iM2751getMin330cO7A = intIntervalTree.m2751getMin330cO7A(iM2773constructorimpl);
                        int i6 = this.gapEnd;
                        if (iM2751getMin330cO7A < i6 + i && i6 <= iM2751getMin330cO7A) {
                            iM2751getMin330cO7A -= getGapLength();
                        }
                        intIntervalTree.m2765setMin9hnwElY(iM2773constructorimpl, iM2751getMin330cO7A);
                        int iM2750getMax330cO7A = intIntervalTree.m2750getMax330cO7A(iM2773constructorimpl);
                        int i7 = this.gapEnd;
                        if (iM2750getMax330cO7A < i7 + i && i7 <= iM2750getMax330cO7A) {
                            iM2750getMax330cO7A -= getGapLength();
                        }
                        intIntervalTree.m2764setMax9hnwElY(iM2773constructorimpl, iM2750getMax330cO7A);
                        if (intIntervalTree.m2748getEnd330cO7A(iM2773constructorimpl) <= intIntervalTree.m2755getStart330cO7A(iM2773constructorimpl)) {
                            intIntervalTree.m2746addZlWbn38(tempArray, iM2773constructorimpl);
                        }
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) && intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) >= i2 && intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) <= i3) {
                            iM2754getRoot27flxzM = intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 2;
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2749getLeftbLpG9ms(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                }
            }
        }
        int[] iArr = tempArray.content;
        int i8 = tempArray._size;
        for (int i9 = 0; i9 < i8; i9++) {
            intIntervalTree.m2740removeNode9hnwElY(Node.m2773constructorimpl(iArr[i9]), false);
        }
        tempArray.clear();
        intIntervalTree.cleanDeletedNodesIfNeeded();
        this.gapStart += i;
        this.gapEnd += i;
    }

    private final int originalIndexToGapBuffer(int i) {
        return i < this.gapStart ? i : i + getGapLength();
    }

    public final boolean addStyle(T t, int i, int i2) {
        return this.intervalTree.addInterval(t, originalIndexToGapBuffer(i), originalIndexToGapBuffer(i2));
    }

    public final void clear() {
        this.intervalTree.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextStyleBuffer) {
            return aa4.e(this.intervalTree, ((TextStyleBuffer) obj).intervalTree);
        }
        return false;
    }

    public final List<AnnotatedString.Range<T>> getAllStyles() {
        final ArrayList arrayList = new ArrayList();
        this.intervalTree.forAllIntervals(new dm3() { // from class: vs8
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return TextStyleBuffer.getAllStyles$lambda$0(arrayList, this, obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
            }
        });
        return arrayList;
    }

    public final int getGapEnd() {
        return this.gapEnd;
    }

    public final int getGapStart() {
        return this.gapStart;
    }

    public final List<AnnotatedString.Range<T>> getStyles(int i, int i2) {
        if (i > i2) {
            return kx2.b;
        }
        int iOriginalIndexToGapBuffer = originalIndexToGapBuffer(i);
        int iOriginalIndexToGapBuffer2 = originalIndexToGapBuffer(i2);
        final ArrayList arrayList = new ArrayList();
        this.intervalTree.forEachIntervalInRange(iOriginalIndexToGapBuffer, iOriginalIndexToGapBuffer2, new dm3() { // from class: ws8
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return TextStyleBuffer.getStyles$lambda$0(arrayList, this, obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
            }
        });
        return arrayList;
    }

    public int hashCode() {
        return this.intervalTree.hashCode();
    }

    public final boolean removeStyle(T t, int i, int i2) {
        return this.intervalTree.removeInterval(t, originalIndexToGapBuffer(i), originalIndexToGapBuffer(i2));
    }

    public final boolean replaceText(int i, int i2, int i3) {
        if (this.intervalTree.isEmpty()) {
            return false;
        }
        enlargeGapIfNeeded(i3 - (i2 - i));
        deleteText(i, i2);
        this.gapStart += i3;
        return true;
    }

    public final void setGapEnd(int i) {
        this.gapEnd = i;
    }

    public final void setGapStart(int i) {
        this.gapStart = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextStyleBuffer() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ TextStyleBuffer(TextStyleBuffer textStyleBuffer, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : textStyleBuffer);
    }
}
