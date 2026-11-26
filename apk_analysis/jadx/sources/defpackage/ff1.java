package defpackage;

import android.view.View;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.ts.SeiReader;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.material.bottomsheet.BottomSheetDragHandleView;
import com.my.target.c1;
import com.my.target.o4;
import com.warefly.checkscan.presentation.queue.presenter.QueuePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ff1 implements w08, AccessibilityViewCommand, SimpleBasePlayer.PositionSupplier, OnSuccessListener, mi0, ReorderingBufferQueue.OutputConsumer, c1.a {
    public final /* synthetic */ Object b;

    public /* synthetic */ ff1(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        kf1 kf1Var = (kf1) this.b;
        kf1.a aVarU = kf1Var.u();
        if (aVarU.a().isEmpty()) {
            aVar.onSuccess(new j57(null));
            return;
        }
        int size = aVarU.a().size();
        int iB = aVarU.b();
        if (iB < 0 || iB >= size) {
            aVarU.e(0);
            kf1.w(kf1Var, null, aVarU, 1);
            aVar.onSuccess(new j57(null));
        } else {
            xb0 xb0Var = aVarU.a().get(aVarU.b());
            aVarU.e(aVarU.b() + 1);
            kf1.w(kf1Var, null, aVarU, 1);
            aVar.onSuccess(new j57(xb0Var));
        }
    }

    @Override // androidx.media3.container.ReorderingBufferQueue.OutputConsumer
    public void consume(long j, ParsableByteArray parsableByteArray) {
        ((SeiReader) this.b).lambda$new$0(j, parsableByteArray);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        o4 o4Var = (o4) this.b;
        int i = o4.p;
        o4Var.m = e6aVar;
    }

    @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
    public long get() {
        return ((Player) this.b).getContentBufferedPosition();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((ob5.a) this.b).invoke(obj);
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        return ((BottomSheetDragHandleView) this.b).lambda$onBottomSheetStateChanged$0(view, commandArguments);
    }

    @Override // defpackage.mi0
    public boolean test(Object obj, Object obj2) {
        return QueuePresenter.onFirstViewAttach$lambda$0((QueuePresenter.b) this.b, obj, obj2);
    }
}
