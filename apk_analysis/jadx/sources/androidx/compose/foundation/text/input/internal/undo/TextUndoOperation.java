package androidx.compose.foundation.text.input.internal.undo;

import androidx.compose.foundation.text.UndoManager_jvmAndAndroidKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.fg;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextUndoOperation {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final Saver<TextUndoOperation, Object> Saver = new Saver<TextUndoOperation, Object>() { // from class: androidx.compose.foundation.text.input.internal.undo.TextUndoOperation$Companion$Saver$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.compose.runtime.saveable.Saver
        public TextUndoOperation restore(Object obj) {
            obj.getClass();
            List list = (List) obj;
            Object obj2 = list.get(0);
            obj2.getClass();
            int iIntValue = ((Integer) obj2).intValue();
            Object obj3 = list.get(1);
            obj3.getClass();
            String str = (String) obj3;
            Object obj4 = list.get(2);
            obj4.getClass();
            String str2 = (String) obj4;
            Object obj5 = list.get(3);
            obj5.getClass();
            int iIntValue2 = ((Integer) obj5).intValue();
            Object obj6 = list.get(4);
            obj6.getClass();
            long jTextRange = TextRangeKt.TextRange(iIntValue2, ((Integer) obj6).intValue());
            Object obj7 = list.get(5);
            obj7.getClass();
            int iIntValue3 = ((Integer) obj7).intValue();
            Object obj8 = list.get(6);
            obj8.getClass();
            long jTextRange2 = TextRangeKt.TextRange(iIntValue3, ((Integer) obj8).intValue());
            Object obj9 = list.get(7);
            obj9.getClass();
            return new TextUndoOperation(iIntValue, str, str2, jTextRange, jTextRange2, ((Long) obj9).longValue(), false, 64, null);
        }

        @Override // androidx.compose.runtime.saveable.Saver
        public Object save(SaverScope saverScope, TextUndoOperation textUndoOperation) {
            return u96.i(Integer.valueOf(textUndoOperation.getIndex()), textUndoOperation.getPreText(), textUndoOperation.getPostText(), Integer.valueOf(TextRange.m8491getStartimpl(textUndoOperation.m2892getPreSelectiond9O1mEE())), Integer.valueOf(TextRange.m8486getEndimpl(textUndoOperation.m2892getPreSelectiond9O1mEE())), Integer.valueOf(TextRange.m8491getStartimpl(textUndoOperation.m2891getPostSelectiond9O1mEE())), Integer.valueOf(TextRange.m8486getEndimpl(textUndoOperation.m2891getPostSelectiond9O1mEE())), Long.valueOf(textUndoOperation.getTimeInMillis()));
        }
    };
    private final boolean canMerge;
    private final int index;
    private final long postSelection;
    private final String postText;
    private final long preSelection;
    private final String preText;
    private final TextEditType textEditType;
    private final long timeInMillis;

    private TextUndoOperation(int i, String str, String str2, long j, long j2, long j3, boolean z) {
        this.index = i;
        this.preText = str;
        this.postText = str2;
        this.preSelection = j;
        this.postSelection = j2;
        this.timeInMillis = j3;
        this.canMerge = z;
        if (str.length() == 0 && str2.length() == 0) {
            fg.c("Either pre or post text must not be empty");
            throw null;
        }
        this.textEditType = (str.length() != 0 || str2.length() <= 0) ? (str.length() <= 0 || str2.length() != 0) ? TextEditType.Replace : TextEditType.Delete : TextEditType.Insert;
    }

    public final boolean getCanMerge() {
        return this.canMerge;
    }

    public final TextDeleteType getDeletionType() {
        if (this.textEditType == TextEditType.Delete && TextRange.m8485getCollapsedimpl(this.postSelection)) {
            boolean zM8485getCollapsedimpl = TextRange.m8485getCollapsedimpl(this.preSelection);
            long j = this.preSelection;
            if (zM8485getCollapsedimpl) {
                return TextRange.m8491getStartimpl(j) > TextRange.m8491getStartimpl(this.postSelection) ? TextDeleteType.Start : TextDeleteType.End;
            }
            return (TextRange.m8491getStartimpl(j) == TextRange.m8491getStartimpl(this.postSelection) && TextRange.m8491getStartimpl(this.preSelection) == this.index) ? TextDeleteType.Inner : TextDeleteType.NotByUser;
        }
        return TextDeleteType.NotByUser;
    }

    public final int getIndex() {
        return this.index;
    }

    /* JADX INFO: renamed from: getPostSelection-d9O1mEE, reason: not valid java name */
    public final long m2891getPostSelectiond9O1mEE() {
        return this.postSelection;
    }

    public final String getPostText() {
        return this.postText;
    }

    /* JADX INFO: renamed from: getPreSelection-d9O1mEE, reason: not valid java name */
    public final long m2892getPreSelectiond9O1mEE() {
        return this.preSelection;
    }

    public final String getPreText() {
        return this.preText;
    }

    public final TextEditType getTextEditType() {
        return this.textEditType;
    }

    public final long getTimeInMillis() {
        return this.timeInMillis;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<TextUndoOperation, Object> getSaver() {
            return TextUndoOperation.Saver;
        }

        private Companion() {
        }
    }

    public /* synthetic */ TextUndoOperation(int i, String str, String str2, long j, long j2, long j3, boolean z, jh2 jh2Var) {
        this(i, str, str2, j, j2, j3, z);
    }

    public /* synthetic */ TextUndoOperation(int i, String str, String str2, long j, long j2, long j3, boolean z, int i2, jh2 jh2Var) {
        this(i, str, str2, j, j2, (i2 & 32) != 0 ? UndoManager_jvmAndAndroidKt.timeNowMillis() : j3, (i2 & 64) != 0 ? true : z, null);
    }
}
