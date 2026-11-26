package androidx.compose.material3;

import androidx.compose.material3.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.m43;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 extends ExposedDropdownMenuBoxScopeImpl {
    final /* synthetic */ MutableState<Boolean> $alwaysFocusable;
    final /* synthetic */ MutableState<ExposedDropdownMenuAnchorType> $anchorTypeState;
    final /* synthetic */ MutableIntState $anchorWidth$delegate;
    final /* synthetic */ String $collapsedDescription;
    final /* synthetic */ boolean $expanded;
    final /* synthetic */ String $expandedDescription;
    final /* synthetic */ FocusRequester $focusRequester;
    final /* synthetic */ SoftwareKeyboardController $keyboardController;
    final /* synthetic */ MutableIntState $menuMaxHeight$delegate;
    final /* synthetic */ nl3<Boolean, j59> $onExpandedChange;
    final /* synthetic */ String $toggleDescription;

    /* JADX WARN: Multi-variable type inference failed */
    public ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1(FocusRequester focusRequester, boolean z, MutableState<Boolean> mutableState, String str, String str2, String str3, SoftwareKeyboardController softwareKeyboardController, MutableState<ExposedDropdownMenuAnchorType> mutableState2, nl3<? super Boolean, j59> nl3Var, MutableIntState mutableIntState, MutableIntState mutableIntState2) {
        this.$focusRequester = focusRequester;
        this.$expanded = z;
        this.$alwaysFocusable = mutableState;
        this.$expandedDescription = str;
        this.$collapsedDescription = str2;
        this.$toggleDescription = str3;
        this.$keyboardController = softwareKeyboardController;
        this.$anchorTypeState = mutableState2;
        this.$onExpandedChange = nl3Var;
        this.$anchorWidth$delegate = mutableIntState;
        this.$menuMaxHeight$delegate = mutableIntState2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult exposedDropdownSize$lambda$3(boolean z, MutableIntState mutableIntState, MutableIntState mutableIntState2, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(constraints.m9001unboximpl(), mutableIntState.getIntValue());
        int iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(constraints.m9001unboximpl(), mutableIntState2.getIntValue());
        int iM8997getMinWidthimpl = z ? iM9012constrainWidthK40F9xA : Constraints.m8997getMinWidthimpl(constraints.m9001unboximpl());
        if (!z) {
            iM9012constrainWidthK40F9xA = Constraints.m8995getMaxWidthimpl(constraints.m9001unboximpl());
        }
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(constraints.m9001unboximpl(), iM8997getMinWidthimpl, iM9012constrainWidthK40F9xA, 0, iM9011constrainHeightK40F9xA, 4, null));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new m43(placeableMo7702measureBRTryo0, 0), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 exposedDropdownSize$lambda$3$lambda$2(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 menuAnchor_2Hz36ac$lambda$0(String str, MutableState mutableState) {
        if (ExposedDropdownMenuKt.m3453hasGreaterOrEqualPriorityThanvVDBVkM(str, ((ExposedDropdownMenuAnchorType) mutableState.getValue()).m3433unboximpl())) {
            mutableState.setValue(ExposedDropdownMenuAnchorType.m3427boximpl(str));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 menuAnchor_2Hz36ac$lambda$1(MutableState mutableState, String str, nl3 nl3Var, boolean z) {
        mutableState.setValue(ExposedDropdownMenuAnchorType.m3427boximpl(str));
        nl3Var.invoke(Boolean.valueOf(!z));
        return j59.a;
    }

    @Override // androidx.compose.material3.ExposedDropdownMenuBoxScope
    public Modifier exposedDropdownSize(Modifier modifier, final boolean z) {
        final MutableIntState mutableIntState = this.$anchorWidth$delegate;
        final MutableIntState mutableIntState2 = this.$menuMaxHeight$delegate;
        return LayoutModifierKt.layout(modifier, new dm3() { // from class: l43
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.exposedDropdownSize$lambda$3(z, mutableIntState, mutableIntState2, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        });
    }

    @Override // androidx.compose.material3.ExposedDropdownMenuBoxScope
    public boolean getAlwaysFocusable$material3() {
        return this.$alwaysFocusable.getValue().booleanValue();
    }

    @Override // androidx.compose.material3.ExposedDropdownMenuBoxScope
    /* JADX INFO: renamed from: getAnchorType-oYjWRB4$material3 */
    public String mo3440getAnchorTypeoYjWRB4$material3() {
        return this.$anchorTypeState.getValue().m3433unboximpl();
    }

    @Override // androidx.compose.material3.ExposedDropdownMenuBoxScope
    /* JADX INFO: renamed from: menuAnchor-2Hz36ac */
    public Modifier mo3441menuAnchor2Hz36ac(Modifier modifier, final String str, boolean z) {
        Modifier modifierM3452expandable32CpT8;
        Modifier modifierFocusRequester = FocusRequesterModifierKt.focusRequester(modifier, this.$focusRequester);
        final MutableState<ExposedDropdownMenuAnchorType> mutableState = this.$anchorTypeState;
        Modifier modifierThen = modifierFocusRequester.then(new ExposedDropdownMenuAnchorElement(new ll3() { // from class: n43
            @Override // defpackage.ll3
            public final Object invoke() {
                return ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.menuAnchor_2Hz36ac$lambda$0(str, mutableState);
            }
        }));
        if (z) {
            Modifier.Companion companion = Modifier.Companion;
            final boolean z2 = this.$expanded;
            final MutableState<ExposedDropdownMenuAnchorType> mutableState2 = this.$anchorTypeState;
            final nl3<Boolean, j59> nl3Var = this.$onExpandedChange;
            modifierM3452expandable32CpT8 = ExposedDropdownMenuKt.m3452expandable32CpT8(companion, z2, new ll3() { // from class: o43
                @Override // defpackage.ll3
                public final Object invoke() {
                    return ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.menuAnchor_2Hz36ac$lambda$1(mutableState2, str, nl3Var, z2);
                }
            }, str, this.$alwaysFocusable, this.$expandedDescription, this.$collapsedDescription, this.$toggleDescription, this.$keyboardController);
        } else {
            modifierM3452expandable32CpT8 = Modifier.Companion;
        }
        return modifierThen.then(modifierM3452expandable32CpT8);
    }
}
