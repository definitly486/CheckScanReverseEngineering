package androidx.compose.foundation.text.selection;

import androidx.collection.LongObjectMap;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.selection.Selectable;
import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.fm3;
import defpackage.hm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.n62;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.oc7;
import defpackage.pp1;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionRegistrarImpl implements SelectionRegistrar {
    private final MutableLongObjectMap<Selectable> _selectableMap;
    private final List<Selectable> _selectables;
    private nl3<? super Long, j59> afterSelectableUnsubscribe;
    private AtomicLong incrementId;
    private nl3<? super Long, j59> onPositionChangeCallback;
    private nl3<? super Long, j59> onSelectableChangeCallback;
    private hm3<? super Boolean, ? super LayoutCoordinates, ? super Offset, ? super Offset, ? super Boolean, ? super SelectionAdjustment, Boolean> onSelectionUpdateCallback;
    private ll3<j59> onSelectionUpdateEndCallback;
    private bm3<? super Boolean, ? super Long, j59> onSelectionUpdateSelectAll;
    private fm3<? super Boolean, ? super LayoutCoordinates, ? super Offset, ? super SelectionAdjustment, j59> onSelectionUpdateStartCallback;
    private boolean sorted;
    private final MutableState subselections$delegate;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final Saver<SelectionRegistrarImpl, Long> Saver = SaverKt.Saver(new oc7(1), new n62(2));

    private SelectionRegistrarImpl(long j) {
        this._selectables = new ArrayList();
        this._selectableMap = LongObjectMapKt.mutableLongObjectMapOf();
        this.incrementId = new AtomicLong(j);
        this.subselections$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(LongObjectMapKt.emptyLongObjectMap(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long Saver$lambda$0(SaverScope saverScope, SelectionRegistrarImpl selectionRegistrarImpl) {
        return Long.valueOf(selectionRegistrarImpl.incrementId.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SelectionRegistrarImpl Saver$lambda$1(long j) {
        return new SelectionRegistrarImpl(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int sort$lambda$0(LayoutCoordinates layoutCoordinates, Selectable selectable, Selectable selectable2) {
        Offset.Companion companion;
        long jM6003getZeroF1C5BW0;
        long jM6003getZeroF1C5BW1;
        long jM6003getZeroF1C5BW2;
        long jM6003getZeroF1C5BW3;
        LayoutCoordinates layoutCoordinates2 = selectable.getLayoutCoordinates();
        LayoutCoordinates layoutCoordinates3 = selectable2.getLayoutCoordinates();
        if (layoutCoordinates2 != null) {
            companion = Offset.Companion;
            jM6003getZeroF1C5BW0 = layoutCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates2, companion.m6003getZeroF1C5BW0());
            jM6003getZeroF1C5BW1 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jM6003getZeroF1C5BW0 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + ((int) (layoutCoordinates2.mo7710getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jM6003getZeroF1C5BW0 >> 32)) + ((int) (layoutCoordinates2.mo7710getSizeYbymL2g() >> 32)))) << 32));
        } else {
            companion = Offset.Companion;
            jM6003getZeroF1C5BW0 = companion.m6003getZeroF1C5BW0();
            jM6003getZeroF1C5BW1 = companion.m6003getZeroF1C5BW0();
        }
        if (layoutCoordinates3 != null) {
            jM6003getZeroF1C5BW2 = layoutCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates3, companion.m6003getZeroF1C5BW0());
            jM6003getZeroF1C5BW3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jM6003getZeroF1C5BW2 >> 32)) + ((int) (layoutCoordinates3.mo7710getSizeYbymL2g() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jM6003getZeroF1C5BW2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + ((int) (layoutCoordinates3.mo7710getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        } else {
            jM6003getZeroF1C5BW2 = companion.m6003getZeroF1C5BW0();
            jM6003getZeroF1C5BW3 = companion.m6003getZeroF1C5BW0();
        }
        long j = jM6003getZeroF1C5BW3;
        long j2 = jM6003getZeroF1C5BW2;
        return SelectionRegistrarImplKt.m3023inARowzwwh4xc(jM6003getZeroF1C5BW0, jM6003getZeroF1C5BW1, j2, j) ? pp1.a(Float.valueOf(Float.intBitsToFloat((int) (jM6003getZeroF1C5BW0 >> 32))), Float.valueOf(Float.intBitsToFloat((int) (j2 >> 32)))) : pp1.a(Float.valueOf(Float.intBitsToFloat((int) (jM6003getZeroF1C5BW0 & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), Float.valueOf(Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int sort$lambda$1(bm3 bm3Var, Object obj, Object obj2) {
        return ((Number) bm3Var.invoke(obj, obj2)).intValue();
    }

    public final nl3<Long, j59> getAfterSelectableUnsubscribe$foundation() {
        return this.afterSelectableUnsubscribe;
    }

    public final nl3<Long, j59> getOnPositionChangeCallback$foundation() {
        return this.onPositionChangeCallback;
    }

    public final nl3<Long, j59> getOnSelectableChangeCallback$foundation() {
        return this.onSelectableChangeCallback;
    }

    public final hm3<Boolean, LayoutCoordinates, Offset, Offset, Boolean, SelectionAdjustment, Boolean> getOnSelectionUpdateCallback$foundation() {
        return this.onSelectionUpdateCallback;
    }

    public final ll3<j59> getOnSelectionUpdateEndCallback$foundation() {
        return this.onSelectionUpdateEndCallback;
    }

    public final bm3<Boolean, Long, j59> getOnSelectionUpdateSelectAll$foundation() {
        return this.onSelectionUpdateSelectAll;
    }

    public final fm3<Boolean, LayoutCoordinates, Offset, SelectionAdjustment, j59> getOnSelectionUpdateStartCallback$foundation() {
        return this.onSelectionUpdateStartCallback;
    }

    public final LongObjectMap<Selectable> getSelectableMap$foundation() {
        return this._selectableMap;
    }

    public final List<Selectable> getSelectables$foundation() {
        return this._selectables;
    }

    public final boolean getSorted$foundation() {
        return this.sorted;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public LongObjectMap<Selection> getSubselections() {
        return (LongObjectMap) this.subselections$delegate.getValue();
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public long nextSelectableId() {
        long andIncrement = this.incrementId.getAndIncrement();
        while (andIncrement == 0) {
            andIncrement = this.incrementId.getAndIncrement();
        }
        return andIncrement;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void notifyPositionChange(long j) {
        this.sorted = false;
        nl3<? super Long, j59> nl3Var = this.onPositionChangeCallback;
        if (nl3Var != null) {
            nl3Var.invoke(Long.valueOf(j));
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void notifySelectableChange(long j) {
        nl3<? super Long, j59> nl3Var = this.onSelectableChangeCallback;
        if (nl3Var != null) {
            nl3Var.invoke(Long.valueOf(j));
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    /* JADX INFO: renamed from: notifySelectionUpdate-njBpvok */
    public boolean mo3021notifySelectionUpdatenjBpvok(LayoutCoordinates layoutCoordinates, long j, long j2, boolean z, SelectionAdjustment selectionAdjustment, boolean z2) {
        hm3<? super Boolean, ? super LayoutCoordinates, ? super Offset, ? super Offset, ? super Boolean, ? super SelectionAdjustment, Boolean> hm3Var = this.onSelectionUpdateCallback;
        if (hm3Var != null) {
            return hm3Var.invoke(Boolean.valueOf(z2), layoutCoordinates, Offset.m5976boximpl(j), Offset.m5976boximpl(j2), Boolean.valueOf(z), selectionAdjustment).booleanValue();
        }
        return true;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void notifySelectionUpdateEnd() {
        ll3<j59> ll3Var = this.onSelectionUpdateEndCallback;
        if (ll3Var != null) {
            ll3Var.invoke();
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void notifySelectionUpdateSelectAll(long j, boolean z) {
        bm3<? super Boolean, ? super Long, j59> bm3Var = this.onSelectionUpdateSelectAll;
        if (bm3Var != null) {
            bm3Var.invoke(Boolean.valueOf(z), Long.valueOf(j));
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    /* JADX INFO: renamed from: notifySelectionUpdateStart-ubNVwUQ */
    public void mo3022notifySelectionUpdateStartubNVwUQ(LayoutCoordinates layoutCoordinates, long j, SelectionAdjustment selectionAdjustment, boolean z) {
        fm3<? super Boolean, ? super LayoutCoordinates, ? super Offset, ? super SelectionAdjustment, j59> fm3Var = this.onSelectionUpdateStartCallback;
        if (fm3Var != null) {
            fm3Var.invoke(Boolean.valueOf(z), layoutCoordinates, Offset.m5976boximpl(j), selectionAdjustment);
        }
    }

    public final void setAfterSelectableUnsubscribe$foundation(nl3<? super Long, j59> nl3Var) {
        this.afterSelectableUnsubscribe = nl3Var;
    }

    public final void setOnPositionChangeCallback$foundation(nl3<? super Long, j59> nl3Var) {
        this.onPositionChangeCallback = nl3Var;
    }

    public final void setOnSelectableChangeCallback$foundation(nl3<? super Long, j59> nl3Var) {
        this.onSelectableChangeCallback = nl3Var;
    }

    public final void setOnSelectionUpdateCallback$foundation(hm3<? super Boolean, ? super LayoutCoordinates, ? super Offset, ? super Offset, ? super Boolean, ? super SelectionAdjustment, Boolean> hm3Var) {
        this.onSelectionUpdateCallback = hm3Var;
    }

    public final void setOnSelectionUpdateEndCallback$foundation(ll3<j59> ll3Var) {
        this.onSelectionUpdateEndCallback = ll3Var;
    }

    public final void setOnSelectionUpdateSelectAll$foundation(bm3<? super Boolean, ? super Long, j59> bm3Var) {
        this.onSelectionUpdateSelectAll = bm3Var;
    }

    public final void setOnSelectionUpdateStartCallback$foundation(fm3<? super Boolean, ? super LayoutCoordinates, ? super Offset, ? super SelectionAdjustment, j59> fm3Var) {
        this.onSelectionUpdateStartCallback = fm3Var;
    }

    public final void setSorted$foundation(boolean z) {
        this.sorted = z;
    }

    public void setSubselections(LongObjectMap<Selection> longObjectMap) {
        this.subselections$delegate.setValue(longObjectMap);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [wn7] */
    public final List<Selectable> sort(final LayoutCoordinates layoutCoordinates) {
        if (!this.sorted) {
            List<Selectable> list = this._selectables;
            final ?? r1 = new bm3() { // from class: wn7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return Integer.valueOf(SelectionRegistrarImpl.sort$lambda$0(layoutCoordinates, (Selectable) obj, (Selectable) obj2));
                }
            };
            nn1.J(new Comparator() { // from class: xn7
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return SelectionRegistrarImpl.sort$lambda$1(r1, obj, obj2);
                }
            }, list);
            this.sorted = true;
        }
        return getSelectables$foundation();
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public Selectable subscribe(Selectable selectable) {
        if (!(selectable.getSelectableId() != 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("The selectable contains an invalid id: " + selectable.getSelectableId());
        }
        if (this._selectableMap.containsKey(selectable.getSelectableId())) {
            InlineClassHelperKt.throwIllegalArgumentException("Another selectable with the id: " + selectable + ".selectableId has already subscribed.");
        }
        this._selectableMap.set(selectable.getSelectableId(), selectable);
        this._selectables.add(selectable);
        this.sorted = false;
        return selectable;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void unsubscribe(Selectable selectable) {
        if (this._selectableMap.containsKey(selectable.getSelectableId())) {
            this._selectables.remove(selectable);
            this._selectableMap.remove(selectable.getSelectableId());
            nl3<? super Long, j59> nl3Var = this.afterSelectableUnsubscribe;
            if (nl3Var != null) {
                nl3Var.invoke(Long.valueOf(selectable.getSelectableId()));
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<SelectionRegistrarImpl, Long> getSaver() {
            return SelectionRegistrarImpl.Saver;
        }

        private Companion() {
        }
    }

    public SelectionRegistrarImpl() {
        this(1L);
    }
}
