package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;
import defpackage.ej0;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class HorizontalScrollLayoutModifier implements LayoutModifier {
    private final int cursorOffset;
    private final TextFieldScrollerPosition scrollerPosition;
    private final ll3<TextLayoutResultProxy> textLayoutResultProvider;
    private final TransformedText transformedText;

    public HorizontalScrollLayoutModifier(TextFieldScrollerPosition textFieldScrollerPosition, int i, TransformedText transformedText, ll3<TextLayoutResultProxy> ll3Var) {
        this.scrollerPosition = textFieldScrollerPosition;
        this.cursorOffset = i;
        this.transformedText = transformedText;
        this.textLayoutResultProvider = ll3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HorizontalScrollLayoutModifier copy$default(HorizontalScrollLayoutModifier horizontalScrollLayoutModifier, TextFieldScrollerPosition textFieldScrollerPosition, int i, TransformedText transformedText, ll3 ll3Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            textFieldScrollerPosition = horizontalScrollLayoutModifier.scrollerPosition;
        }
        if ((i2 & 2) != 0) {
            i = horizontalScrollLayoutModifier.cursorOffset;
        }
        if ((i2 & 4) != 0) {
            transformedText = horizontalScrollLayoutModifier.transformedText;
        }
        if ((i2 & 8) != 0) {
            ll3Var = horizontalScrollLayoutModifier.textLayoutResultProvider;
        }
        return horizontalScrollLayoutModifier.copy(textFieldScrollerPosition, i, transformedText, ll3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(HorizontalScrollLayoutModifier horizontalScrollLayoutModifier, MeasureScope measureScope, Placeable placeable, int i, Placeable.PlacementScope placementScope) {
        int i2 = horizontalScrollLayoutModifier.cursorOffset;
        TransformedText transformedText = horizontalScrollLayoutModifier.transformedText;
        TextLayoutResultProxy textLayoutResultProxyInvoke = horizontalScrollLayoutModifier.textLayoutResultProvider.invoke();
        horizontalScrollLayoutModifier.scrollerPosition.update(Orientation.Horizontal, TextFieldScrollKt.getCursorRectInScroller(placementScope, i2, transformedText, textLayoutResultProxyInvoke != null ? textLayoutResultProxyInvoke.getValue() : null, measureScope.getLayoutDirection() == LayoutDirection.Rtl, placeable.getWidth()), i, placeable.getWidth());
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, Math.round(-horizontalScrollLayoutModifier.scrollerPosition.getOffset()), 0, 0.0f, 4, null);
        return j59.a;
    }

    public final TextFieldScrollerPosition component1() {
        return this.scrollerPosition;
    }

    public final int component2() {
        return this.cursorOffset;
    }

    public final TransformedText component3() {
        return this.transformedText;
    }

    public final ll3<TextLayoutResultProxy> component4() {
        return this.textLayoutResultProvider;
    }

    public final HorizontalScrollLayoutModifier copy(TextFieldScrollerPosition textFieldScrollerPosition, int i, TransformedText transformedText, ll3<TextLayoutResultProxy> ll3Var) {
        return new HorizontalScrollLayoutModifier(textFieldScrollerPosition, i, transformedText, ll3Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HorizontalScrollLayoutModifier)) {
            return false;
        }
        HorizontalScrollLayoutModifier horizontalScrollLayoutModifier = (HorizontalScrollLayoutModifier) obj;
        return aa4.e(this.scrollerPosition, horizontalScrollLayoutModifier.scrollerPosition) && this.cursorOffset == horizontalScrollLayoutModifier.cursorOffset && aa4.e(this.transformedText, horizontalScrollLayoutModifier.transformedText) && aa4.e(this.textLayoutResultProvider, horizontalScrollLayoutModifier.textLayoutResultProvider);
    }

    public final int getCursorOffset() {
        return this.cursorOffset;
    }

    public final TextFieldScrollerPosition getScrollerPosition() {
        return this.scrollerPosition;
    }

    public final ll3<TextLayoutResultProxy> getTextLayoutResultProvider() {
        return this.textLayoutResultProvider;
    }

    public final TransformedText getTransformedText() {
        return this.transformedText;
    }

    public int hashCode() {
        return this.textLayoutResultProvider.hashCode() + ((this.transformedText.hashCode() + ej0.b(this.cursorOffset, this.scrollerPosition.hashCode() * 31, 31)) * 31);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    /* JADX INFO: renamed from: measure-3p2s80s, reason: not valid java name */
    public MeasureResult mo2494measure3p2s80s(final MeasureScope measureScope, Measurable measurable, long j) {
        long j2;
        if (measurable.maxIntrinsicWidth(Constraints.m8994getMaxHeightimpl(j)) < Constraints.m8995getMaxWidthimpl(j)) {
            j2 = j;
        } else {
            j2 = j;
            j = Constraints.m8985copyZbe2FdA$default(j2, 0, Integer.MAX_VALUE, 0, 0, 13, null);
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        final int iMin = Math.min(placeableMo7702measureBRTryo0.getWidth(), Constraints.m8995getMaxWidthimpl(j2));
        return MeasureScope.layout$default(measureScope, iMin, placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.text.j
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return HorizontalScrollLayoutModifier.measure_3p2s80s$lambda$0(this.b, measureScope, placeableMo7702measureBRTryo0, iMin, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public String toString() {
        return "HorizontalScrollLayoutModifier(scrollerPosition=" + this.scrollerPosition + ", cursorOffset=" + this.cursorOffset + ", transformedText=" + this.transformedText + ", textLayoutResultProvider=" + this.textLayoutResultProvider + ')';
    }
}
