package androidx.compose.ui.layout;

import android.graphics.Rect;
import androidx.collection.MutableObjectList;
import androidx.collection.ScatterMap;
import androidx.compose.runtime.MutableState;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface WindowInsetsRulerProvider {
    MutableObjectList<MutableState<Rect>> getCutoutRects();

    List<RectRulers> getCutoutRulers();

    InsetsListener getInsetsListener();

    ScatterMap<Object, WindowWindowInsetsAnimationValues> getInsetsValues();
}
