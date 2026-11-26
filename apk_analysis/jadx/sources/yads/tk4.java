package yads;

import android.media.MediaCodec;
import android.media.MediaDrmResetException;
import android.media.ResourceBusyException;
import javax.net.ssl.SSLHandshakeException;

/* JADX INFO: loaded from: classes6.dex */
public final class tk4 {
    /* JADX WARN: Code duplicated, block: B:42:0x0088  */
    public static fb6 a(Throwable th) {
        fb6 fb6Var;
        boolean z;
        if (th instanceof zv4) {
            Throwable cause = th.getCause();
            if (cause == null || !(((z = cause instanceof MediaCodec.CodecException)) || (cause instanceof IllegalStateException) || (cause instanceof IllegalArgumentException))) {
                fb6Var = null;
            } else {
                StackTraceElement[] stackTrace = cause.getStackTrace();
                if (stackTrace.length != 0 && stackTrace[0].isNativeMethod() && defpackage.aa4.e(stackTrace[0].getClassName(), "android.media.MediaCodec")) {
                    String methodName = stackTrace[0].getMethodName();
                    if (methodName == null) {
                        methodName = "";
                    }
                    if (methodName.equals("native_dequeueOutputBuffer")) {
                        fb6Var = fb6.RENDERER_FAILED_DEQUEUE_OUTPUT_BUFFER;
                    } else if (methodName.equals("native_dequeueInputBuffer")) {
                        fb6Var = fb6.RENDERER_FAILED_DEQUEUE_INPUT_BUFFER;
                    } else if (methodName.equals("native_stop")) {
                        fb6Var = fb6.RENDERER_FAILED_STOP;
                    } else if (methodName.equals("native_setSurface")) {
                        fb6Var = fb6.RENDERER_FAILED_SET_SURFACE;
                    } else if (methodName.equals("releaseOutputBuffer")) {
                        fb6Var = fb6.RENDERER_FAILED_RELEASE_OUTPUT_BUFFER;
                    } else if (methodName.equals("native_queueSecureInputBuffer")) {
                        fb6Var = fb6.RENDERER_FAILED_QUEUE_SECURE_INPUT_BUFFER;
                    } else if (z) {
                        fb6Var = fb6.RENDERER_MEDIA_CODEC_UNKNOWN;
                    } else {
                        fb6Var = null;
                    }
                } else {
                    fb6Var = null;
                }
            }
            if (fb6Var != null) {
                return fb6Var;
            }
            Throwable cause2 = th.getCause();
            fb6 fb6VarA = cause2 != null ? a(cause2) : null;
            return fb6VarA == null ? fb6.PLAYBACK_UNKNOWN : fb6VarA;
        }
        if (th instanceof vb3) {
            return fb6.ILLEGAL_SEEK_POSITION;
        }
        if (th instanceof ez3) {
            return fb6.DECODER_QUERY_ERROR;
        }
        if (th instanceof yy3) {
            return fb6.DECODER_INITIALIZATION_ERROR;
        }
        if (th instanceof vs) {
            return fb6.BEHIND_LIVE_WINDOW_ERROR;
        }
        if (th instanceof MediaCodec.CryptoException) {
            return fb6.DRM_KEYS_EXPIRED;
        }
        if (th instanceof rl2) {
            Throwable cause3 = ((rl2) th).getCause();
            if (cause3 == null) {
                return fb6.DRM_SESSION_ERROR;
            }
            if ((cause3 instanceof MediaDrmResetException) || (cause3 instanceof ResourceBusyException)) {
                return fb6.DRM_MEDIA_RESOURCE_BUSY;
            }
            return ((cause3 instanceof MediaCodec.CryptoException) || (cause3 instanceof gr3)) ? fb6.DRM_KEYS_EXPIRED : fb6.DRM_SESSION_ERROR;
        }
        if (th instanceof la3) {
            int i = ((la3) th).e;
            if (i == 401) {
                return fb6.HTTP_CODE_UNAUTHORIZED;
            }
            if (i == 403) {
                return fb6.HTTP_CODE_FORBIDDEN;
            }
            return i == 404 ? fb6.HTTP_CODE_NOT_FOUND : fb6.HTTP_CODE_UNKNOWN;
        }
        if (th instanceof ja3) {
            return ((ja3) th).getCause() instanceof SSLHandshakeException ? fb6.SSL_HANDSHAKE_ERROR : fb6.NETWORK_UNAVAILABLE;
        }
        if (th instanceof xs4) {
            return fb6.CONTENT_PARSER_ERROR;
        }
        if (th instanceof qu3) {
            return fb6.LOADER_UNEXPECTED_ERROR;
        }
        if (th instanceof pm ? true : th instanceof qm ? true : th instanceof pj0) {
            return fb6.AUDIO_ERROR;
        }
        if (th instanceof ot5) {
            return fb6.SUBTITLE_ERROR;
        }
        return th instanceof vv ? true : th instanceof zv ? fb6.CACHE_ERROR : fb6.UNKNOWN_NOT_MATCHED;
    }
}
