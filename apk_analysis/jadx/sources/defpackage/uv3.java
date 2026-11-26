package defpackage;

import com.warefly.checkscan.presentation.addScreenshots.bottomSheet.HelpLoadScreenshotsView$$State;
import com.warefly.checkscan.presentation.tasks.main.view.TasksView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class uv3 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ uv3(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new HelpLoadScreenshotsView$$State();
            default:
                return new TasksView$$State();
        }
    }
}
