package androidx.compose.ui.semantics;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import defpackage.aa4;
import defpackage.c9;
import defpackage.cm3;
import defpackage.ll3;
import defpackage.re4;
import defpackage.tg;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsConfiguration implements SemanticsPropertyReceiver, Iterable<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>>, re4 {
    public static final int $stable = 8;
    private MutableScatterSet<SemanticsPropertyKey<?>> _accessibilityExtraKeys;
    private boolean isClearingSemantics;
    private boolean isMergingSemanticsOfDescendants;
    private Map<SemanticsPropertyKey<?>, ? extends Object> mapWrapper;
    private final MutableScatterMap<SemanticsPropertyKey<?>, Object> props = ScatterMapKt.mutableScatterMapOf();

    public final void collapsePeer$ui(SemanticsConfiguration semanticsConfiguration) {
        if (semanticsConfiguration.isMergingSemanticsOfDescendants) {
            this.isMergingSemanticsOfDescendants = true;
        }
        if (semanticsConfiguration.isClearingSemantics) {
            this.isClearingSemantics = true;
        }
        MutableScatterMap<SemanticsPropertyKey<?>, Object> mutableScatterMap = semanticsConfiguration.props;
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8;
                int i3 = 8 - ((~(i - length)) >>> 31);
                int i4 = 0;
                while (i4 < i3) {
                    if ((255 & j) < 128) {
                        int i5 = (i << 3) + i4;
                        Object obj = objArr[i5];
                        Object obj2 = objArr2[i5];
                        SemanticsPropertyKey<?> semanticsPropertyKey = (SemanticsPropertyKey) obj;
                        if (!this.props.contains(semanticsPropertyKey)) {
                            this.props.set(semanticsPropertyKey, obj2);
                        } else if (obj2 instanceof AccessibilityAction) {
                            Object obj3 = this.props.get(semanticsPropertyKey);
                            obj3.getClass();
                            AccessibilityAction accessibilityAction = (AccessibilityAction) obj3;
                            MutableScatterMap<SemanticsPropertyKey<?>, Object> mutableScatterMap2 = this.props;
                            String label = accessibilityAction.getLabel();
                            if (label == null) {
                                label = ((AccessibilityAction) obj2).getLabel();
                            }
                            String str = label;
                            cm3 action = accessibilityAction.getAction();
                            if (action == null) {
                                action = ((AccessibilityAction) obj2).getAction();
                            }
                            mutableScatterMap2.set(semanticsPropertyKey, new AccessibilityAction(str, action));
                        }
                    }
                    j >>= i2;
                    i4++;
                    i2 = i2;
                }
                if (i3 != i2) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final <T> boolean contains(SemanticsPropertyKey<T> semanticsPropertyKey) {
        return this.props.containsKey(semanticsPropertyKey);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x004d A[LOOP:0: B:5:0x000f->B:18:0x004d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0050 A[SYNTHETIC] */
    public final boolean containsImportantForAccessibility$ui() {
        MutableScatterMap<SemanticsPropertyKey<?>, Object> mutableScatterMap = this.props;
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj = objArr[i4];
                            Object obj2 = objArr2[i4];
                            if (((SemanticsPropertyKey) obj).isImportantForAccessibility$ui()) {
                                return true;
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 == 8) {
                        if (i != length) {
                            i++;
                        }
                    }
                } else if (i != length) {
                    i++;
                }
            }
        }
        return false;
    }

    public final SemanticsConfiguration copy() {
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.isMergingSemanticsOfDescendants = this.isMergingSemanticsOfDescendants;
        semanticsConfiguration.isClearingSemantics = this.isClearingSemantics;
        semanticsConfiguration.props.putAll(this.props);
        return semanticsConfiguration;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SemanticsConfiguration)) {
            return false;
        }
        SemanticsConfiguration semanticsConfiguration = (SemanticsConfiguration) obj;
        return aa4.e(this.props, semanticsConfiguration.props) && this.isMergingSemanticsOfDescendants == semanticsConfiguration.isMergingSemanticsOfDescendants && this.isClearingSemantics == semanticsConfiguration.isClearingSemantics;
    }

    public final <T> T get(SemanticsPropertyKey<T> semanticsPropertyKey) {
        T t = (T) this.props.get(semanticsPropertyKey);
        if (t != null) {
            return t;
        }
        c9.g(semanticsPropertyKey, "Key not present: ", " - consider getOrElse or getOrNull");
        return null;
    }

    public final ScatterSet<SemanticsPropertyKey<?>> getAccessibilityExtraKeys$ui() {
        return this._accessibilityExtraKeys;
    }

    public final <T> T getOrElse(SemanticsPropertyKey<T> semanticsPropertyKey, ll3<? extends T> ll3Var) {
        T t = (T) this.props.get(semanticsPropertyKey);
        return t == null ? ll3Var.invoke() : t;
    }

    public final <T> T getOrElseNullable(SemanticsPropertyKey<T> semanticsPropertyKey, ll3<? extends T> ll3Var) {
        T t = (T) this.props.get(semanticsPropertyKey);
        return t == null ? ll3Var.invoke() : t;
    }

    public final MutableScatterMap<SemanticsPropertyKey<?>, Object> getProps$ui() {
        return this.props;
    }

    public int hashCode() {
        return Boolean.hashCode(this.isClearingSemantics) + tg.c(this.props.hashCode() * 31, 31, this.isMergingSemanticsOfDescendants);
    }

    public final boolean isClearingSemantics() {
        return this.isClearingSemantics;
    }

    public final boolean isMergingSemanticsOfDescendants() {
        return this.isMergingSemanticsOfDescendants;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> iterator() {
        Map<SemanticsPropertyKey<?>, ? extends Object> mapAsMap = this.mapWrapper;
        if (mapAsMap == null) {
            mapAsMap = this.props.asMap();
            this.mapWrapper = mapAsMap;
        }
        return mapAsMap.entrySet().iterator();
    }

    public final void mergeChild$ui(SemanticsConfiguration semanticsConfiguration) {
        MutableScatterMap<SemanticsPropertyKey<?>, Object> mutableScatterMap = semanticsConfiguration.props;
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        Object obj = objArr[i4];
                        Object obj2 = objArr2[i4];
                        SemanticsPropertyKey<?> semanticsPropertyKey = (SemanticsPropertyKey) obj;
                        Object obj3 = this.props.get(semanticsPropertyKey);
                        semanticsPropertyKey.getClass();
                        Object objMerge = semanticsPropertyKey.merge(obj3, obj2);
                        if (objMerge != null) {
                            this.props.set(semanticsPropertyKey, objMerge);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.semantics.SemanticsPropertyReceiver
    public <T> void set(SemanticsPropertyKey<T> semanticsPropertyKey, T t) {
        if ((t instanceof AccessibilityAction) && contains(semanticsPropertyKey)) {
            Object obj = this.props.get(semanticsPropertyKey);
            obj.getClass();
            AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
            MutableScatterMap<SemanticsPropertyKey<?>, Object> mutableScatterMap = this.props;
            AccessibilityAction accessibilityAction2 = (AccessibilityAction) t;
            String label = accessibilityAction2.getLabel();
            if (label == null) {
                label = accessibilityAction.getLabel();
            }
            cm3 action = accessibilityAction2.getAction();
            if (action == null) {
                action = accessibilityAction.getAction();
            }
            mutableScatterMap.set(semanticsPropertyKey, new AccessibilityAction(label, action));
        } else {
            this.props.set(semanticsPropertyKey, t);
        }
        if (semanticsPropertyKey.getAccessibilityExtraKey$ui() != null) {
            MutableScatterSet<SemanticsPropertyKey<?>> mutableScatterSetMutableScatterSetOf = this._accessibilityExtraKeys;
            if (mutableScatterSetMutableScatterSetOf == null) {
                mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
                this._accessibilityExtraKeys = mutableScatterSetMutableScatterSetOf;
            }
            if (mutableScatterSetMutableScatterSetOf != null) {
                mutableScatterSetMutableScatterSetOf.add(semanticsPropertyKey);
            }
        }
    }

    public final void setClearingSemantics(boolean z) {
        this.isClearingSemantics = z;
    }

    public final void setMergingSemanticsOfDescendants(boolean z) {
        this.isMergingSemanticsOfDescendants = z;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0079 A[DONT_INVERT, PHI: r2
      0x0079: PHI (r2v6 java.lang.String) = (r2v5 java.lang.String), (r2v7 java.lang.String) binds: [B:13:0x0040, B:20:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x007b A[LOOP:0: B:12:0x0032->B:22:0x007b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x007e A[EDGE_INSN: B:26:0x007e->B:23:0x007e BREAK  A[LOOP:0: B:12:0x0032->B:22:0x007b], SYNTHETIC] */
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (this.isMergingSemanticsOfDescendants) {
            sb.append("mergeDescendants=true");
            str = ", ";
        } else {
            str = "";
        }
        if (this.isClearingSemantics) {
            sb.append(str);
            sb.append("isClearingSemantics=true");
            str = ", ";
        }
        MutableScatterMap<SemanticsPropertyKey<?>, Object> mutableScatterMap = this.props;
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i != length) {
                        break;
                        break;
                    }
                    i++;
                } else {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj = objArr[i4];
                            Object obj2 = objArr2[i4];
                            sb.append(str);
                            sb.append(((SemanticsPropertyKey) obj).getName());
                            sb.append(" : ");
                            sb.append(obj2);
                            str = ", ";
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                    if (i != length) {
                        break;
                    }
                    i++;
                }
            }
        }
        return JvmActuals_jvmKt.simpleIdentityToString(this, null) + "{ " + ((Object) sb) + " }";
    }
}
