package defpackage;

import androidx.work.WorkRequest;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.posthog.PostHogEvent;
import com.posthog.internal.PostHogApiError;
import com.posthog.internal.PostHogBatchEvent;
import com.posthog.internal.PostHogFlagsRequest;
import com.posthog.internal.PostHogFlagsResponse;
import com.posthog.internal.PostHogRemoteConfigResponse;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes4.dex */
public final class db6 {
    public final ta6 a;
    public final fh8 b = new fh8(new tc4(1));
    public final OkHttpClient c;
    public final fh8 d;

    public static final class a extends x39<PostHogBatchEvent> {
    }

    public static final class b extends x39<PostHogFlagsResponse> {
    }

    public static final class c extends g37 {
        public final /* synthetic */ nl3<OutputStream, j59> b;

        /* JADX WARN: Multi-variable type inference failed */
        public c(nl3<? super OutputStream, j59> nl3Var) {
            this.b = nl3Var;
        }

        @Override // defpackage.g37
        public final j95 b() {
            return (j95) db6.this.b.getValue();
        }

        @Override // defpackage.g37
        public final void c(vu0 vu0Var) throws IOException {
            OutputStream outputStreamV0 = vu0Var.v0();
            try {
                this.b.invoke(outputStreamV0);
                j59 j59Var = j59.a;
                outputStreamV0.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(outputStreamV0, th);
                    throw th2;
                }
            }
        }
    }

    public static final class d extends x39<PostHogRemoteConfigResponse> {
    }

    public db6(ta6 ta6Var) {
        this.a = ta6Var;
        OkHttpClient.a aVar = new OkHttpClient.a();
        aVar.c.add(new vt3(ta6Var));
        aVar.d.add(new e72(ta6Var));
        this.c = new OkHttpClient(aVar);
        this.d = new fh8(new ez0(this, 2));
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0077  */
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0087 A[LOOP:1: B:33:0x007b->B:38:0x0087, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:59:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0085 A[SYNTHETIC] */
    public static PostHogFlagsResponse e(final db6 db6Var, String str, String str2, String str3, Map map, LinkedHashMap linkedHashMap, Map map2) throws Exception {
        String message;
        long j;
        int i;
        ta6 ta6Var = db6Var.a;
        final PostHogFlagsRequest postHogFlagsRequest = new PostHogFlagsRequest(ta6Var.t, str, str2, str3, map, linkedHashMap, map2, null, null, false);
        b37 b37VarG = db6Var.g(db6Var.f() + "/flags/?v=2", new nl3() { // from class: cb6
            @Override // defpackage.nl3
            public final Object invoke(Object obj) throws IOException {
                OutputStream outputStream = (OutputStream) obj;
                outputStream.getClass();
                wd6 wd6VarB = this.b.a.b();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, ha1.b), 8192);
                wd6VarB.a.m(postHogFlagsRequest, new eb6().b, bufferedWriter);
                bufferedWriter.flush();
                return j59.a;
            }
        });
        int i2 = ta6Var.j;
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = 0;
        while (true) {
            try {
                return db6Var.c(b37VarG);
            } catch (Exception e) {
                if (i3 < i2) {
                    if (e instanceof PostHogApiError) {
                        int i4 = ((PostHogApiError) e).b;
                        if (i4 != 502 && i4 != 504) {
                        }
                        int i5 = i3 + 1;
                        if (i3 < 0) {
                            i3 = 0;
                        }
                        j = 300;
                        i = 0;
                        while (true) {
                            if (i < i3) {
                                if (j > WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                                    break;
                                }
                                break;
                            }
                            if (j >= 15000) {
                                j *= 2;
                                i++;
                            }
                            j = 30000;
                            break;
                        }
                        try {
                            Thread.sleep(j);
                            i3 = i5;
                        } catch (InterruptedException e2) {
                            Thread.currentThread().interrupt();
                            throw new IOException("Interrupted while waiting to retry feature flags request.", e2);
                        }
                    } else {
                        if (!(e instanceof IOException) || (!(e instanceof SocketTimeoutException) && !(e instanceof EOFException) && (!(e instanceof SocketException) || (message = e.getMessage()) == null || !ta8.D(message, "reset", true)))) {
                        }
                        int i6 = i3 + 1;
                        if (i3 < 0) {
                            i3 = 0;
                        }
                        j = 300;
                        i = 0;
                        while (true) {
                            if (i < i3) {
                                if (j > WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                                    break;
                                }
                                break;
                            }
                            if (j >= 15000) {
                                j *= 2;
                                i++;
                            }
                            j = 30000;
                            break;
                        }
                        Thread.sleep(j);
                        i3 = i6;
                    }
                }
                throw e;
            }
        }
    }

    public final void a(List<PostHogEvent> list) {
        PostHogBatchEvent postHogBatchEvent = new PostHogBatchEvent(this.a.t, list, null, 4, null);
        String str = f() + "/batch";
        d(g(str, new ab6(postHogBatchEvent, this, str)));
    }

    public final PostHogFlagsResponse b(b57 b57Var) {
        ta6 ta6Var = this.a;
        try {
            wd6 wd6VarB = ta6Var.b();
            Reader readerN = b57Var.n();
            return (PostHogFlagsResponse) wd6VarB.a.e(readerN instanceof BufferedReader ? (BufferedReader) readerN : new BufferedReader(readerN, 8192), new b().b);
        } catch (Exception e) {
            String str = ((e instanceof JsonIOException) || (e instanceof JsonSyntaxException)) ? "response was not valid JSON" : "response could not be parsed";
            ta6Var.v.a("Loading feature flags failed: " + str + ": " + e);
            return null;
        }
    }

    public final PostHogFlagsResponse c(b37 b37Var) throws IOException {
        OkHttpClient okHttpClient = (OkHttpClient) this.d.getValue();
        okHttpClient.getClass();
        z47 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37Var));
        try {
            if (!z47VarExecute.o()) {
                throw new PostHogApiError(z47VarExecute.d, z47VarExecute.e, null);
            }
            b57 b57Var = z47VarExecute.h;
            if (b57Var == null) {
                m96.c(z47VarExecute, null);
                return null;
            }
            PostHogFlagsResponse postHogFlagsResponseB = b(b57Var);
            m96.c(z47VarExecute, null);
            return postHogFlagsResponseB;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(z47VarExecute, th);
                throw th2;
            }
        }
    }

    public final void d(b37 b37Var) {
        OkHttpClient okHttpClient = this.c;
        okHttpClient.getClass();
        z47 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37Var));
        try {
            Integer numO = null;
            if (z47VarExecute.o()) {
                j59 j59Var = j59.a;
                m96.c(z47VarExecute, null);
                return;
            }
            int i = z47VarExecute.e;
            String str = z47VarExecute.d;
            try {
                String strN = z47.n(z47VarExecute, "Retry-After");
                if (strN != null) {
                    numO = qa8.o(10, strN);
                }
            } catch (Throwable unused) {
            }
            throw new PostHogApiError(str, i, numO);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(z47VarExecute, th);
                throw th2;
            }
        }
    }

    public final String f() {
        String str = this.a.u;
        return ra8.u(str, "/", false) ? rg.f(1, 0, str) : str;
    }

    public final b37 g(String str, nl3<? super OutputStream, j59> nl3Var) {
        c cVar = new c(nl3Var);
        b37.a aVar = new b37.a();
        aVar.e(str);
        StringBuilder sb = new StringBuilder();
        ta6 ta6Var = this.a;
        sb.append(ta6Var.y);
        sb.append('/');
        sb.append(ta6Var.z);
        aVar.b("User-Agent", sb.toString());
        aVar.c("POST", cVar);
        return aVar.a();
    }

    public final PostHogRemoteConfigResponse h() throws IOException {
        String strF = f();
        if (aa4.e(strF, "https://us.i.posthog.com")) {
            strF = "https://us-assets.i.posthog.com";
        } else if (aa4.e(strF, "https://eu.i.posthog.com")) {
            strF = "https://eu-assets.i.posthog.com";
        }
        b37.a aVar = new b37.a();
        StringBuilder sbC = ti0.c(strF, "/array/");
        ta6 ta6Var = this.a;
        sbC.append(ta6Var.t);
        sbC.append("/config");
        aVar.e(sbC.toString());
        aVar.b("User-Agent", ta6Var.y + '/' + ta6Var.z);
        aVar.b("Content-Type", "application/json; charset=utf-8");
        aVar.c("GET", null);
        b37 b37VarA = aVar.a();
        OkHttpClient okHttpClient = this.c;
        okHttpClient.getClass();
        z47 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37VarA));
        try {
            if (!z47VarExecute.o()) {
                throw new PostHogApiError(z47VarExecute.d, z47VarExecute.e, null);
            }
            b57 b57Var = z47VarExecute.h;
            if (b57Var == null) {
                m96.c(z47VarExecute, null);
                return null;
            }
            wd6 wd6VarB = ta6Var.b();
            Reader readerN = b57Var.n();
            PostHogRemoteConfigResponse postHogRemoteConfigResponse = (PostHogRemoteConfigResponse) wd6VarB.a.e(readerN instanceof BufferedReader ? (BufferedReader) readerN : new BufferedReader(readerN, 8192), new d().b);
            m96.c(z47VarExecute, null);
            return postHogRemoteConfigResponse;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(z47VarExecute, th);
                throw th2;
            }
        }
    }
}
