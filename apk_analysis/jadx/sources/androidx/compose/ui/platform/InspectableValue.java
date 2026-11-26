package androidx.compose.ui.platform;

import defpackage.nx2;
import defpackage.zo7;

/* JADX INFO: loaded from: classes2.dex */
public interface InspectableValue {

    public static final class DefaultImpls {
        @Deprecated
        public static zo7<ValueElement> getInspectableElements(InspectableValue inspectableValue) {
            return InspectableValue.super.getInspectableElements();
        }

        @Deprecated
        public static String getNameFallback(InspectableValue inspectableValue) {
            return InspectableValue.super.getNameFallback();
        }

        @Deprecated
        public static Object getValueOverride(InspectableValue inspectableValue) {
            return InspectableValue.super.getValueOverride();
        }
    }

    default zo7<ValueElement> getInspectableElements() {
        return nx2.a;
    }

    default String getNameFallback() {
        return null;
    }

    default Object getValueOverride() {
        return null;
    }
}
