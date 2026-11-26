package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;

/* JADX INFO: loaded from: classes2.dex */
public interface NavigationDrawerItemColors {
    State<Color> badgeColor(boolean z, Composer composer, int i);

    State<Color> containerColor(boolean z, Composer composer, int i);

    State<Color> iconColor(boolean z, Composer composer, int i);

    State<Color> textColor(boolean z, Composer composer, int i);
}
