package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;

/* JADX INFO: loaded from: classes2.dex */
public interface SearchBarScrollBehavior {
    NestedScrollConnection getNestedScrollConnection();

    float getScrollOffset();

    float getScrollOffsetLimit();

    Modifier searchBarScrollBehavior(Modifier modifier);

    void setScrollOffset(float f);

    void setScrollOffsetLimit(float f);
}
