package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsUtils_androidKt {
    public static final ScrollObservationScope findById(List<ScrollObservationScope> list, int i) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (list.get(i2).getSemanticsNodeId() == i) {
                return list.get(i2);
            }
        }
        return null;
    }

    public static final Float getScrollViewportLength(SemanticsConfiguration semanticsConfiguration) {
        nl3 nl3Var;
        ArrayList arrayList = new ArrayList();
        AccessibilityAction accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsConfiguration, SemanticsActions.INSTANCE.getGetScrollViewportLength());
        if (accessibilityAction == null || (nl3Var = (nl3) accessibilityAction.getAction()) == null || !((Boolean) nl3Var.invoke(arrayList)).booleanValue()) {
            return null;
        }
        return (Float) arrayList.get(0);
    }

    public static final TextLayoutResult getTextLayoutResult(SemanticsConfiguration semanticsConfiguration) {
        nl3 nl3Var;
        ArrayList arrayList = new ArrayList();
        AccessibilityAction accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsConfiguration, SemanticsActions.INSTANCE.getGetTextLayoutResult());
        if (accessibilityAction == null || (nl3Var = (nl3) accessibilityAction.getAction()) == null || !((Boolean) nl3Var.invoke(arrayList)).booleanValue()) {
            return null;
        }
        return (TextLayoutResult) arrayList.get(0);
    }

    public static final View semanticsIdToView(AndroidViewsHandler androidViewsHandler, int i) {
        Object next;
        Iterator<T> it = androidViewsHandler.getLayoutNodeToHolder().entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((LayoutNode) ((Map.Entry) next).getKey()).getSemanticsId() != i);
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return (AndroidViewHolder) entry.getValue();
        }
        return null;
    }

    /* JADX INFO: renamed from: toLegacyClassName-V4PA4sw, reason: not valid java name */
    public static final String m8237toLegacyClassNameV4PA4sw(int i) {
        Role.Companion companion = Role.Companion;
        if (Role.m8257equalsimpl0(i, companion.m8261getButtono7Vup1c())) {
            return "android.widget.Button";
        }
        if (Role.m8257equalsimpl0(i, companion.m8263getCheckboxo7Vup1c())) {
            return "android.widget.CheckBox";
        }
        if (Role.m8257equalsimpl0(i, companion.m8266getRadioButtono7Vup1c())) {
            return "android.widget.RadioButton";
        }
        if (Role.m8257equalsimpl0(i, companion.m8265getImageo7Vup1c())) {
            return "android.widget.ImageView";
        }
        if (Role.m8257equalsimpl0(i, companion.m8264getDropdownListo7Vup1c())) {
            return "android.widget.Spinner";
        }
        if (Role.m8257equalsimpl0(i, companion.m8269getValuePickero7Vup1c())) {
            return "android.widget.NumberPicker";
        }
        return null;
    }
}
