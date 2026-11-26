package defpackage;

import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.media3.common.PlaybackException;

/* JADX INFO: loaded from: classes4.dex */
public final class l6a {
    public static final l6a c = new l6a(1000);
    public static final l6a d = new l6a(1002);
    public static final l6a e = new l6a(1003);
    public static final l6a f = new l6a(1403);
    public static final l6a g = new l6a(1404);
    public static final l6a h = new l6a(1500);
    public static final l6a i = new l6a(2000);
    public static final l6a j = new l6a(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED);
    public static final l6a k = new l6a(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT);
    public static final l6a l = new l6a(PlaybackException.ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE);
    public static final l6a m = new l6a(PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS);
    public static final l6a n = new l6a(PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND);
    public static final l6a o = new l6a(3000);
    public static final l6a p = new l6a(3001);
    public static final l6a q = new l6a(3002);
    public static final l6a r = new l6a(3003);
    public static final l6a s = new l6a(3004);
    public static final l6a t = new l6a(PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
    public static final l6a u = new l6a(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
    public final int a;
    public final String b;

    public l6a(int i2) {
        String str;
        this.a = i2;
        if (i2 == 1403) {
            str = "request forbidden error";
        } else if (i2 == 1404) {
            str = "request not found error";
        } else if (i2 == 1500) {
            str = "internal server error";
        } else if (i2 == 6000) {
            str = "internal error";
        } else if (i2 == 4001) {
            str = "reloading not allowed error";
        } else if (i2 == 4002) {
            str = "ad is not loaded yet";
        } else if (i2 == 5000) {
            str = "undefined mediation error";
        } else if (i2 != 5001) {
            switch (i2) {
                case 1000:
                    str = "undefined network error";
                    break;
                case 1001:
                    str = "invalid url error";
                    break;
                case 1002:
                    str = "hasn't network connection error";
                    break;
                case 1003:
                    str = "request timeout error";
                    break;
                default:
                    switch (i2) {
                        case 2000:
                            str = "undefined parse error";
                            break;
                        case PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED /* 2001 */:
                            str = "empty response error";
                            break;
                        case PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT /* 2002 */:
                            str = "invalid json error";
                            break;
                        case PlaybackException.ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE /* 2003 */:
                            str = "invalid xml error";
                            break;
                        case PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS /* 2004 */:
                            str = "invalid ad type error";
                            break;
                        case PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND /* 2005 */:
                            str = "required field missed";
                            break;
                        default:
                            switch (i2) {
                                case 3000:
                                    str = "undefined data error";
                                    break;
                                case 3001:
                                    str = "hasn't images error";
                                    break;
                                case 3002:
                                    str = "hasn't html source error";
                                    break;
                                case 3003:
                                    str = "hasn't banners error";
                                    break;
                                case 3004:
                                    str = "invalid banner type error";
                                    break;
                                default:
                                    str = "undefined error";
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            str = "ad not loaded from mediation network";
        }
        this.b = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AdLoadingError{code=");
        sb.append(this.a);
        sb.append(", message='");
        return me0.d(sb, this.b, "'}");
    }

    public l6a(String str) {
        this.a = 1000;
        this.b = str;
    }
}
