.class public final Lyj1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyj1$b;
    }
.end annotation


# static fields
.field public static final b:Lyj1$b;

.field public static final c:Lyj1$a;

.field public static final d:Ljava/util/LinkedHashMap;

.field public static final e:Lyj1;

.field public static final f:Lyj1;

.field public static final g:Lyj1;

.field public static final h:Lyj1;

.field public static final i:Lyj1;

.field public static final j:Lyj1;

.field public static final k:Lyj1;

.field public static final l:Lyj1;

.field public static final m:Lyj1;

.field public static final n:Lyj1;

.field public static final o:Lyj1;

.field public static final p:Lyj1;

.field public static final q:Lyj1;

.field public static final r:Lyj1;

.field public static final s:Lyj1;

.field public static final t:Lyj1;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyj1$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyj1;->b:Lyj1$b;

    new-instance v0, Lyj1$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyj1;->c:Lyj1$a;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lyj1;->d:Ljava/util/LinkedHashMap;

    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->e:Lyj1;

    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->f:Lyj1;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->g:Lyj1;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->h:Lyj1;

    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->i:Lyj1;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_FALLBACK_SCSV"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->j:Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->k:Lyj1;

    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->l:Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->m:Lyj1;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->n:Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->o:Lyj1;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->p:Lyj1;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->q:Lyj1;

    const-string v0, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_AES_128_GCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->r:Lyj1;

    const-string v0, "TLS_AES_256_GCM_SHA384"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->s:Lyj1;

    const-string v0, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    move-result-object v0

    sput-object v0, Lyj1;->t:Lyj1;

    const-string v0, "TLS_AES_128_CCM_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    const-string v0, "TLS_AES_128_CCM_8_SHA256"

    invoke-static {v0}, Lyj1$b;->b(Ljava/lang/String;)Lyj1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyj1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyj1;->a:Ljava/lang/String;

    return-object p0
.end method
