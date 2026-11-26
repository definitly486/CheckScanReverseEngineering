package androidx.compose.ui.autofill;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.nl3;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class AutofillNode {
    public static final int $stable = 8;
    private final List<AutofillType> autofillTypes;
    private Rect boundingBox;
    private final int id;
    private final nl3<String, j59> onFill;

    /* JADX WARN: Multi-variable type inference failed */
    public AutofillNode(List<? extends AutofillType> list, Rect rect, nl3<? super String, j59> nl3Var) {
        this.autofillTypes = list;
        this.boundingBox = rect;
        this.onFill = nl3Var;
        this.id = SemanticsModifierKt.generateSemanticsId();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutofillNode)) {
            return false;
        }
        AutofillNode autofillNode = (AutofillNode) obj;
        return aa4.e(this.autofillTypes, autofillNode.autofillTypes) && aa4.e(this.boundingBox, autofillNode.boundingBox) && this.onFill == autofillNode.onFill;
    }

    public final List<AutofillType> getAutofillTypes() {
        return this.autofillTypes;
    }

    public final Rect getBoundingBox() {
        return this.boundingBox;
    }

    public final int getId() {
        return this.id;
    }

    public final nl3<String, j59> getOnFill() {
        return this.onFill;
    }

    public int hashCode() {
        int iHashCode = this.autofillTypes.hashCode() * 31;
        Rect rect = this.boundingBox;
        int iHashCode2 = (iHashCode + (rect != null ? rect.hashCode() : 0)) * 31;
        nl3<String, j59> nl3Var = this.onFill;
        return iHashCode2 + (nl3Var != null ? nl3Var.hashCode() : 0);
    }

    public final void setBoundingBox(Rect rect) {
        this.boundingBox = rect;
    }

    public /* synthetic */ AutofillNode(List list, Rect rect, nl3 nl3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? kx2.b : list, (i & 2) != 0 ? null : rect, nl3Var);
    }
}
