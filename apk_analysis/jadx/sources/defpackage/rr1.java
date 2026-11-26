package defpackage;

import androidx.activity.ComponentActivity;
import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.navigation.NavDeepLink;
import androidx.window.layout.SafeWindowLayoutComponentProvider;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import yads.l44;
import yads.nq0;
import yads.zi0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rr1 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rr1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() throws IOException {
        int iN;
        b36 b36Var;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ComponentActivity.onBackPressedInput_delegate$lambda$0((ComponentActivity) obj);
            case 1:
                return LongPressTextDragObserverKt.detectDragGesturesWithObserver$lambda$1((TextDragObserver) obj);
            case 2:
                return Boolean.valueOf(NavDeepLink.isParameterizedQuery_delegate$lambda$2((NavDeepLink) obj));
            case 3:
                o47 o47Var = (o47) obj;
                ClassLoader classLoader = o47Var.d;
                w93 w93Var = o47Var.e;
                Enumeration<URL> resources = classLoader.getResources("");
                resources.getClass();
                ArrayList list = Collections.list(resources);
                list.getClass();
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (true) {
                    int i2 = 0;
                    b36 b36Var2 = null;
                    if (!it.hasNext()) {
                        Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
                        resources2.getClass();
                        ArrayList<URL> list2 = Collections.list(resources2);
                        list2.getClass();
                        ArrayList arrayList2 = new ArrayList();
                        for (URL url : list2) {
                            url.getClass();
                            String string = url.toString();
                            string.getClass();
                            if (ra8.C(string, "jar:file:", false) && (iN = ta8.N(6, string, "!")) != -1) {
                                String str = j46.c;
                                String string2 = new File(URI.create(string.substring(4, iN))).toString();
                                string2.getClass();
                                b36Var = new b36(mm9.c(j46.a.a(string2, false), w93Var, new n47(i2)), o47.g);
                            } else {
                                b36Var = null;
                            }
                            if (b36Var != null) {
                                arrayList2.add(b36Var);
                            }
                        }
                        return qn1.h0(arrayList2, arrayList);
                    }
                    URL url2 = (URL) it.next();
                    url2.getClass();
                    if (aa4.e(url2.getProtocol(), "file")) {
                        String str2 = j46.c;
                        String string3 = new File(url2.toURI()).toString();
                        string3.getClass();
                        b36Var2 = new b36(w93Var, j46.a.a(string3, false));
                    }
                    if (b36Var2 != null) {
                        arrayList.add(b36Var2);
                    }
                }
                break;
            case 4:
                return Boolean.valueOf(SafeWindowLayoutComponentProvider.isGetSupportedWindowFeaturesValid$lambda$6((SafeWindowLayoutComponentProvider) obj));
            case 5:
                return l44.b((l44) obj);
            case 6:
                return nq0.m0((nq0) obj);
            default:
                return Long.valueOf(zi0.a((zi0) obj));
        }
    }
}
