package yads;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public final class vg3 {
    public final Context a;

    public vg3(Context context) {
        this.a = context;
    }

    public final File a() {
        File file = new File(this.a.getCacheDir(), "debug_panel");
        file.mkdir();
        return new File(file, "monetization_ads_debug_panel_report.txt");
    }
}
