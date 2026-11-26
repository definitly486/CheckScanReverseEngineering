package defpackage;

import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.MetadataRetrieverInternal;
import androidx.media3.exoplayer.source.TrackGroupArray;
import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.NewOnlineShopPresenter;
import yads.iw4;
import yads.ni0;
import yads.tt3;
import yads.yn0;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ea implements w08, MetadataRetrieverInternal.RetrievalTask.OnPreparedListener, em3, DoubleFunction, tt3, ni0 {
    public final /* synthetic */ Object b;

    public /* synthetic */ ea(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.em3
    public Object a(Object obj, Object obj2, Object obj3) {
        return NewOnlineShopPresenter.loadAll$lambda$0((dm3) this.b, obj, obj2, obj3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        a57 a57Var = (a57) this.b;
        int i = a57Var.a.e;
        if (i != 200) {
            if (i == 404) {
                aVar.onSuccess(bh6.d.a);
                return;
            } else if (i != 422) {
                aVar.onSuccess(bh6.b.a);
                return;
            } else {
                aVar.onSuccess(bh6.e.a);
                return;
            }
        }
        ah6 ah6Var = (ah6) a57Var.b;
        j59 j59Var = null;
        if (ah6Var != null) {
            if (ah6Var.d()) {
                Double dC = ah6Var.c();
                if (dC != null) {
                    double dDoubleValue = dC.doubleValue();
                    String strB = ah6Var.b();
                    if (strB != null) {
                        aVar.onSuccess(new bh6.a(dDoubleValue + " " + strB, ah6Var.a()));
                        j59Var = j59.a;
                    }
                }
                if (j59Var == null) {
                    aVar.onSuccess(bh6.b.a);
                }
            } else {
                aVar.onSuccess(new bh6.c(ah6Var.a()));
            }
            j59Var = j59.a;
        }
        if (j59Var == null) {
            aVar.onSuccess(bh6.b.a);
        }
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).a((yn0) this.b);
    }

    @Override // androidx.media3.exoplayer.MetadataRetrieverInternal.RetrievalTask.OnPreparedListener
    public void onPrepared(TrackGroupArray trackGroupArray, Timeline timeline) {
        ((MetadataRetrieverInternal) this.b).lambda$startPreparation$1(trackGroupArray, timeline);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.Companion.generateOetf$lambda$2((TransferParameters) this.b, d);
    }
}
