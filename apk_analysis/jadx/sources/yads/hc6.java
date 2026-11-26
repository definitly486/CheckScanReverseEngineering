package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class hc6 implements if6 {
    public final t96 a;
    public final ff6 b;

    public hc6(t96 t96Var, ff6 ff6Var) {
        this.a = t96Var;
        this.b = ff6Var;
    }

    @Override // yads.if6, yads.hf6
    public final void a(gb6 gb6Var) {
        int i;
        switch (gb6Var.a) {
            case RENDERER_FAILED_DEQUEUE_OUTPUT_BUFFER:
            case RENDERER_FAILED_DEQUEUE_INPUT_BUFFER:
            case RENDERER_FAILED_STOP:
            case RENDERER_FAILED_SET_SURFACE:
            case RENDERER_FAILED_RELEASE_OUTPUT_BUFFER:
            case RENDERER_FAILED_QUEUE_SECURE_INPUT_BUFFER:
            case RENDERER_MEDIA_CODEC_UNKNOWN:
            case DECODER_QUERY_ERROR:
            case DECODER_INITIALIZATION_ERROR:
            case DECODER_UNKNOWN_ERROR:
            case AUDIO_ERROR:
            case SUBTITLE_ERROR:
                i = 405;
                break;
            case TIMEOUT:
                i = TypedValues.CycleType.TYPE_VISIBILITY;
                break;
            case ILLEGAL_SEEK_POSITION:
            case BEHIND_LIVE_WINDOW_ERROR:
            case UNKNOWN:
                i = 900;
                break;
            case DRM_KEYS_EXPIRED:
            case DRM_MEDIA_RESOURCE_BUSY:
            case DRM_SESSION_ERROR:
            case HTTP_CLEARTEXT_NOT_PERMITTED:
            case HTTP_CODE_UNAUTHORIZED:
            case HTTP_CODE_FORBIDDEN:
            case HTTP_CODE_UNKNOWN:
            case SSL_HANDSHAKE_ERROR:
            case NETWORK_UNAVAILABLE:
            case LOADER_UNEXPECTED_ERROR:
            case CACHE_ERROR:
                i = 400;
                break;
            case HTTP_CODE_NOT_FOUND:
                i = TypedValues.CycleType.TYPE_CURVE_FIT;
                break;
            case CONTENT_PARSER_ERROR:
                i = TypedValues.CycleType.TYPE_ALPHA;
                break;
            case PLAYBACK_UNKNOWN:
            case GENERAL_VPAID_ERROR:
                i = TypedValues.Custom.TYPE_FLOAT;
                break;
            case UNKNOWN_NOT_MATCHED:
                i = TypedValues.Custom.TYPE_COLOR;
                break;
            default:
                defpackage.me0.e();
                return;
        }
        Map mapSingletonMap = Collections.singletonMap("[ERRORCODE]", String.valueOf(i));
        mapSingletonMap.getClass();
        ff6 ff6Var = this.b;
        List list = (List) this.a.a().get("error");
        if (list != null) {
            ff6Var.a.a(list, mapSingletonMap);
        }
    }

    @Override // yads.if6, yads.hf6
    public final void h() {
        this.b.a(this.a, "render_impression");
    }

    @Override // yads.if6, yads.hf6
    public final void i() {
        this.b.a(new da6(this.a), "renderingStart");
    }

    @Override // yads.if6, yads.hf6
    public final void n() {
        this.b.a(this.a, "impression");
    }
}
