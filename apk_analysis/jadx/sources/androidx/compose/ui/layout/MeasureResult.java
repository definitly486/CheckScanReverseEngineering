package androidx.compose.ui.layout;

import defpackage.j59;
import defpackage.nl3;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface MeasureResult {
    Map<AlignmentLine, Integer> getAlignmentLines();

    int getHeight();

    default nl3<RulerScope, j59> getRulers() {
        return null;
    }

    int getWidth();

    void placeChildren();
}
