package androidx.activity;

import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.core.view.insets.ColorProtection;
import androidx.core.view.insets.Protection;
import androidx.core.view.insets.ProtectionLayout;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class EdgeToEdgeApi35 extends EdgeToEdgeApi30 {
    @Override // androidx.activity.EdgeToEdgeApi29, androidx.activity.EdgeToEdgeApi26, androidx.activity.EdgeToEdgeImpl
    public void setUp(SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, Window window, View view, boolean z, boolean z2) {
        systemBarStyle.getClass();
        systemBarStyle2.getClass();
        window.getClass();
        view.getClass();
        WindowCompat.setDecorFitsSystemWindows(window, false);
        WindowManager.LayoutParams attributes = window.getAttributes();
        if ((attributes.flags & 256) != 0 || attributes.width != -2 || attributes.height != -2) {
            window.setStatusBarColor(0);
            window.setNavigationBarColor(0);
            int scrimWithEnforcedContrast$activity = systemBarStyle.getScrimWithEnforcedContrast$activity(z);
            int scrimWithEnforcedContrast$activity2 = systemBarStyle2.getScrimWithEnforcedContrast$activity(z2);
            ViewGroup viewGroup = (ViewGroup) view;
            viewGroup.addView(new ProtectionLayout(viewGroup.getContext(), (List<Protection>) u96.i(new ColorProtection(2, scrimWithEnforcedContrast$activity), new ColorProtection(1, scrimWithEnforcedContrast$activity2), new ColorProtection(4, scrimWithEnforcedContrast$activity2), new ColorProtection(8, scrimWithEnforcedContrast$activity2))));
        }
        window.setNavigationBarContrastEnforced(systemBarStyle2.getNightMode$activity() == 0);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, view);
        windowInsetsControllerCompat.setAppearanceLightStatusBars(!z);
        windowInsetsControllerCompat.setAppearanceLightNavigationBars(!z2);
    }
}
