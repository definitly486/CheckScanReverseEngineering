package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ValueElementSequence;
import defpackage.j59;
import defpackage.kn1;
import defpackage.m05;
import defpackage.nl3;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsModifierKt {
    private static AtomicInteger lastIdentifier = new AtomicInteger(0);

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addSemanticsPropertiesFrom(InspectorInfo inspectorInfo, SemanticsConfiguration semanticsConfiguration) {
        ValueElementSequence properties = inspectorInfo.getProperties();
        int iB = m05.b(kn1.q(semanticsConfiguration, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object> entry : semanticsConfiguration) {
            linkedHashMap.put(entry.getKey().getName(), entry.getValue());
        }
        properties.set("properties", linkedHashMap);
    }

    public static final Modifier clearAndSetSemantics(Modifier modifier, nl3<? super SemanticsPropertyReceiver, j59> nl3Var) {
        return modifier.then(new ClearAndSetSemanticsElement(nl3Var));
    }

    public static final int generateSemanticsId() {
        return lastIdentifier.addAndGet(1);
    }

    public static final Modifier semantics(Modifier modifier, boolean z, nl3<? super SemanticsPropertyReceiver, j59> nl3Var) {
        return modifier.then(new AppendedSemanticsElement(z, nl3Var));
    }

    public static /* synthetic */ Modifier semantics$default(Modifier modifier, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return semantics(modifier, z, nl3Var);
    }
}
