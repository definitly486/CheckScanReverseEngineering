package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class p4 {
    public static m4 a(e4 e4Var, o4 o4Var) {
        switch (o4Var) {
            case REQUEST_SUCCEEDED_RESPONSE_NOT_FOUND:
            case REQUEST_SUCCEEDED_NO_SUCH_AD_UNIT_ID_ERROR:
                m4 m4Var = o8.a;
                return o8.a(e4Var != null ? e4Var.c.a : null);
            case REQUEST_SUCCEEDED_RESPONSE_PARAMS_INVALID:
                return o8.c;
            case REQUEST_SUCCEEDED_RESPONSE_NO_CONTENT:
                return o8.h;
            case REQUEST_SUCCEEDED_RESPONSE_CODE_INVALID:
                return o8.d;
            case REQUEST_SUCCEEDED_SERVICE_UNAVAILABLE:
                return o8.e;
            case REQUEST_SUCCEEDED_INVALID_SDK_CONFIGURATION:
                return o8.n;
            case REQUEST_FAILED_INVALID_ANDROID_SDK_API:
                return o8.g;
            case REQUEST_FAILED_INVALID_REQUEST_URL:
                return o8.j;
            case REQUEST_FAILED_INVALID_AD_TYPE:
                return o8.k;
            case REQUEST_FAILED_NO_CONNECTION:
                return o8.r;
            case REQUEST_FAILED_TIMEOUT:
                return o8.s;
            case REQUEST_FAILED_AUTH_FAILURE:
                return o8.t;
            case REQUEST_FAILED_CLIENT_ERROR:
                return o8.u;
            case REQUEST_FAILED_PARSE_ERROR:
                return o8.v;
            case REQUEST_FAILED_UNKNOWN:
                return o8.q;
            default:
                defpackage.me0.e();
                return null;
        }
    }
}
