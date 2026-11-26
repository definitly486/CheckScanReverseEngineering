package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.foundation.text.selection.SelectionContainerKt;
import androidx.compose.material3.SearchBarDefaults;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.List;
import yads.ty0;
import yads.u66;
import yads.vq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yt0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ yt0(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return BringIntoViewRequestPriorityQueue.enqueue$lambda$1((BringIntoViewRequestPriorityQueue) obj3, (ContentInViewNode.Request) obj2, (Throwable) obj);
            case 1:
                List<String> list = (List) obj2;
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare((String) obj3);
                try {
                    int i2 = 1;
                    for (String str : list) {
                        if (str == null) {
                            sQLiteStatementPrepare.mo9364bindNull(i2);
                        } else {
                            sQLiteStatementPrepare.mo9365bindText(i2, str);
                        }
                        i2++;
                    }
                    sQLiteStatementPrepare.step();
                    return j59.a;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 2:
                return SearchBarDefaults.InputField$lambda$42$lambda$41((nl3) obj3, (String) obj2, (KeyboardActionScope) obj);
            case 3:
                return SelectionContainerKt.SelectionContainer$lambda$7$0((y22) obj3, (Clipboard) obj2, (AnnotatedString) obj);
            case 4:
                return SuspendAnimationKt.animate$lambda$1((bm3) obj3, (TwoWayConverter) obj2, (AnimationScope) obj);
            default:
                return ty0.a((vq0) obj3, (nl3) obj2, (u66) obj);
        }
    }
}
