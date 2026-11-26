package com.my.target;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import com.my.target.k;
import defpackage.ex0;
import defpackage.gv9;
import defpackage.l3a;
import defpackage.r95;
import defpackage.s95;
import defpackage.vw9;
import defpackage.y14;
import defpackage.y7a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class v implements r95 {
    public final q a;
    public vw9 b;
    public gv9 c;
    public WeakReference d;

    public v(q qVar, ex0 ex0Var) {
        this.a = qVar;
    }

    @Override // defpackage.r95
    public final void a(s95 s95Var) {
        q.a aVar;
        gv9 gv9Var;
        m1.a aVar2;
        if (s95Var.d == 1) {
            b();
            return;
        }
        WeakReference weakReference = this.d;
        if (weakReference == null) {
            y14.r(null, "AdChoicesOptionsController: there is no context, can't process action click");
            return;
        }
        Context context = (Context) weakReference.get();
        if (context == null) {
            y14.r(null, "AdChoicesOptionsController: there is no context, can't process action click");
            return;
        }
        q qVar = this.a;
        List listA = qVar.d;
        if (listA == null) {
            listA = q.a(qVar.c);
            qVar.d = listA;
        }
        if (listA.isEmpty()) {
            y14.r(null, "AdChoicesOptionsController: there are no menuActions, can't process action click");
            return;
        }
        Iterator it = qVar.c.iterator();
        do {
            if (!it.hasNext()) {
                aVar = null;
                break;
            }
            aVar = (q.a) it.next();
        } while (aVar.e != s95Var);
        if (aVar == null) {
            y14.r(null, "AdChoicesOptionsController: can't obtain option by menu action.");
            return;
        }
        String str = aVar.a;
        if (!TextUtils.isEmpty(str) && (aVar2 = m1.a) != null && !TextUtils.isEmpty(str)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            z2 z2Var = aVar2.a;
            y7a y7aVar = new y7a(aVar2, str, jCurrentTimeMillis);
            Handler handler = z2Var.e;
            Objects.requireNonNull(handler);
            handler.post(y7aVar);
        }
        if (aVar.e.b.equals("copy")) {
            String str2 = aVar.c;
            if (str2 != null) {
                ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("copied id", str2));
            }
            b();
            return;
        }
        String str3 = aVar.b;
        if (!TextUtils.isEmpty(str3)) {
            y14.n(context, str3, null, null, null);
        }
        if (aVar.d && (gv9Var = this.c) != null) {
            gv9Var.b();
        }
        b();
    }

    public final void b() {
        y0 y0Var;
        vw9 vw9Var = this.b;
        if (vw9Var == null) {
            return;
        }
        WeakReference weakReference = vw9Var.d;
        if (weakReference == null) {
            y14.r(null, "AdChoicesOptionMenu: can't dismiss not existing view");
        } else {
            k kVar = (k) weakReference.get();
            if (kVar == null) {
                y14.r(null, "AdChoicesOptionMenu: can't dismiss not existing or garbage-collected view");
            } else {
                WeakReference weakReference2 = kVar.j;
                if (weakReference2 != null && (y0Var = (y0) weakReference2.get()) != null) {
                    y0Var.dismiss();
                }
            }
        }
        this.b = null;
    }

    public final void c(Context context) {
        ArrayList arrayList;
        q qVar = this.a;
        List listA = qVar.d;
        if (listA == null) {
            listA = q.a(qVar.c);
            qVar.d = listA;
        }
        if (listA.isEmpty()) {
            return;
        }
        vw9 vw9Var = new vw9();
        this.b = vw9Var;
        this.d = new WeakReference(context);
        String str = qVar.e;
        if (str != null) {
            try {
                vw9Var.b = str;
            } catch (Throwable th) {
                if (!(th instanceof AbstractMethodError) || th.getStackTrace().length != new Exception().getStackTrace().length) {
                    y14.u(null, "Unexpected exception: " + th.getMessage());
                }
            }
        }
        Iterator it = listA.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            arrayList = vw9Var.a;
            if (!zHasNext) {
                break;
            } else {
                arrayList.add((s95) it.next());
            }
        }
        vw9Var.c = new WeakReference(this);
        if (arrayList.isEmpty()) {
            y14.r(null, "AdChoicesOptionMenu: there are no actions, can't present.");
            return;
        }
        if (vw9Var.c == null) {
            y14.r(null, "AdChoicesOptionMenu: there is no listener, can't present");
            return;
        }
        final k kVar = new k(context, arrayList, vw9Var.b, vw9Var.c);
        vw9Var.d = new WeakReference(kVar);
        ArrayList<s95> arrayList2 = kVar.f;
        if (arrayList2.isEmpty() || (arrayList2.size() == 1 && ((s95) arrayList2.get(0)).d == 1)) {
            y14.r(null, "AdChoicesOptionsView: there are no actions. Can't open dialog");
            return;
        }
        for (final s95 s95Var : arrayList2) {
            if (s95Var.d != 0) {
                kVar.k = s95Var;
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: e0a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i = k.l;
                        r95 r95Var = (r95) kVar.h.get();
                        if (r95Var == null) {
                            y14.r(null, "AdChoicesOptionsView: listener is null, can't call on action click.");
                        } else {
                            r95Var.a(s95Var);
                        }
                    }
                };
                Context context2 = kVar.getContext();
                ImageButton imageButton = new ImageButton(context2);
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                int iD = l3a.d(1, context2);
                int i = iD * 20;
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, config);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint();
                paint.setStrokeWidth(iD * 2);
                paint.setAntiAlias(true);
                paint.setColor(-5131855);
                paint.setStrokeCap(Paint.Cap.ROUND);
                paint.setStyle(Paint.Style.STROKE);
                Path path = new Path();
                path.setFillType(Path.FillType.EVEN_ODD);
                float f = iD * 7;
                path.moveTo(iD, f);
                path.lineTo(iD * 10, iD * 14);
                path.lineTo(iD * 19, f);
                canvas.drawPath(path, paint);
                imageButton.setImageBitmap(bitmapCreateBitmap);
                l3a.h(imageButton, -1, -3158065);
                imageButton.setOnClickListener(onClickListener);
                kVar.i = imageButton;
                kVar.addView(imageButton);
                kVar.setOnClickListener(onClickListener);
                break;
            }
        }
        s95 s95Var2 = kVar.k;
        if (s95Var2 != null) {
            arrayList2.remove(s95Var2);
        }
        ArrayList arrayList3 = new ArrayList();
        String str2 = kVar.g;
        if (str2 != null) {
            arrayList3.add(new k.d(str2));
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(new k.c((s95) it2.next()));
        }
        kVar.b.setAdapter((ListAdapter) new k.a(arrayList3, kVar.h));
        try {
            y0 y0Var = new y0(kVar, kVar.getContext());
            kVar.j = new WeakReference(y0Var);
            y0Var.show();
        } catch (Throwable th2) {
            th2.printStackTrace();
            y14.u(null, "AdChoicesOptionsController: Unable to start adchoices dialog");
            kVar.m();
        }
    }

    public final boolean d() {
        return this.b != null;
    }
}
