package androidx.compose.ui.layout;

import androidx.compose.ui.unit.Density;

/* JADX INFO: loaded from: classes2.dex */
@MeasureScopeMarker
public interface RulerScope extends Density {
    LayoutCoordinates getCoordinates();

    void provides(Ruler ruler, float f);

    void providesRelative(VerticalRuler verticalRuler, float f);
}
