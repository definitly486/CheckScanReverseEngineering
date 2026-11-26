package androidx.compose.foundation.text.input.internal;

import androidx.collection.MutableIntList;
import androidx.collection.MutableLongList;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class IntIntervalTree<T> {
    private static final int COLOR_PARENT = 0;
    private static final int LEFT_RIGHT = 1;
    private static final int MIN_MAX = 3;
    private static final int NODE_CLEANUP_SIZE_THRESHOLD = 64;
    private static final int START_END = 2;
    private static final int STRIDE = 4;
    private MutableIntList _tempArray;
    private int deletedNodeCount;
    private final List<T> items;
    private final MutableLongList nodeInfo;
    private int root;
    private final int terminator;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public IntIntervalTree(IntIntervalTree<T> intIntervalTree) {
        if (intIntervalTree == null) {
            this.items = new ArrayList();
            this.nodeInfo = new MutableLongList(0, 1, null);
            int iM2732Nodelp996k = m2732Nodelp996k(Integer.MAX_VALUE, Integer.MIN_VALUE, null, 1);
            this.terminator = iM2732Nodelp996k;
            this.root = iM2732Nodelp996k;
            this.deletedNodeCount = 0;
            return;
        }
        this.items = qn1.v0(intIntervalTree.items);
        MutableLongList mutableLongList = new MutableLongList(intIntervalTree.nodeInfo._size);
        mutableLongList.addAll(mutableLongList._size, intIntervalTree.nodeInfo);
        this.nodeInfo = mutableLongList;
        this.terminator = intIntervalTree.terminator;
        this.root = intIntervalTree.root;
        this.deletedNodeCount = intIntervalTree.deletedNodeCount;
    }

    /* JADX INFO: renamed from: Node-l-p996k, reason: not valid java name */
    private final int m2732Nodelp996k(int i, int i2, T t, int i3) {
        MutableLongList mutableLongList = this.nodeInfo;
        int i4 = mutableLongList._size;
        mutableLongList.add(((long) i3) << 32);
        this.nodeInfo.add(0L);
        MutableLongList mutableLongList2 = this.nodeInfo;
        long j = (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32);
        mutableLongList2.add(j);
        this.nodeInfo.add(j);
        this.items.add(t);
        return Node.m2773constructorimpl(i4);
    }

    /* JADX INFO: renamed from: Node-l-p996k$default, reason: not valid java name */
    public static /* synthetic */ int m2733Nodelp996k$default(IntIntervalTree intIntervalTree, int i, int i2, Object obj, int i3, int i4, Object obj2) {
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        return intIntervalTree.m2732Nodelp996k(i, i2, obj, i3);
    }

    private final void cleanDeletedNodes() {
        int i;
        int i2;
        char c;
        char c2;
        if (this.deletedNodeCount == 0) {
            return;
        }
        MutableIntList tempArray = getTempArray();
        tempArray.ensureCapacity(getTotalNodeCount());
        int totalNodeCount = getTotalNodeCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 2;
            i2 = 4;
            c = ' ';
            if (i3 >= totalNodeCount) {
                break;
            }
            if (((int) (this.nodeInfo.get(i3 * 4) >> 32)) == 2) {
                i4++;
            }
            tempArray.add((i3 - i4) * 4);
            i3++;
        }
        this.root = Node.m2773constructorimpl(cleanDeletedNodes$map(tempArray, this.root));
        int i5 = 4;
        while (true) {
            MutableLongList mutableLongList = this.nodeInfo;
            int i6 = mutableLongList._size;
            if (i2 >= i6) {
                mutableLongList.removeRange(i5, i6);
                List<T> list = this.items;
                list.subList(list.size() - this.deletedNodeCount, this.items.size()).clear();
                this.deletedNodeCount = 0;
                tempArray.clear();
                return;
            }
            if (((int) (mutableLongList.get(i2) >> c)) == i) {
                i2 += 4;
            } else {
                MutableLongList mutableLongList2 = this.nodeInfo;
                if (i5 != i2) {
                    long j = mutableLongList2.get(i2);
                    this.nodeInfo.set(i5, (((long) ((int) (j >> c))) << c) | (((long) cleanDeletedNodes$map(tempArray, (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    long j2 = this.nodeInfo.get(i2 + 1);
                    int i7 = (int) (j2 >> c);
                    int i8 = (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                    long jCleanDeletedNodes$map = ((long) cleanDeletedNodes$map(tempArray, i7)) << c;
                    c2 = c;
                    this.nodeInfo.set(i5 + 1, (((long) cleanDeletedNodes$map(tempArray, i8)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | jCleanDeletedNodes$map);
                    MutableLongList mutableLongList3 = this.nodeInfo;
                    mutableLongList3.set(i5 + 2, mutableLongList3.get(i2 + 2));
                    MutableLongList mutableLongList4 = this.nodeInfo;
                    mutableLongList4.set(i5 + 3, mutableLongList4.get(i2 + 3));
                    List<T> list2 = this.items;
                    list2.set(i5 / 4, list2.get(i2 / 4));
                } else {
                    c2 = c;
                    long j3 = mutableLongList2.get(i2);
                    this.nodeInfo.set(i5, (((long) ((int) (j3 >> c2))) << c2) | (((long) cleanDeletedNodes$map(tempArray, (int) (j3 & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    long j4 = this.nodeInfo.get(i2 + 1);
                    int i9 = (int) (j4 >> c2);
                    this.nodeInfo.set(i5 + 1, (((long) cleanDeletedNodes$map(tempArray, (int) (j4 & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) cleanDeletedNodes$map(tempArray, i9)) << c2));
                }
                i2 += 4;
                i5 += 4;
                c = c2;
                i = 2;
            }
        }
    }

    private static final int cleanDeletedNodes$map(MutableIntList mutableIntList, int i) {
        return mutableIntList.get(i / 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cleanDeletedNodesIfNeeded() {
        if (getTotalNodeCount() <= 64 || this.deletedNodeCount < getTotalNodeCount() / 2) {
            return;
        }
        cleanDeletedNodes();
    }

    /* JADX INFO: renamed from: deleteNode-9hnwElY, reason: not valid java name */
    private final void m2735deleteNode9hnwElY(int i, boolean z) {
        m2761setColor9hnwElY(i, 2);
        this.deletedNodeCount++;
        if (z) {
            cleanDeletedNodesIfNeeded();
        }
    }

    /* JADX INFO: renamed from: findNode-cKdZwxc, reason: not valid java name */
    private final int m2736findNodecKdZwxc(T t, int i, int i2) {
        if (Node.m2775equalsimpl0(this.root, this.terminator) || m2750getMax330cO7A(this.root) < i2 || m2751getMin330cO7A(this.root) > i) {
            return this.terminator;
        }
        MutableIntList tempArray = getTempArray();
        m2746addZlWbn38(tempArray, this.root);
        while (tempArray._size != 0) {
            int iM2760pop2SV_EgM = m2760pop2SV_EgM(tempArray);
            if (m2755getStart330cO7A(iM2760pop2SV_EgM) == i && m2748getEnd330cO7A(iM2760pop2SV_EgM) == i2 && aa4.e(m2737getItem330cO7A(iM2760pop2SV_EgM), t)) {
                tempArray.clear();
                return iM2760pop2SV_EgM;
            }
            if (m2755getStart330cO7A(iM2760pop2SV_EgM) >= i) {
                int iM2749getLeftbLpG9ms = m2749getLeftbLpG9ms(iM2760pop2SV_EgM);
                if (!Node.m2775equalsimpl0(iM2749getLeftbLpG9ms, this.terminator) && m2750getMax330cO7A(iM2749getLeftbLpG9ms) >= i2) {
                    m2746addZlWbn38(tempArray, iM2749getLeftbLpG9ms);
                }
            }
            if (m2755getStart330cO7A(iM2760pop2SV_EgM) <= i) {
                int iM2753getRightbLpG9ms = m2753getRightbLpG9ms(iM2760pop2SV_EgM);
                if (!Node.m2775equalsimpl0(iM2753getRightbLpG9ms, this.terminator) && m2751getMin330cO7A(iM2753getRightbLpG9ms) <= i && m2750getMax330cO7A(iM2753getRightbLpG9ms) >= i2) {
                    m2746addZlWbn38(tempArray, iM2753getRightbLpG9ms);
                }
            }
        }
        return this.terminator;
    }

    private final void forEachNodeInRange(int i, int i2, nl3<? super Integer, j59> nl3Var) {
        if (Node.m2775equalsimpl0(m2754getRoot27flxzM(), m2756getTerminator27flxzM()) || m2750getMax330cO7A(m2754getRoot27flxzM()) < i || m2751getMin330cO7A(m2754getRoot27flxzM()) > i2) {
            return;
        }
        int iM2754getRoot27flxzM = m2754getRoot27flxzM();
        while (true) {
            char c = 0;
            while (!Node.m2775equalsimpl0(iM2754getRoot27flxzM, m2756getTerminator27flxzM())) {
                if (c != 0) {
                    if (c == 1) {
                        int iM2773constructorimpl = Node.m2773constructorimpl(iM2754getRoot27flxzM);
                        if (m2759overlapsXzpGiIY(iM2773constructorimpl, i, i2)) {
                            nl3Var.invoke(Integer.valueOf(iM2773constructorimpl));
                        }
                        if (Node.m2775equalsimpl0(m2753getRightbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM()) || m2750getMax330cO7A(m2753getRightbLpG9ms(iM2754getRoot27flxzM)) < i || m2751getMin330cO7A(m2753getRightbLpG9ms(iM2754getRoot27flxzM)) > i2) {
                            c = 2;
                        } else {
                            iM2754getRoot27flxzM = m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                        }
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(m2752getParentbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, m2749getLeftbLpG9ms(m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                } else if (Node.m2775equalsimpl0(m2749getLeftbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM()) || m2750getMax330cO7A(m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) < i) {
                    c = 1;
                } else {
                    iM2754getRoot27flxzM = m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                }
            }
            return;
        }
    }

    public static /* synthetic */ void forEachNodeInRange$default(IntIntervalTree intIntervalTree, int i, int i2, nl3 nl3Var, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = i;
        }
        if (Node.m2775equalsimpl0(intIntervalTree.m2754getRoot27flxzM(), intIntervalTree.m2756getTerminator27flxzM()) || intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2754getRoot27flxzM()) < i || intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2754getRoot27flxzM()) > i2) {
            return;
        }
        int iM2754getRoot27flxzM = intIntervalTree.m2754getRoot27flxzM();
        while (true) {
            char c = 0;
            while (!Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2756getTerminator27flxzM())) {
                if (c != 0) {
                    if (c == 1) {
                        int iM2773constructorimpl = Node.m2773constructorimpl(iM2754getRoot27flxzM);
                        if (intIntervalTree.m2759overlapsXzpGiIY(iM2773constructorimpl, i, i2)) {
                            nl3Var.invoke(Integer.valueOf(iM2773constructorimpl));
                        }
                        if (Node.m2775equalsimpl0(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) || intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) < i || intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) > i2) {
                            c = 2;
                        } else {
                            iM2754getRoot27flxzM = intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                        }
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2749getLeftbLpG9ms(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                } else if (Node.m2775equalsimpl0(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) || intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) < i) {
                    c = 1;
                } else {
                    iM2754getRoot27flxzM = intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                }
            }
            return;
        }
    }

    private final void forEachNodeMinMaxInRange(int i, int i2, nl3<? super Integer, j59> nl3Var) {
        if (Node.m2775equalsimpl0(m2754getRoot27flxzM(), m2756getTerminator27flxzM()) || m2750getMax330cO7A(m2754getRoot27flxzM()) < i || m2751getMin330cO7A(m2754getRoot27flxzM()) > i2) {
            return;
        }
        int iM2754getRoot27flxzM = m2754getRoot27flxzM();
        while (true) {
            char c = 0;
            while (!Node.m2775equalsimpl0(iM2754getRoot27flxzM, m2756getTerminator27flxzM())) {
                if (c != 0) {
                    if (c == 1) {
                        nl3Var.invoke(Integer.valueOf(iM2754getRoot27flxzM));
                        if (Node.m2775equalsimpl0(m2753getRightbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM()) || m2750getMax330cO7A(m2753getRightbLpG9ms(iM2754getRoot27flxzM)) < i || m2751getMin330cO7A(m2753getRightbLpG9ms(iM2754getRoot27flxzM)) > i2) {
                            c = 2;
                        } else {
                            iM2754getRoot27flxzM = m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                        }
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(m2752getParentbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, m2749getLeftbLpG9ms(m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                } else if (Node.m2775equalsimpl0(m2749getLeftbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM()) || m2750getMax330cO7A(m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) < i) {
                    c = 1;
                } else {
                    iM2754getRoot27flxzM = m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                }
            }
            return;
        }
    }

    public static /* synthetic */ void forEachNodeMinMaxInRange$default(IntIntervalTree intIntervalTree, int i, int i2, nl3 nl3Var, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = i;
        }
        if (Node.m2775equalsimpl0(intIntervalTree.m2754getRoot27flxzM(), intIntervalTree.m2756getTerminator27flxzM()) || intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2754getRoot27flxzM()) < i || intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2754getRoot27flxzM()) > i2) {
            return;
        }
        int iM2754getRoot27flxzM = intIntervalTree.m2754getRoot27flxzM();
        while (true) {
            char c = 0;
            while (!Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2756getTerminator27flxzM())) {
                if (c != 0) {
                    if (c == 1) {
                        nl3Var.invoke(Integer.valueOf(iM2754getRoot27flxzM));
                        if (Node.m2775equalsimpl0(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) || intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) < i || intIntervalTree.m2751getMin330cO7A(intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM)) > i2) {
                            c = 2;
                        } else {
                            iM2754getRoot27flxzM = intIntervalTree.m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                        }
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, intIntervalTree.m2749getLeftbLpG9ms(intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = intIntervalTree.m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                } else if (Node.m2775equalsimpl0(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM), intIntervalTree.m2756getTerminator27flxzM()) || intIntervalTree.m2750getMax330cO7A(intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) < i) {
                    c = 1;
                } else {
                    iM2754getRoot27flxzM = intIntervalTree.m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                }
            }
            return;
        }
    }

    /* JADX INFO: renamed from: getItem-330cO7A, reason: not valid java name */
    private final T m2737getItem330cO7A(int i) {
        return this.items.get(i / 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MutableIntList getTempArray() {
        MutableIntList mutableIntList = this._tempArray;
        if (mutableIntList != null) {
            return mutableIntList;
        }
        MutableIntList mutableIntList2 = new MutableIntList(0, 1, null);
        this._tempArray = mutableIntList2;
        return mutableIntList2;
    }

    private final int getTotalNodeCount() {
        return this.nodeInfo._size / 4;
    }

    /* JADX INFO: renamed from: rebalanceAfterDeletion-cfX_BQo, reason: not valid java name */
    private final void m2738rebalanceAfterDeletioncfX_BQo(int i, int i2) {
        int iM2752getParentbLpG9ms;
        while (!Node.m2775equalsimpl0(i, this.root) && m2747getColor330cO7A(i) == 1) {
            if (Node.m2775equalsimpl0(i, m2749getLeftbLpG9ms(i2))) {
                int iM2753getRightbLpG9ms = m2753getRightbLpG9ms(i2);
                if (m2747getColor330cO7A(iM2753getRightbLpG9ms) == 0) {
                    m2761setColor9hnwElY(iM2753getRightbLpG9ms, 1);
                    m2761setColor9hnwElY(i2, 0);
                    m2742rotateLeft330cO7A(i2);
                    iM2753getRightbLpG9ms = m2753getRightbLpG9ms(i2);
                }
                if (m2747getColor330cO7A(m2749getLeftbLpG9ms(iM2753getRightbLpG9ms)) == 1 && m2747getColor330cO7A(m2753getRightbLpG9ms(iM2753getRightbLpG9ms)) == 1) {
                    m2761setColor9hnwElY(iM2753getRightbLpG9ms, 0);
                    iM2752getParentbLpG9ms = m2752getParentbLpG9ms(i2);
                    int i3 = i2;
                    i2 = iM2752getParentbLpG9ms;
                    i = i3;
                } else {
                    if (m2747getColor330cO7A(m2753getRightbLpG9ms(iM2753getRightbLpG9ms)) == 1) {
                        m2761setColor9hnwElY(m2749getLeftbLpG9ms(iM2753getRightbLpG9ms), 1);
                        m2761setColor9hnwElY(iM2753getRightbLpG9ms, 0);
                        m2743rotateRight330cO7A(iM2753getRightbLpG9ms);
                        iM2753getRightbLpG9ms = m2753getRightbLpG9ms(i2);
                    }
                    m2761setColor9hnwElY(iM2753getRightbLpG9ms, m2747getColor330cO7A(i2));
                    m2761setColor9hnwElY(i2, 1);
                    m2761setColor9hnwElY(m2753getRightbLpG9ms(iM2753getRightbLpG9ms), 1);
                    m2742rotateLeft330cO7A(i2);
                    i = this.root;
                }
            } else {
                int iM2749getLeftbLpG9ms = m2749getLeftbLpG9ms(i2);
                if (m2747getColor330cO7A(iM2749getLeftbLpG9ms) == 0) {
                    m2761setColor9hnwElY(iM2749getLeftbLpG9ms, 1);
                    m2761setColor9hnwElY(i2, 0);
                    m2743rotateRight330cO7A(i2);
                    iM2749getLeftbLpG9ms = m2749getLeftbLpG9ms(i2);
                }
                if (m2747getColor330cO7A(m2753getRightbLpG9ms(iM2749getLeftbLpG9ms)) == 1 && m2747getColor330cO7A(m2749getLeftbLpG9ms(iM2749getLeftbLpG9ms)) == 1) {
                    m2761setColor9hnwElY(iM2749getLeftbLpG9ms, 0);
                    iM2752getParentbLpG9ms = m2752getParentbLpG9ms(i2);
                    int i4 = i2;
                    i2 = iM2752getParentbLpG9ms;
                    i = i4;
                } else {
                    if (m2747getColor330cO7A(m2749getLeftbLpG9ms(iM2749getLeftbLpG9ms)) == 1) {
                        m2761setColor9hnwElY(m2753getRightbLpG9ms(iM2749getLeftbLpG9ms), 1);
                        m2761setColor9hnwElY(iM2749getLeftbLpG9ms, 0);
                        m2742rotateLeft330cO7A(iM2749getLeftbLpG9ms);
                        iM2749getLeftbLpG9ms = m2749getLeftbLpG9ms(i2);
                    }
                    m2761setColor9hnwElY(iM2749getLeftbLpG9ms, m2747getColor330cO7A(i2));
                    m2761setColor9hnwElY(i2, 1);
                    m2761setColor9hnwElY(m2749getLeftbLpG9ms(iM2749getLeftbLpG9ms), 1);
                    m2743rotateRight330cO7A(i2);
                    i = this.root;
                }
            }
        }
        m2761setColor9hnwElY(i, 1);
    }

    /* JADX INFO: renamed from: rebalanceAfterInsertion-330cO7A, reason: not valid java name */
    private final void m2739rebalanceAfterInsertion330cO7A(int i) {
        while (!Node.m2775equalsimpl0(i, this.root) && m2747getColor330cO7A(m2752getParentbLpG9ms(i)) == 0) {
            int iM2752getParentbLpG9ms = m2752getParentbLpG9ms(m2752getParentbLpG9ms(i));
            if (Node.m2775equalsimpl0(m2752getParentbLpG9ms(i), m2749getLeftbLpG9ms(iM2752getParentbLpG9ms))) {
                int iM2753getRightbLpG9ms = m2753getRightbLpG9ms(iM2752getParentbLpG9ms);
                if (m2747getColor330cO7A(iM2753getRightbLpG9ms) == 0) {
                    m2761setColor9hnwElY(iM2753getRightbLpG9ms, 1);
                    m2761setColor9hnwElY(m2752getParentbLpG9ms(i), 1);
                    m2761setColor9hnwElY(iM2752getParentbLpG9ms, 0);
                    i = iM2752getParentbLpG9ms;
                } else {
                    if (Node.m2775equalsimpl0(i, m2753getRightbLpG9ms(m2752getParentbLpG9ms(i)))) {
                        i = m2752getParentbLpG9ms(i);
                        m2742rotateLeft330cO7A(i);
                    }
                    m2761setColor9hnwElY(m2752getParentbLpG9ms(i), 1);
                    m2761setColor9hnwElY(iM2752getParentbLpG9ms, 0);
                    m2743rotateRight330cO7A(iM2752getParentbLpG9ms);
                }
            } else {
                int iM2749getLeftbLpG9ms = m2749getLeftbLpG9ms(iM2752getParentbLpG9ms);
                if (m2747getColor330cO7A(iM2749getLeftbLpG9ms) == 0) {
                    m2761setColor9hnwElY(iM2749getLeftbLpG9ms, 1);
                    m2761setColor9hnwElY(m2752getParentbLpG9ms(i), 1);
                    m2761setColor9hnwElY(iM2752getParentbLpG9ms, 0);
                    i = iM2752getParentbLpG9ms;
                } else {
                    if (Node.m2775equalsimpl0(i, m2749getLeftbLpG9ms(m2752getParentbLpG9ms(i)))) {
                        i = m2752getParentbLpG9ms(i);
                        m2743rotateRight330cO7A(i);
                    }
                    m2761setColor9hnwElY(m2752getParentbLpG9ms(i), 1);
                    m2761setColor9hnwElY(iM2752getParentbLpG9ms, 0);
                    m2742rotateLeft330cO7A(iM2752getParentbLpG9ms);
                }
            }
        }
        m2761setColor9hnwElY(this.root, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: removeNode-9hnwElY, reason: not valid java name */
    public final void m2740removeNode9hnwElY(int i, boolean z) {
        int iM2752getParentbLpG9ms;
        int iM2749getLeftbLpG9ms;
        int iM2752getParentbLpG9ms2;
        int iM2747getColor330cO7A = m2747getColor330cO7A(i);
        if (Node.m2775equalsimpl0(m2749getLeftbLpG9ms(i), this.terminator)) {
            iM2749getLeftbLpG9ms = m2753getRightbLpG9ms(i);
            iM2752getParentbLpG9ms2 = m2752getParentbLpG9ms(i);
            m2744transplantcfX_BQo(i, m2753getRightbLpG9ms(i));
        } else if (Node.m2775equalsimpl0(m2753getRightbLpG9ms(i), this.terminator)) {
            iM2749getLeftbLpG9ms = m2749getLeftbLpG9ms(i);
            iM2752getParentbLpG9ms2 = m2752getParentbLpG9ms(i);
            m2744transplantcfX_BQo(i, m2749getLeftbLpG9ms(i));
        } else {
            int iM2757lowestNodebLpG9ms = m2757lowestNodebLpG9ms(m2753getRightbLpG9ms(i));
            int iM2747getColor330cO7A2 = m2747getColor330cO7A(iM2757lowestNodebLpG9ms);
            int iM2753getRightbLpG9ms = m2753getRightbLpG9ms(iM2757lowestNodebLpG9ms);
            if (Node.m2775equalsimpl0(m2752getParentbLpG9ms(iM2757lowestNodebLpG9ms), i)) {
                iM2752getParentbLpG9ms = iM2757lowestNodebLpG9ms;
            } else {
                iM2752getParentbLpG9ms = m2752getParentbLpG9ms(iM2757lowestNodebLpG9ms);
                m2744transplantcfX_BQo(iM2757lowestNodebLpG9ms, m2753getRightbLpG9ms(iM2757lowestNodebLpG9ms));
                m2767setRightcfX_BQo(iM2757lowestNodebLpG9ms, m2753getRightbLpG9ms(i));
                m2766setParentcfX_BQo(m2753getRightbLpG9ms(iM2757lowestNodebLpG9ms), iM2757lowestNodebLpG9ms);
            }
            m2744transplantcfX_BQo(i, iM2757lowestNodebLpG9ms);
            m2763setLeftcfX_BQo(iM2757lowestNodebLpG9ms, m2749getLeftbLpG9ms(i));
            m2766setParentcfX_BQo(m2749getLeftbLpG9ms(iM2757lowestNodebLpG9ms), iM2757lowestNodebLpG9ms);
            m2761setColor9hnwElY(iM2757lowestNodebLpG9ms, m2747getColor330cO7A(i));
            m2765setMin9hnwElY(iM2757lowestNodebLpG9ms, m2751getMin330cO7A(i));
            m2764setMax9hnwElY(iM2757lowestNodebLpG9ms, m2750getMax330cO7A(i));
            iM2747getColor330cO7A = iM2747getColor330cO7A2;
            iM2749getLeftbLpG9ms = iM2753getRightbLpG9ms;
            iM2752getParentbLpG9ms2 = iM2752getParentbLpG9ms;
        }
        m2745updateNodeMinMax330cO7A(iM2752getParentbLpG9ms2);
        if (iM2747getColor330cO7A == 1) {
            m2738rebalanceAfterDeletioncfX_BQo(iM2749getLeftbLpG9ms, iM2752getParentbLpG9ms2);
        }
        m2735deleteNode9hnwElY(i, z);
    }

    /* JADX INFO: renamed from: removeNode-9hnwElY$default, reason: not valid java name */
    public static /* synthetic */ void m2741removeNode9hnwElY$default(IntIntervalTree intIntervalTree, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        intIntervalTree.m2740removeNode9hnwElY(i, z);
    }

    /* JADX INFO: renamed from: rotateLeft-330cO7A, reason: not valid java name */
    private final void m2742rotateLeft330cO7A(int i) {
        int iM2753getRightbLpG9ms = m2753getRightbLpG9ms(i);
        m2767setRightcfX_BQo(i, m2749getLeftbLpG9ms(iM2753getRightbLpG9ms));
        if (!Node.m2775equalsimpl0(m2749getLeftbLpG9ms(iM2753getRightbLpG9ms), this.terminator)) {
            m2766setParentcfX_BQo(m2749getLeftbLpG9ms(iM2753getRightbLpG9ms), i);
        }
        m2766setParentcfX_BQo(iM2753getRightbLpG9ms, m2752getParentbLpG9ms(i));
        if (Node.m2775equalsimpl0(m2752getParentbLpG9ms(i), this.terminator)) {
            this.root = iM2753getRightbLpG9ms;
        } else if (Node.m2775equalsimpl0(m2749getLeftbLpG9ms(m2752getParentbLpG9ms(i)), i)) {
            m2763setLeftcfX_BQo(m2752getParentbLpG9ms(i), iM2753getRightbLpG9ms);
        } else {
            m2767setRightcfX_BQo(m2752getParentbLpG9ms(i), iM2753getRightbLpG9ms);
        }
        m2763setLeftcfX_BQo(iM2753getRightbLpG9ms, i);
        m2766setParentcfX_BQo(i, iM2753getRightbLpG9ms);
        m2745updateNodeMinMax330cO7A(i);
    }

    /* JADX INFO: renamed from: rotateRight-330cO7A, reason: not valid java name */
    private final void m2743rotateRight330cO7A(int i) {
        int iM2749getLeftbLpG9ms = m2749getLeftbLpG9ms(i);
        m2763setLeftcfX_BQo(i, m2753getRightbLpG9ms(iM2749getLeftbLpG9ms));
        if (!Node.m2775equalsimpl0(m2753getRightbLpG9ms(iM2749getLeftbLpG9ms), this.terminator)) {
            m2766setParentcfX_BQo(m2753getRightbLpG9ms(iM2749getLeftbLpG9ms), i);
        }
        m2766setParentcfX_BQo(iM2749getLeftbLpG9ms, m2752getParentbLpG9ms(i));
        if (Node.m2775equalsimpl0(m2752getParentbLpG9ms(i), this.terminator)) {
            this.root = iM2749getLeftbLpG9ms;
        } else if (Node.m2775equalsimpl0(m2753getRightbLpG9ms(m2752getParentbLpG9ms(i)), i)) {
            m2767setRightcfX_BQo(m2752getParentbLpG9ms(i), iM2749getLeftbLpG9ms);
        } else {
            m2763setLeftcfX_BQo(m2752getParentbLpG9ms(i), iM2749getLeftbLpG9ms);
        }
        m2767setRightcfX_BQo(iM2749getLeftbLpG9ms, i);
        m2766setParentcfX_BQo(i, iM2749getLeftbLpG9ms);
        m2745updateNodeMinMax330cO7A(i);
    }

    /* JADX INFO: renamed from: transplant-cfX_BQo, reason: not valid java name */
    private final void m2744transplantcfX_BQo(int i, int i2) {
        if (Node.m2775equalsimpl0(i, i2)) {
            return;
        }
        if (Node.m2775equalsimpl0(m2752getParentbLpG9ms(i), this.terminator)) {
            this.root = i2;
        } else if (Node.m2775equalsimpl0(i, m2749getLeftbLpG9ms(m2752getParentbLpG9ms(i)))) {
            m2763setLeftcfX_BQo(m2752getParentbLpG9ms(i), i2);
        } else {
            m2767setRightcfX_BQo(m2752getParentbLpG9ms(i), i2);
        }
        if (Node.m2775equalsimpl0(i2, this.terminator)) {
            return;
        }
        m2766setParentcfX_BQo(i2, m2752getParentbLpG9ms(i));
    }

    /* JADX INFO: renamed from: updateNodeMinMax-330cO7A, reason: not valid java name */
    private final void m2745updateNodeMinMax330cO7A(int i) {
        while (!Node.m2775equalsimpl0(i, this.terminator)) {
            m2765setMin9hnwElY(i, Math.min(m2755getStart330cO7A(i), Math.min(m2751getMin330cO7A(m2749getLeftbLpG9ms(i)), m2751getMin330cO7A(m2753getRightbLpG9ms(i)))));
            m2764setMax9hnwElY(i, Math.max(m2748getEnd330cO7A(i), Math.max(m2750getMax330cO7A(m2749getLeftbLpG9ms(i)), m2750getMax330cO7A(m2753getRightbLpG9ms(i)))));
            i = m2752getParentbLpG9ms(i);
        }
    }

    /* JADX INFO: renamed from: add-ZlWbn38, reason: not valid java name */
    public final void m2746addZlWbn38(MutableIntList mutableIntList, int i) {
        mutableIntList.add(i);
    }

    public final boolean addInterval(T t, int i, int i2) {
        if (i >= i2 || !Node.m2775equalsimpl0(m2736findNodecKdZwxc(t, i, i2), this.terminator)) {
            return false;
        }
        int iM2732Nodelp996k = m2732Nodelp996k(i, i2, t, 0);
        int iM2749getLeftbLpG9ms = this.root;
        int i3 = this.terminator;
        while (!Node.m2775equalsimpl0(iM2749getLeftbLpG9ms, this.terminator)) {
            i3 = iM2749getLeftbLpG9ms;
            iM2749getLeftbLpG9ms = m2755getStart330cO7A(iM2732Nodelp996k) <= m2755getStart330cO7A(iM2749getLeftbLpG9ms) ? m2749getLeftbLpG9ms(iM2749getLeftbLpG9ms) : m2753getRightbLpG9ms(iM2749getLeftbLpG9ms);
        }
        m2766setParentcfX_BQo(iM2732Nodelp996k, i3);
        if (Node.m2775equalsimpl0(i3, this.terminator)) {
            this.root = iM2732Nodelp996k;
        } else if (m2755getStart330cO7A(iM2732Nodelp996k) <= m2755getStart330cO7A(i3)) {
            m2763setLeftcfX_BQo(i3, iM2732Nodelp996k);
        } else {
            m2767setRightcfX_BQo(i3, iM2732Nodelp996k);
        }
        m2745updateNodeMinMax330cO7A(i3);
        m2739rebalanceAfterInsertion330cO7A(iM2732Nodelp996k);
        return true;
    }

    public final void clear() {
        this.root = this.terminator;
        MutableLongList mutableLongList = this.nodeInfo;
        mutableLongList.removeRange(4, mutableLongList._size);
        List<T> list = this.items;
        list.subList(1, list.size()).clear();
        this.deletedNodeCount = 0;
    }

    public final IntIntervalTree<T> copy() {
        cleanDeletedNodes();
        return new IntIntervalTree<>(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntIntervalTree)) {
            return false;
        }
        IntIntervalTree intIntervalTree = (IntIntervalTree) obj;
        if (this.nodeInfo.get(this.root + 3) != intIntervalTree.nodeInfo.get(intIntervalTree.root + 3) || getTotalNodeCount() - this.deletedNodeCount != intIntervalTree.getTotalNodeCount() - intIntervalTree.deletedNodeCount) {
            return false;
        }
        int i = 4;
        int i2 = 4;
        while (true) {
            MutableLongList mutableLongList = this.nodeInfo;
            if (i >= mutableLongList._size || i2 >= intIntervalTree.nodeInfo._size) {
                break;
            }
            if (((int) (mutableLongList.get(i) >> 32)) == 2) {
                i += 4;
            } else {
                if (((int) (intIntervalTree.nodeInfo.get(i2) >> 32)) != 2) {
                    if (this.nodeInfo.get(i + 2) != intIntervalTree.nodeInfo.get(i2 + 2) || !aa4.e(this.items.get(i / 4), intIntervalTree.items.get(i2 / 4))) {
                        return false;
                    }
                    i += 4;
                }
                i2 += 4;
            }
        }
        return true;
    }

    public final void forAllIntervals(dm3<? super T, ? super Integer, ? super Integer, j59> dm3Var) {
        if (Node.m2775equalsimpl0(this.root, this.terminator)) {
            return;
        }
        for (int i = 4; i < this.nodeInfo._size; i += 4) {
            int iM2773constructorimpl = Node.m2773constructorimpl(i);
            if (m2747getColor330cO7A(iM2773constructorimpl) != 2) {
                int iM2755getStart330cO7A = m2755getStart330cO7A(iM2773constructorimpl);
                int iM2748getEnd330cO7A = m2748getEnd330cO7A(iM2773constructorimpl);
                T tM2737getItem330cO7A = m2737getItem330cO7A(iM2773constructorimpl);
                if (tM2737getItem330cO7A != null) {
                    dm3Var.invoke(tM2737getItem330cO7A, Integer.valueOf(iM2755getStart330cO7A), Integer.valueOf(iM2748getEnd330cO7A));
                }
            }
        }
    }

    public final void forEachIntervalInRange(int i, int i2, dm3<? super T, ? super Integer, ? super Integer, j59> dm3Var) {
        MutableIntList tempArray = getTempArray();
        if (!Node.m2775equalsimpl0(m2754getRoot27flxzM(), m2756getTerminator27flxzM()) && m2750getMax330cO7A(m2754getRoot27flxzM()) >= i && m2751getMin330cO7A(m2754getRoot27flxzM()) <= i2) {
            int iM2754getRoot27flxzM = m2754getRoot27flxzM();
            loop0: while (true) {
                char c = 0;
                while (true) {
                    if (Node.m2775equalsimpl0(iM2754getRoot27flxzM, m2756getTerminator27flxzM())) {
                        break loop0;
                    }
                    if (c == 0) {
                        if (!Node.m2775equalsimpl0(m2749getLeftbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM()) && m2750getMax330cO7A(m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) >= i) {
                            iM2754getRoot27flxzM = m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 1;
                    } else if (c == 1) {
                        int iM2773constructorimpl = Node.m2773constructorimpl(iM2754getRoot27flxzM);
                        if (m2759overlapsXzpGiIY(iM2773constructorimpl, i, i2)) {
                            tempArray.add(iM2773constructorimpl);
                        }
                        if (!Node.m2775equalsimpl0(m2753getRightbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM()) && m2750getMax330cO7A(m2753getRightbLpG9ms(iM2754getRoot27flxzM)) >= i && m2751getMin330cO7A(m2753getRightbLpG9ms(iM2754getRoot27flxzM)) <= i2) {
                            iM2754getRoot27flxzM = m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 2;
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(m2752getParentbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, m2749getLeftbLpG9ms(m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                }
            }
        }
        tempArray.sort();
        int[] iArr = tempArray.content;
        int i3 = tempArray._size;
        for (int i4 = 0; i4 < i3; i4++) {
            int iM2773constructorimpl2 = Node.m2773constructorimpl(iArr[i4]);
            T tM2737getItem330cO7A = m2737getItem330cO7A(iM2773constructorimpl2);
            if (tM2737getItem330cO7A != null) {
                dm3Var.invoke(tM2737getItem330cO7A, Integer.valueOf(m2755getStart330cO7A(iM2773constructorimpl2)), Integer.valueOf(m2748getEnd330cO7A(iM2773constructorimpl2)));
            }
        }
        tempArray.clear();
    }

    /* JADX INFO: renamed from: getColor-330cO7A, reason: not valid java name */
    public final int m2747getColor330cO7A(int i) {
        return (int) (this.nodeInfo.get(i) >> 32);
    }

    /* JADX INFO: renamed from: getEnd-330cO7A, reason: not valid java name */
    public final int m2748getEnd330cO7A(int i) {
        return (int) (this.nodeInfo.get(i + 2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: getLeft-bLpG9ms, reason: not valid java name */
    public final int m2749getLeftbLpG9ms(int i) {
        return Node.m2773constructorimpl((int) (this.nodeInfo.get(i + 1) >> 32));
    }

    /* JADX INFO: renamed from: getMax-330cO7A, reason: not valid java name */
    public final int m2750getMax330cO7A(int i) {
        return (int) (this.nodeInfo.get(i + 3) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: getMin-330cO7A, reason: not valid java name */
    public final int m2751getMin330cO7A(int i) {
        return (int) (this.nodeInfo.get(i + 3) >> 32);
    }

    /* JADX INFO: renamed from: getParent-bLpG9ms, reason: not valid java name */
    public final int m2752getParentbLpG9ms(int i) {
        return Node.m2773constructorimpl((int) (this.nodeInfo.get(i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getRight-bLpG9ms, reason: not valid java name */
    public final int m2753getRightbLpG9ms(int i) {
        return Node.m2773constructorimpl((int) (this.nodeInfo.get(i + 1) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getRoot-27flxzM, reason: not valid java name */
    public final int m2754getRoot27flxzM() {
        return this.root;
    }

    /* JADX INFO: renamed from: getStart-330cO7A, reason: not valid java name */
    public final int m2755getStart330cO7A(int i) {
        return (int) (this.nodeInfo.get(i + 2) >> 32);
    }

    /* JADX INFO: renamed from: getTerminator-27flxzM, reason: not valid java name */
    public final int m2756getTerminator27flxzM() {
        return this.terminator;
    }

    public int hashCode() {
        int iHashCode = 0;
        for (int i = 4; i < this.nodeInfo._size; i += 4) {
            int iM2773constructorimpl = Node.m2773constructorimpl(i);
            if (m2747getColor330cO7A(iM2773constructorimpl) != 2) {
                int iM2748getEnd330cO7A = (m2748getEnd330cO7A(iM2773constructorimpl) + ((m2755getStart330cO7A(iM2773constructorimpl) + (iHashCode * 31)) * 31)) * 31;
                T tM2737getItem330cO7A = m2737getItem330cO7A(iM2773constructorimpl);
                iHashCode = iM2748getEnd330cO7A + (tM2737getItem330cO7A != null ? tM2737getItem330cO7A.hashCode() : 0);
            }
        }
        return iHashCode;
    }

    public final boolean isEmpty() {
        return Node.m2775equalsimpl0(this.root, this.terminator);
    }

    /* JADX INFO: renamed from: lowestNode-bLpG9ms, reason: not valid java name */
    public final int m2757lowestNodebLpG9ms(int i) {
        while (!Node.m2775equalsimpl0(m2749getLeftbLpG9ms(i), this.terminator)) {
            i = m2749getLeftbLpG9ms(i);
        }
        return i;
    }

    public final void mapIntervals(int i, int i2, nl3<? super Integer, Integer> nl3Var) {
        MutableIntList tempArray = getTempArray();
        if (!Node.m2775equalsimpl0(m2754getRoot27flxzM(), m2756getTerminator27flxzM()) && m2750getMax330cO7A(m2754getRoot27flxzM()) >= i && m2751getMin330cO7A(m2754getRoot27flxzM()) <= i2) {
            int iM2754getRoot27flxzM = m2754getRoot27flxzM();
            loop0: while (true) {
                char c = 0;
                while (true) {
                    if (Node.m2775equalsimpl0(iM2754getRoot27flxzM, m2756getTerminator27flxzM())) {
                        break loop0;
                    }
                    if (c == 0) {
                        if (!Node.m2775equalsimpl0(m2749getLeftbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM()) && m2750getMax330cO7A(m2749getLeftbLpG9ms(iM2754getRoot27flxzM)) >= i) {
                            iM2754getRoot27flxzM = m2749getLeftbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 1;
                    } else if (c == 1) {
                        int iM2773constructorimpl = Node.m2773constructorimpl(iM2754getRoot27flxzM);
                        m2769setStart9hnwElY(iM2773constructorimpl, nl3Var.invoke(Integer.valueOf(m2755getStart330cO7A(iM2773constructorimpl))).intValue());
                        m2762setEnd9hnwElY(iM2773constructorimpl, nl3Var.invoke(Integer.valueOf(m2748getEnd330cO7A(iM2773constructorimpl))).intValue());
                        m2765setMin9hnwElY(iM2773constructorimpl, nl3Var.invoke(Integer.valueOf(m2751getMin330cO7A(iM2773constructorimpl))).intValue());
                        m2764setMax9hnwElY(iM2773constructorimpl, nl3Var.invoke(Integer.valueOf(m2750getMax330cO7A(iM2773constructorimpl))).intValue());
                        if (m2748getEnd330cO7A(iM2773constructorimpl) <= m2755getStart330cO7A(iM2773constructorimpl)) {
                            m2746addZlWbn38(tempArray, iM2773constructorimpl);
                        }
                        if (!Node.m2775equalsimpl0(m2753getRightbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM()) && m2750getMax330cO7A(m2753getRightbLpG9ms(iM2754getRoot27flxzM)) >= i && m2751getMin330cO7A(m2753getRightbLpG9ms(iM2754getRoot27flxzM)) <= i2) {
                            iM2754getRoot27flxzM = m2753getRightbLpG9ms(iM2754getRoot27flxzM);
                            break;
                        }
                        c = 2;
                    } else if (c == 2) {
                        if (!Node.m2775equalsimpl0(m2752getParentbLpG9ms(iM2754getRoot27flxzM), m2756getTerminator27flxzM())) {
                            c = Node.m2775equalsimpl0(iM2754getRoot27flxzM, m2749getLeftbLpG9ms(m2752getParentbLpG9ms(iM2754getRoot27flxzM))) ? (char) 1 : (char) 2;
                        }
                        iM2754getRoot27flxzM = m2752getParentbLpG9ms(iM2754getRoot27flxzM);
                    }
                }
            }
        }
        int[] iArr = tempArray.content;
        int i3 = tempArray._size;
        for (int i4 = 0; i4 < i3; i4++) {
            m2740removeNode9hnwElY(Node.m2773constructorimpl(iArr[i4]), false);
        }
        tempArray.clear();
        cleanDeletedNodesIfNeeded();
    }

    /* JADX INFO: renamed from: next-bLpG9ms, reason: not valid java name */
    public final int m2758nextbLpG9ms(int i) {
        if (!Node.m2775equalsimpl0(m2753getRightbLpG9ms(i), this.terminator)) {
            return m2757lowestNodebLpG9ms(m2753getRightbLpG9ms(i));
        }
        int iM2752getParentbLpG9ms = m2752getParentbLpG9ms(i);
        while (true) {
            int i2 = iM2752getParentbLpG9ms;
            int i3 = i;
            i = i2;
            if (Node.m2775equalsimpl0(i, this.terminator) || !Node.m2775equalsimpl0(i3, m2753getRightbLpG9ms(i))) {
                break;
            }
            iM2752getParentbLpG9ms = m2752getParentbLpG9ms(i);
        }
        return i;
    }

    /* JADX INFO: renamed from: overlaps-XzpGiIY, reason: not valid java name */
    public final boolean m2759overlapsXzpGiIY(int i, int i2, int i3) {
        return IntIntervalTreeKt.intersect(i2, i3, m2755getStart330cO7A(i), m2748getEnd330cO7A(i));
    }

    /* JADX INFO: renamed from: pop-2SV_EgM, reason: not valid java name */
    public final int m2760pop2SV_EgM(MutableIntList mutableIntList) {
        return Node.m2773constructorimpl(mutableIntList.removeAt(mutableIntList._size - 1));
    }

    public final boolean removeInterval(T t, int i, int i2) {
        if (i >= i2) {
            return false;
        }
        int iM2736findNodecKdZwxc = m2736findNodecKdZwxc(t, i, i2);
        if (Node.m2775equalsimpl0(iM2736findNodecKdZwxc, this.terminator)) {
            return false;
        }
        m2741removeNode9hnwElY$default(this, iM2736findNodecKdZwxc, false, 2, null);
        return true;
    }

    /* JADX INFO: renamed from: setColor-9hnwElY, reason: not valid java name */
    public final void m2761setColor9hnwElY(int i, int i2) {
        MutableLongList mutableLongList = this.nodeInfo;
        mutableLongList.set(i, (((long) ((int) (mutableLongList.get(i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i2) << 32));
    }

    /* JADX INFO: renamed from: setEnd-9hnwElY, reason: not valid java name */
    public final void m2762setEnd9hnwElY(int i, int i2) {
        MutableLongList mutableLongList = this.nodeInfo;
        int i3 = i + 2;
        mutableLongList.set(i3, (((long) ((int) (mutableLongList.get(i3) >> 32))) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: setLeft-cfX_BQo, reason: not valid java name */
    public final void m2763setLeftcfX_BQo(int i, int i2) {
        MutableLongList mutableLongList = this.nodeInfo;
        int i3 = i + 1;
        mutableLongList.set(i3, (((long) ((int) (mutableLongList.get(i3) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i2) << 32));
    }

    /* JADX INFO: renamed from: setMax-9hnwElY, reason: not valid java name */
    public final void m2764setMax9hnwElY(int i, int i2) {
        MutableLongList mutableLongList = this.nodeInfo;
        int i3 = i + 3;
        mutableLongList.set(i3, (((long) ((int) (mutableLongList.get(i3) >> 32))) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: setMin-9hnwElY, reason: not valid java name */
    public final void m2765setMin9hnwElY(int i, int i2) {
        MutableLongList mutableLongList = this.nodeInfo;
        int i3 = i + 3;
        mutableLongList.set(i3, (((long) ((int) (mutableLongList.get(i3) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i2) << 32));
    }

    /* JADX INFO: renamed from: setParent-cfX_BQo, reason: not valid java name */
    public final void m2766setParentcfX_BQo(int i, int i2) {
        MutableLongList mutableLongList = this.nodeInfo;
        mutableLongList.set(i, (((long) ((int) (mutableLongList.get(i) >> 32))) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: setRight-cfX_BQo, reason: not valid java name */
    public final void m2767setRightcfX_BQo(int i, int i2) {
        MutableLongList mutableLongList = this.nodeInfo;
        int i3 = i + 1;
        mutableLongList.set(i3, (((long) ((int) (mutableLongList.get(i3) >> 32))) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: setRoot-330cO7A, reason: not valid java name */
    public final void m2768setRoot330cO7A(int i) {
        this.root = i;
    }

    /* JADX INFO: renamed from: setStart-9hnwElY, reason: not valid java name */
    public final void m2769setStart9hnwElY(int i, int i2) {
        MutableLongList mutableLongList = this.nodeInfo;
        int i3 = i + 2;
        mutableLongList.set(i3, (((long) ((int) (mutableLongList.get(i3) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i2) << 32));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IntIntervalTree() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ IntIntervalTree(IntIntervalTree intIntervalTree, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : intIntervalTree);
    }
}
