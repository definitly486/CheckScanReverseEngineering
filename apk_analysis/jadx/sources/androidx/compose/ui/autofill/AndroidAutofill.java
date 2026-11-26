package androidx.compose.ui.autofill;

import android.view.View;
import android.view.autofill.AutofillId;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.compose.ui.platform.coreshims.ViewCompatShims;
import defpackage.ag;
import defpackage.ah;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidAutofill implements Autofill {
    public static final int $stable = 8;
    private final android.view.autofill.AutofillManager autofillManager;
    private final AutofillTree autofillTree;
    private AutofillId rootAutofillId;
    private final View view;

    public AndroidAutofill(View view, AutofillTree autofillTree) {
        this.view = view;
        this.autofillTree = autofillTree;
        android.view.autofill.AutofillManager autofillManager = (android.view.autofill.AutofillManager) view.getContext().getSystemService(android.view.autofill.AutofillManager.class);
        if (autofillManager == null) {
            ah.f("Autofill service could not be located.");
            throw null;
        }
        this.autofillManager = autofillManager;
        view.setImportantForAutofill(1);
        AutofillIdCompat autofillId = ViewCompatShims.getAutofillId(view);
        AutofillId autofillId2 = autofillId != null ? autofillId.toAutofillId() : null;
        if (autofillId2 == null) {
            throw ag.e("Required value was null.");
        }
        this.rootAutofillId = autofillId2;
    }

    @Override // androidx.compose.ui.autofill.Autofill
    public void cancelAutofillForNode(AutofillNode autofillNode) {
        this.autofillManager.notifyViewExited(this.view, autofillNode.getId());
    }

    public final android.view.autofill.AutofillManager getAutofillManager() {
        return this.autofillManager;
    }

    public final AutofillTree getAutofillTree() {
        return this.autofillTree;
    }

    public final AutofillId getRootAutofillId() {
        return this.rootAutofillId;
    }

    public final View getView() {
        return this.view;
    }

    @Override // androidx.compose.ui.autofill.Autofill
    public void requestAutofillForNode(AutofillNode autofillNode) {
        Rect boundingBox = autofillNode.getBoundingBox();
        if (boundingBox != null) {
            this.autofillManager.notifyViewEntered(this.view, autofillNode.getId(), new android.graphics.Rect(Math.round(boundingBox.getLeft()), Math.round(boundingBox.getTop()), Math.round(boundingBox.getRight()), Math.round(boundingBox.getBottom())));
        } else {
            ah.f("requestAutofill called before onChildPositioned()");
        }
    }

    public final void setRootAutofillId(AutofillId autofillId) {
        this.rootAutofillId = autofillId;
    }
}
