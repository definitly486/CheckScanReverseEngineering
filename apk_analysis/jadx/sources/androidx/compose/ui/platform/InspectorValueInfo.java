package androidx.compose.ui.platform;

import defpackage.j59;
import defpackage.nl3;
import defpackage.zo7;

/* JADX INFO: loaded from: classes2.dex */
public abstract class InspectorValueInfo implements InspectableValue {
    public static final int $stable = 8;
    private InspectorInfo _values;
    private final nl3<InspectorInfo, j59> info;

    /* JADX WARN: Multi-variable type inference failed */
    public InspectorValueInfo(nl3<? super InspectorInfo, j59> nl3Var) {
        this.info = nl3Var;
    }

    private final InspectorInfo getValues() {
        InspectorInfo inspectorInfo = this._values;
        if (inspectorInfo == null) {
            inspectorInfo = new InspectorInfo();
            this.info.invoke(inspectorInfo);
        }
        this._values = inspectorInfo;
        return inspectorInfo;
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public zo7<ValueElement> getInspectableElements() {
        return getValues().getProperties();
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public String getNameFallback() {
        return getValues().getName();
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public Object getValueOverride() {
        return getValues().getValue();
    }
}
