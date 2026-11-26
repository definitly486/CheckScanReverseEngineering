package androidx.compose.ui.semantics;

import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsActions {
    public static final int $stable;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> ClearTextSubstitution;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> Collapse;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> CopyText;
    private static final SemanticsPropertyKey<List<CustomAccessibilityAction>> CustomActions;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> CutText;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> Dismiss;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> Expand;
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<List<Float>, Boolean>>> GetScrollViewportLength;
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<List<TextLayoutResult>, Boolean>>> GetTextLayoutResult;
    public static final SemanticsActions INSTANCE = new SemanticsActions();
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<AnnotatedString, Boolean>>> InsertTextAtCursor;
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<AnnotatedString, Boolean>>> OnAutofillText;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> OnClick;
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<FillableData, Boolean>>> OnFillData;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> OnImeAction;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> OnLongClick;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> PageDown;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> PageLeft;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> PageRight;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> PageUp;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> PasteText;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> PerformImeAction;
    private static final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> RequestFocus;
    private static final SemanticsPropertyKey<AccessibilityAction<bm3<Float, Float, Boolean>>> ScrollBy;
    private static final SemanticsPropertyKey<bm3<Offset, e02<? super Offset>, Object>> ScrollByOffset;
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<Integer, Boolean>>> ScrollToIndex;
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<Float, Boolean>>> SetProgress;
    private static final SemanticsPropertyKey<AccessibilityAction<dm3<Integer, Integer, Boolean, Boolean>>> SetSelection;
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<AnnotatedString, Boolean>>> SetText;
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<AnnotatedString, Boolean>>> SetTextSubstitution;
    private static final SemanticsPropertyKey<AccessibilityAction<nl3<Boolean, Boolean>>> ShowTextSubstitution;

    static {
        SemanticsPropertiesKt.AnonymousClass1 anonymousClass1 = SemanticsPropertiesKt.AnonymousClass1.INSTANCE;
        GetTextLayoutResult = new SemanticsPropertyKey<>("GetTextLayoutResult", true, anonymousClass1, null, 8, null);
        OnClick = new SemanticsPropertyKey<>("OnClick", true, anonymousClass1, null, 8, null);
        OnLongClick = new SemanticsPropertyKey<>("OnLongClick", true, anonymousClass1, null, 8, null);
        ScrollBy = new SemanticsPropertyKey<>("ScrollBy", true, anonymousClass1, null, 8, null);
        ScrollByOffset = new SemanticsPropertyKey<>("ScrollByOffset", (bm3) null, 2, (jh2) null);
        ScrollToIndex = new SemanticsPropertyKey<>("ScrollToIndex", true, anonymousClass1, null, 8, null);
        OnAutofillText = new SemanticsPropertyKey<>("OnAutofillText", true, anonymousClass1, null, 8, null);
        OnFillData = new SemanticsPropertyKey<>("OnFillData", true, anonymousClass1, null, 8, null);
        SetProgress = new SemanticsPropertyKey<>("SetProgress", true, anonymousClass1, null, 8, null);
        SetSelection = new SemanticsPropertyKey<>("SetSelection", true, anonymousClass1, null, 8, null);
        SetText = new SemanticsPropertyKey<>("SetText", true, anonymousClass1, null, 8, null);
        SetTextSubstitution = new SemanticsPropertyKey<>("SetTextSubstitution", true, anonymousClass1, null, 8, null);
        ShowTextSubstitution = new SemanticsPropertyKey<>("ShowTextSubstitution", true, anonymousClass1, null, 8, null);
        ClearTextSubstitution = new SemanticsPropertyKey<>("ClearTextSubstitution", true, anonymousClass1, null, 8, null);
        InsertTextAtCursor = new SemanticsPropertyKey<>("InsertTextAtCursor", true, anonymousClass1, null, 8, null);
        OnImeAction = new SemanticsPropertyKey<>("PerformImeAction", true, anonymousClass1, null, 8, null);
        PerformImeAction = new SemanticsPropertyKey<>("PerformImeAction", true, anonymousClass1, null, 8, null);
        CopyText = new SemanticsPropertyKey<>("CopyText", true, anonymousClass1, null, 8, null);
        CutText = new SemanticsPropertyKey<>("CutText", true, anonymousClass1, null, 8, null);
        PasteText = new SemanticsPropertyKey<>("PasteText", true, anonymousClass1, null, 8, null);
        Expand = new SemanticsPropertyKey<>("Expand", true, anonymousClass1, null, 8, null);
        Collapse = new SemanticsPropertyKey<>("Collapse", true, anonymousClass1, null, 8, null);
        Dismiss = new SemanticsPropertyKey<>("Dismiss", true, anonymousClass1, null, 8, null);
        RequestFocus = new SemanticsPropertyKey<>("RequestFocus", true, anonymousClass1, null, 8, null);
        CustomActions = new SemanticsPropertyKey<>("CustomActions", true, SemanticsActions$CustomActions$1.INSTANCE, null, 8, null);
        PageUp = new SemanticsPropertyKey<>("PageUp", true, anonymousClass1, null, 8, null);
        PageLeft = new SemanticsPropertyKey<>("PageLeft", true, anonymousClass1, null, 8, null);
        PageDown = new SemanticsPropertyKey<>("PageDown", true, anonymousClass1, null, 8, null);
        PageRight = new SemanticsPropertyKey<>("PageRight", true, anonymousClass1, null, 8, null);
        GetScrollViewportLength = new SemanticsPropertyKey<>("GetScrollViewportLength", true, anonymousClass1, null, 8, null);
        $stable = 8;
    }

    private SemanticsActions() {
    }

    @ul2
    public static /* synthetic */ void getOnAutofillText$annotations() {
    }

    @ul2
    public static /* synthetic */ void getPerformImeAction$annotations() {
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getClearTextSubstitution() {
        return ClearTextSubstitution;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getCollapse() {
        return Collapse;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getCopyText() {
        return CopyText;
    }

    public final SemanticsPropertyKey<List<CustomAccessibilityAction>> getCustomActions() {
        return CustomActions;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getCutText() {
        return CutText;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getDismiss() {
        return Dismiss;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getExpand() {
        return Expand;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<List<Float>, Boolean>>> getGetScrollViewportLength() {
        return GetScrollViewportLength;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<List<TextLayoutResult>, Boolean>>> getGetTextLayoutResult() {
        return GetTextLayoutResult;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<AnnotatedString, Boolean>>> getInsertTextAtCursor() {
        return InsertTextAtCursor;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<AnnotatedString, Boolean>>> getOnAutofillText() {
        return OnAutofillText;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getOnClick() {
        return OnClick;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<FillableData, Boolean>>> getOnFillData() {
        return OnFillData;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getOnImeAction() {
        return OnImeAction;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getOnLongClick() {
        return OnLongClick;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getPageDown() {
        return PageDown;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getPageLeft() {
        return PageLeft;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getPageRight() {
        return PageRight;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getPageUp() {
        return PageUp;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getPasteText() {
        return PasteText;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getPerformImeAction() {
        return PerformImeAction;
    }

    public final SemanticsPropertyKey<AccessibilityAction<ll3<Boolean>>> getRequestFocus() {
        return RequestFocus;
    }

    public final SemanticsPropertyKey<AccessibilityAction<bm3<Float, Float, Boolean>>> getScrollBy() {
        return ScrollBy;
    }

    public final SemanticsPropertyKey<bm3<Offset, e02<? super Offset>, Object>> getScrollByOffset() {
        return ScrollByOffset;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<Integer, Boolean>>> getScrollToIndex() {
        return ScrollToIndex;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<Float, Boolean>>> getSetProgress() {
        return SetProgress;
    }

    public final SemanticsPropertyKey<AccessibilityAction<dm3<Integer, Integer, Boolean, Boolean>>> getSetSelection() {
        return SetSelection;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<AnnotatedString, Boolean>>> getSetText() {
        return SetText;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<AnnotatedString, Boolean>>> getSetTextSubstitution() {
        return SetTextSubstitution;
    }

    public final SemanticsPropertyKey<AccessibilityAction<nl3<Boolean, Boolean>>> getShowTextSubstitution() {
        return ShowTextSubstitution;
    }
}
