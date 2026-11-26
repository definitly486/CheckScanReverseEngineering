package androidx.compose.runtime.tooling;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import defpackage.ru2;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class InspectionTablesKt {
    private static final ProvidableCompositionLocal<Set<CompositionData>> LocalInspectionTables = CompositionLocalKt.staticCompositionLocalOf(new ru2(1));

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set LocalInspectionTables$lambda$0() {
        return null;
    }

    public static final ProvidableCompositionLocal<Set<CompositionData>> getLocalInspectionTables() {
        return LocalInspectionTables;
    }
}
