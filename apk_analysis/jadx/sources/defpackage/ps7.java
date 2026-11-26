package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.chequePage.share.cheque.view.ShareChequeDialog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import yads.su5;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ps7 implements w08, su5 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ps7(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        ShareChequeDialog shareChequeDialog = (ShareChequeDialog) this.b;
        hd1 hd1Var = (hd1) this.c;
        ze4<Object>[] ze4VarArr = ShareChequeDialog.g;
        Context context = shareChequeDialog.getContext();
        context.getClass();
        File file = new File(ni0.c(context.getFilesDir().getPath(), "/shareFiles"));
        if (!file.exists()) {
            file.mkdir();
        }
        pb2 pb2Var = pb2.a;
        Date time = Calendar.getInstance().getTime();
        time.getClass();
        pb2Var.getClass();
        String str = file + "/" + pb2.e(time) + "_receipt_share.csv";
        File file2 = new File(str);
        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(new FileOutputStream(str), "UTF-8"));
        printWriter.append((char) 65279);
        PrintWriter printWriterAppend = printWriter.append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_date)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_shop)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_address)).append((CharSequence) "\n").append((CharSequence) pb2.g(hd1Var.f())).append((CharSequence) ";");
        String strA = hd1Var.h().a();
        if (strA == null) {
            strA = "";
        }
        PrintWriter printWriterAppend2 = printWriterAppend.append((CharSequence) ShareChequeDialog.g(strA)).append((CharSequence) ";");
        String strB = hd1Var.h().b();
        if (ta8.M(strB)) {
            strB = "-";
        }
        printWriterAppend2.append((CharSequence) ShareChequeDialog.g(strB)).append((CharSequence) "\n").append((CharSequence) "\n");
        printWriter.append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_title)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_category)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_quantity)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_price)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_sum)).append((CharSequence) "\n");
        List<vg6> listC = hd1Var.c();
        if (listC != null) {
            for (vg6 vg6Var : listC) {
                String strD = vg6Var.d();
                if (strD == null) {
                    strD = "";
                }
                PrintWriter printWriterAppend3 = printWriter.append((CharSequence) ShareChequeDialog.g(strD)).append((CharSequence) ";");
                String strB2 = vg6Var.b();
                if (strB2 == null) {
                    strB2 = shareChequeDialog.getContext().getString(R.string.unknown_category_placeholder);
                    strB2.getClass();
                }
                printWriterAppend3.append((CharSequence) ShareChequeDialog.g(strB2)).append((CharSequence) ";").append((CharSequence) ("\"" + String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(vg6Var.g())}, 1)) + "\"")).append((CharSequence) ";").append((CharSequence) ("\"" + String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(((float) vg6Var.e()) / 100.0f)}, 1)) + "\"")).append((CharSequence) ";").append((CharSequence) ("\"" + String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(((float) vg6Var.h()) / 100.0f)}, 1)) + "\"")).append((CharSequence) "\n");
            }
        }
        printWriter.close();
        Context context2 = shareChequeDialog.getContext();
        context2.getClass();
        Intent intent = new Intent();
        intent.setFlags(1);
        intent.setAction("android.intent.action.SEND");
        Uri uriForFile = FileProvider.getUriForFile(context2, "com.warefly.checkscan.fileprovider.share", file2);
        uriForFile.getClass();
        intent.putExtra("android.intent.extra.STREAM", uriForFile);
        intent.setType("text/csv");
        aVar.onSuccess(intent);
    }
}
