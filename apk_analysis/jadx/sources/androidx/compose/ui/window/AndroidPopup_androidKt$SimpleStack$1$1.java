package androidx.compose.ui.window;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidPopup_androidKt$SimpleStack$1$1 implements MeasurePolicy {
    public static final AndroidPopup_androidKt$SimpleStack$1$1 INSTANCE = new AndroidPopup_androidKt$SimpleStack$1$1();

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        int size = list.size();
        if (size == 0) {
            return MeasureScope.layout$default(measureScope, 0, 0, null, AnonymousClass1.INSTANCE, 4, null);
        }
        if (size == 1) {
            Placeable placeableMo7702measureBRTryo0 = list.get(0).mo7702measureBRTryo0(j);
            return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new AnonymousClass2(placeableMo7702measureBRTryo0), 4, null);
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i = 0; i < size2; i++) {
            Placeable placeableMo7702measureBRTryo1 = list.get(i).mo7702measureBRTryo0(j);
            iMax = Math.max(iMax, placeableMo7702measureBRTryo1.getWidth());
            iMax2 = Math.max(iMax2, placeableMo7702measureBRTryo1.getHeight());
            arrayList.add(placeableMo7702measureBRTryo1);
        }
        return MeasureScope.layout$default(measureScope, iMax, iMax2, null, new AnonymousClass3(arrayList), 4, null);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
            invoke2(placementScope);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Placeable.PlacementScope placementScope) {
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
        final /* synthetic */ Placeable $p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Placeable placeable) {
            super(1);
            this.$p = placeable;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Placeable.PlacementScope placementScope) {
            Placeable.PlacementScope.placeRelative$default(placementScope, this.$p, 0, 0, 0.0f, 4, null);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
            invoke2(placementScope);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1$3, reason: invalid class name */
    public static final class AnonymousClass3 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
        final /* synthetic */ List<Placeable> $placeables;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(List<? extends Placeable> list) {
            super(1);
            this.$placeables = list;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Placeable.PlacementScope placementScope) {
            int iG = u96.g(this.$placeables);
            if (iG < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Placeable.PlacementScope placementScope2 = placementScope;
                Placeable.PlacementScope.placeRelative$default(placementScope2, this.$placeables.get(i), 0, 0, 0.0f, 4, null);
                if (i == iG) {
                    return;
                }
                i++;
                placementScope = placementScope2;
            }
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
            invoke2(placementScope);
            return j59.a;
        }
    }
}
