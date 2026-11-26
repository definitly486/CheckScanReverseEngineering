package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.StringHelpersKt;
import defpackage.aa4;
import defpackage.nm7;
import defpackage.om7;
import defpackage.pm7;
import defpackage.qm7;
import defpackage.rm7;

/* JADX INFO: loaded from: classes.dex */
public interface SelectionAdjustment {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final SelectionAdjustment None = new nm7();
        private static final SelectionAdjustment Character = new om7();
        private static final SelectionAdjustment Word = new pm7();
        private static final SelectionAdjustment Paragraph = new qm7();
        private static final SelectionAdjustment CharacterWithWordAccelerate = new rm7();

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Selection Character$lambda$0(SelectionLayout selectionLayout) {
            return SelectionAdjustmentKt.ensureAtLeastOneChar(None.adjust(selectionLayout), selectionLayout);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Selection CharacterWithWordAccelerate$lambda$0(SelectionLayout selectionLayout) {
            Selection.AnchorInfo end;
            Selection.AnchorInfo anchorInfoUpdateSelectionBoundary;
            Selection.AnchorInfo start;
            Selection.AnchorInfo end2;
            Selection previousSelection = selectionLayout.getPreviousSelection();
            if (previousSelection == null) {
                return Word.adjust(selectionLayout);
            }
            if (selectionLayout.isStartHandle()) {
                end = previousSelection.getStart();
                anchorInfoUpdateSelectionBoundary = SelectionAdjustmentKt.updateSelectionBoundary(selectionLayout, selectionLayout.getStartInfo(), end);
                end2 = previousSelection.getEnd();
                start = anchorInfoUpdateSelectionBoundary;
            } else {
                end = previousSelection.getEnd();
                anchorInfoUpdateSelectionBoundary = SelectionAdjustmentKt.updateSelectionBoundary(selectionLayout, selectionLayout.getEndInfo(), end);
                start = previousSelection.getStart();
                end2 = anchorInfoUpdateSelectionBoundary;
            }
            if (aa4.e(anchorInfoUpdateSelectionBoundary, end)) {
                return previousSelection;
            }
            return SelectionAdjustmentKt.ensureAtLeastOneChar(new Selection(start, end2, selectionLayout.getCrossStatus() == CrossStatus.CROSSED || (selectionLayout.getCrossStatus() == CrossStatus.COLLAPSED && start.getOffset() > end2.getOffset())), selectionLayout);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Selection None$lambda$0(SelectionLayout selectionLayout) {
            return new Selection(selectionLayout.getStartInfo().anchorForOffset(selectionLayout.getStartInfo().getRawStartHandleOffset()), selectionLayout.getEndInfo().anchorForOffset(selectionLayout.getEndInfo().getRawEndHandleOffset()), selectionLayout.getCrossStatus() == CrossStatus.CROSSED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Selection Paragraph$lambda$0(SelectionLayout selectionLayout) {
            return SelectionAdjustmentKt.adjustToBoundaries(selectionLayout, new BoundaryFunction() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Paragraph$1$1
                @Override // androidx.compose.foundation.text.selection.BoundaryFunction
                /* JADX INFO: renamed from: getBoundary-fzxv0v0 */
                public final long mo2964getBoundaryfzxv0v0(SelectableInfo selectableInfo, int i) {
                    return StringHelpersKt.getParagraphBoundary(selectableInfo.getInputText(), i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Selection Word$lambda$0(SelectionLayout selectionLayout) {
            return SelectionAdjustmentKt.adjustToBoundaries(selectionLayout, new BoundaryFunction() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Word$1$1
                @Override // androidx.compose.foundation.text.selection.BoundaryFunction
                /* JADX INFO: renamed from: getBoundary-fzxv0v0 */
                public final long mo2964getBoundaryfzxv0v0(SelectableInfo selectableInfo, int i) {
                    return selectableInfo.getTextLayoutResult().m8463getWordBoundaryjx7JFs(i);
                }
            });
        }

        public final SelectionAdjustment getCharacter() {
            return Character;
        }

        public final SelectionAdjustment getCharacterWithWordAccelerate() {
            return CharacterWithWordAccelerate;
        }

        public final SelectionAdjustment getNone() {
            return None;
        }

        public final SelectionAdjustment getParagraph() {
            return Paragraph;
        }

        public final SelectionAdjustment getWord() {
            return Word;
        }
    }

    Selection adjust(SelectionLayout selectionLayout);
}
