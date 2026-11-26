package androidx.compose.ui.platform;

import androidx.compose.ui.Modifier;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class InspectableValueKt {
    private static final nl3<InspectorInfo, j59> NoInspectorInfo = InspectableValueKt$NoInspectorInfo$1.INSTANCE;
    private static boolean isDebugInspectorInfoEnabled;

    public static final nl3<InspectorInfo, j59> debugInspectorInfo(nl3<? super InspectorInfo, j59> nl3Var) {
        return isDebugInspectorInfoEnabled() ? new AnonymousClass1(nl3Var) : getNoInspectorInfo();
    }

    public static final nl3<InspectorInfo, j59> getNoInspectorInfo() {
        return NoInspectorInfo;
    }

    @ul2
    public static final Modifier inspectable(Modifier modifier, nl3<? super InspectorInfo, j59> nl3Var, nl3<? super Modifier, ? extends Modifier> nl3Var2) {
        return inspectableWrapper(modifier, nl3Var, nl3Var2.invoke(Modifier.Companion));
    }

    public static final Modifier inspectableWrapper(Modifier modifier, nl3<? super InspectorInfo, j59> nl3Var, Modifier modifier2) {
        InspectableModifier inspectableModifier = new InspectableModifier(nl3Var);
        return modifier.then(inspectableModifier).then(modifier2).then(inspectableModifier.getEnd());
    }

    public static final boolean isDebugInspectorInfoEnabled() {
        return isDebugInspectorInfoEnabled;
    }

    public static final void setDebugInspectorInfoEnabled(boolean z) {
        isDebugInspectorInfoEnabled = z;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.InspectableValueKt$debugInspectorInfo$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<InspectorInfo, j59> {
        final /* synthetic */ nl3<InspectorInfo, j59> $definitions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super InspectorInfo, j59> nl3Var) {
            super(1);
            this.$definitions = nl3Var;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
            invoke2(inspectorInfo);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(InspectorInfo inspectorInfo) {
            this.$definitions.invoke(inspectorInfo);
        }
    }
}
