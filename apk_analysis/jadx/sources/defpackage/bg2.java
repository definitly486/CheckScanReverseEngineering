package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.webkit.internal.AssetHelper;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.chequePage.share.cheque.view.ShareChequeDialog;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class bg2 implements ListenerSet.Event, w08 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bg2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) throws Throwable {
        Bitmap bitmapA;
        Throwable th;
        Exception exc;
        ShareChequeDialog shareChequeDialog = (ShareChequeDialog) this.b;
        hd1 hd1Var = (hd1) this.c;
        ze4<Object>[] ze4VarArr = ShareChequeDialog.g;
        Context context = shareChequeDialog.getContext();
        Float fValueOf = Float.valueOf(hd1Var.i() / 100.0f);
        List listI = u96.i(hd1Var.h().a(), hd1Var.h().b());
        ArrayList arrayList = new ArrayList();
        for (Object obj : listI) {
            String str = (String) obj;
            if (str != null && !ta8.M(str)) {
                arrayList.add(obj);
            }
        }
        StringBuilder sb = new StringBuilder(context.getString(R.string.share_cheque_as_message_title, fValueOf, qn1.a0(arrayList, ", ", null, null, 0, null, 62)));
        List<vg6> listC = hd1Var.c();
        j59 j59Var = null;
        fileOutputStream = null;
        FileOutputStream fileOutputStream = null;
        j59Var = null;
        j59Var = null;
        if (listC != null) {
            int i = 0;
            for (Object obj2 : listC) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                vg6 vg6Var = (vg6) obj2;
                sb.append(shareChequeDialog.getContext().getString(R.string.share_cheque_as_message_item, Integer.valueOf(i2), vg6Var.d(), Float.valueOf(vg6Var.e() / 100.0f), Float.valueOf(vg6Var.g()), Float.valueOf(vg6Var.h() / 100.0f)));
                i = i2;
            }
        }
        String strG = hd1Var.g();
        if (strG != null) {
            if (ta8.M(strG)) {
                strG = null;
            }
            if (strG != null && (bitmapA = fv6.a(200, strG)) != null) {
                Context context2 = shareChequeDialog.getContext();
                context2.getClass();
                File file = new File(ni0.c(context2.getFilesDir().getPath(), "/shareFiles"));
                if (!file.exists()) {
                    file.mkdir();
                }
                pb2 pb2Var = pb2.a;
                Date time = Calendar.getInstance().getTime();
                time.getClass();
                pb2Var.getClass();
                File file2 = new File(file + "/" + pb2.e(time) + "_checkscan_qr.png");
                try {
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                        try {
                            bitmapA.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream2);
                            String string = sb.toString();
                            Context context3 = shareChequeDialog.getContext();
                            context3.getClass();
                            aVar.onSuccess(ex0.b(context3, file2, string));
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                        } catch (Exception e) {
                            exc = e;
                            fileOutputStream = fileOutputStream2;
                            exc.printStackTrace();
                            String string2 = sb.toString();
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.SEND");
                            intent.putExtra("android.intent.extra.TEXT", string2);
                            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
                            aVar.onSuccess(intent);
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream == null) {
                                throw th;
                            }
                            fileOutputStream.close();
                            throw th;
                        }
                    } catch (Exception e2) {
                        exc = e2;
                    }
                    j59Var = j59.a;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
        if (j59Var == null) {
            String string3 = sb.toString();
            Intent intent2 = new Intent();
            intent2.setAction("android.intent.action.SEND");
            intent2.putExtra("android.intent.extra.TEXT", string3);
            intent2.setType(AssetHelper.DEFAULT_MIME_TYPE);
            aVar.onSuccess(intent2);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onAudioTrackInitialized((AnalyticsListener.EventTime) this.b, (AudioSink.AudioTrackConfig) this.c);
    }
}
