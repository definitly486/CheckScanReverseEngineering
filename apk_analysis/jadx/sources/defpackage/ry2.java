package defpackage;

import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.ui.geometry.Offset;
import androidx.paging.PagedList;
import com.posthog.PostHogEvent;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ry2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ry2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                List<PostHogEvent> list = (List) obj;
                list.getClass();
                ((db6) obj2).a(list);
                return j59.a;
            case 1:
                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10$lambda$9((ll3) obj2, (Throwable) obj);
            case 2:
                return Boolean.valueOf(PagedList.removeWeakLoadStateListener$lambda$0((bm3) obj2, (WeakReference) obj));
            default:
                return ScrollingLogic.performScrollForOverscroll$lambda$0((ScrollingLogic) obj2, (Offset) obj);
        }
    }
}
