package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.google.gson.Gson;
import com.warefly.checkscan.presentation.chequePage.share.cheque.view.ShareChequeDialog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class w34 implements xl3, w08 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ w34(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((InAppMessageStreamManager) this.b).lambda$createFirebaseInAppMessageStream$12((String) this.c, (m21) obj);
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        ts7 ts7Var;
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
        String str = file + "/" + pb2.e(time) + "_receipt_share.json";
        File file2 = new File(str);
        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(new FileOutputStream(str), "UTF-8"));
        Gson gson = new Gson();
        hd1Var.getClass();
        List<vg6> listC = hd1Var.c();
        if (listC != null) {
            String strG = pb2.g(hd1Var.f());
            String strA = hd1Var.h().a();
            String str2 = strA == null ? "-" : strA;
            String strB = hd1Var.h().b();
            String str3 = ta8.M(strB) ? "-" : strB;
            float fI = hd1Var.i() / 100.0f;
            List<vg6> list = listC;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            for (vg6 vg6Var : list) {
                String strB2 = vg6Var.b();
                if (strB2 == null) {
                    strB2 = "";
                }
                arrayList.add(new us7(strB2, vg6Var.d(), vg6Var.g(), vg6Var.e() / 100.0f, vg6Var.h() / 100.0f));
            }
            ts7Var = new ts7(strG, str2, str3, fI, arrayList);
        } else {
            ts7Var = null;
        }
        printWriter.append((CharSequence) gson.j(ts7Var));
        printWriter.close();
        Context context2 = shareChequeDialog.getContext();
        context2.getClass();
        Intent intent = new Intent();
        intent.setFlags(1);
        intent.setAction("android.intent.action.SEND");
        Uri uriForFile = FileProvider.getUriForFile(context2, "com.warefly.checkscan.fileprovider.share", file2);
        uriForFile.getClass();
        intent.putExtra("android.intent.extra.STREAM", uriForFile);
        intent.setType("text/json");
        aVar.onSuccess(intent);
    }
}
