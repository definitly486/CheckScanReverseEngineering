package defpackage;

import androidx.camera.core.impl.DeferrableSurface;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.exoplayer.MetadataRetrieverInternal;
import com.google.android.gms.tasks.OnSuccessListener;
import yads.bq2;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kk2 implements CallbackToFutureAdapter.Resolver, OnSuccessListener, MetadataRetrieverInternal.RetrievalTask.OnFailureListener, DoubleFunction, tt3 {
    public final /* synthetic */ Object b;

    public /* synthetic */ kk2(Object obj) {
        this.b = obj;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((DeferrableSurface) this.b).lambda$new$0(completer);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((bq2) this.b).a((iw4) obj);
    }

    @Override // androidx.media3.exoplayer.MetadataRetrieverInternal.RetrievalTask.OnFailureListener
    public void onFailure(Exception exc) {
        ((MetadataRetrieverInternal) this.b).lambda$startPreparation$2(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((pu2) this.b).invoke(obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.Companion.generateOetf$lambda$3((TransferParameters) this.b, d);
    }
}
