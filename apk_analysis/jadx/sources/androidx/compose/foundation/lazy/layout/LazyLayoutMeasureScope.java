package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface LazyLayoutMeasureScope extends MeasureScope {
    List<Measurable> compose(int i);

    @ul2
    /* JADX INFO: renamed from: measure-0kLqBqw, reason: not valid java name */
    List<Placeable> mo2221measure0kLqBqw(int i, long j);
}
