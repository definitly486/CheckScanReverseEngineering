package androidx.compose.ui.node;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.layout.Ruler;
import defpackage.yr;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class RulerTrackingMap {
    private int size;
    private Ruler[] rulers = new Ruler[32];
    private float[] values = new float[32];
    private byte[] accessFlags = new byte[32];
    private MutableScatterSet<WeakReference<LayoutNode>> layoutNodes = ScatterSetKt.mutableScatterSetOf();
    private final MutableScatterSet<Ruler> newRulers = ScatterSetKt.mutableScatterSetOf();

    public final void clear() {
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.rulers[i2] = null;
            this.values[i2] = Float.NaN;
            this.accessFlags[i2] = 0;
        }
        this.size = 0;
    }

    public final boolean contains(Ruler ruler) {
        return yr.E(this.rulers, ruler);
    }

    public final float getOrDefault(Ruler ruler, float f) {
        int iQ = yr.Q(ruler, this.rulers);
        return iQ < 0 ? f : this.values[iQ];
    }

    /* JADX WARN: Code duplicated, block: B:64:0x012a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x012c A[LOOP:5: B:51:0x00f1->B:65:0x012c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:84:0x012f A[EDGE_INSN: B:84:0x012f->B:66:0x012f BREAK  A[LOOP:5: B:51:0x00f1->B:65:0x012c], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void notifyChanged(boolean z, LookaheadCapablePlaceable lookaheadCapablePlaceable, MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> mutableScatterMap) {
        char c;
        char c2;
        long j;
        long j2;
        LayoutNode layoutNode;
        char c3;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            byte b = this.accessFlags[i2];
            if (b == 3) {
                MutableScatterSet<Ruler> mutableScatterSet = this.newRulers;
                Ruler ruler = this.rulers[i2];
                ruler.getClass();
                mutableScatterSet.plusAssign(ruler);
            } else if (b != 0 && mutableScatterMap != null) {
                Ruler ruler2 = this.rulers[i2];
                ruler2.getClass();
                MutableScatterSet<WeakReference<LayoutNode>> mutableScatterSetRemove = mutableScatterMap.remove(ruler2);
                if (mutableScatterSetRemove != null) {
                    this.layoutNodes.plusAssign(mutableScatterSetRemove);
                }
            }
        }
        int i3 = this.size;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            c = 2;
            if (i4 >= i3) {
                break;
            }
            byte[] bArr = this.accessFlags;
            if (bArr[i4] == 2) {
                i5++;
            } else if (i5 > 0) {
                Ruler[] rulerArr = this.rulers;
                rulerArr[i4 - i5] = rulerArr[i4];
            }
            bArr[i4] = 2;
            i4++;
        }
        int i6 = this.size;
        for (int i7 = i6 - i5; i7 < i6; i7++) {
            this.rulers[i7] = null;
        }
        this.size -= i5;
        LookaheadCapablePlaceable parent = lookaheadCapablePlaceable.getParent();
        MutableScatterSet<Ruler> mutableScatterSet2 = this.newRulers;
        Object[] objArr = mutableScatterSet2.elements;
        long[] jArr = mutableScatterSet2.metadata;
        int length = jArr.length - 2;
        char c4 = 7;
        if (length >= 0) {
            int i8 = 0;
            j = 128;
            while (true) {
                long j3 = jArr[i8];
                j2 = 255;
                if ((((~j3) << c4) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i9 = 8 - ((~(i8 - length)) >>> 31);
                    int i10 = 0;
                    while (i10 < i9) {
                        if ((j3 & 255) < 128) {
                            (parent == null ? lookaheadCapablePlaceable : parent).invalidateChildrenOfDefiningRuler$ui((Ruler) objArr[(i8 << 3) + i10]);
                        }
                        j3 >>= 8;
                        i10++;
                        c = c;
                        c4 = c4;
                    }
                    c3 = c;
                    c2 = c4;
                    if (i9 != 8) {
                        break;
                    }
                } else {
                    c3 = c;
                    c2 = c4;
                }
                if (i8 == length) {
                    break;
                }
                i8++;
                c = c3;
                c4 = c2;
            }
        } else {
            c2 = 7;
            j = 128;
            j2 = 255;
        }
        this.newRulers.clear();
        MutableScatterSet<WeakReference<LayoutNode>> mutableScatterSet3 = this.layoutNodes;
        Object[] objArr2 = mutableScatterSet3.elements;
        long[] jArr2 = mutableScatterSet3.metadata;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i11 = 0;
            while (true) {
                long j4 = jArr2[i11];
                if ((((~j4) << c2) & j4 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i11 != length2) {
                        break;
                        break;
                    }
                    i11++;
                } else {
                    int i12 = 8 - ((~(i11 - length2)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((j4 & j2) < j && (layoutNode = (LayoutNode) ((WeakReference) objArr2[(i11 << 3) + i13]).get()) != null) {
                            if (z) {
                                layoutNode.requestLookaheadRelayout$ui(false);
                            } else {
                                layoutNode.requestRelayout$ui(false);
                            }
                        }
                        j4 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    } else if (i11 != length2) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
        }
        this.layoutNodes.clear();
    }

    public final void set(Ruler ruler, float f) {
        int iQ = yr.Q(ruler, this.rulers);
        if (iQ >= 0) {
            float[] fArr = this.values;
            if (fArr[iQ] != f) {
                fArr[iQ] = f;
                this.accessFlags[iQ] = 1;
                return;
            } else {
                byte[] bArr = this.accessFlags;
                if (bArr[iQ] == 2) {
                    bArr[iQ] = 0;
                    return;
                }
                return;
            }
        }
        int i = this.size;
        Ruler[] rulerArr = this.rulers;
        if (i == rulerArr.length) {
            int i2 = i * 2;
            this.rulers = (Ruler[]) Arrays.copyOf(rulerArr, i2);
            this.values = Arrays.copyOf(this.values, i2);
            this.accessFlags = Arrays.copyOf(this.accessFlags, i2);
        }
        this.rulers[i] = ruler;
        this.accessFlags[i] = 3;
        this.values[i] = f;
        this.size++;
    }
}
