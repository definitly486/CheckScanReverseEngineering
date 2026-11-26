.class public final enum Lorg/conscrypt/metrics/CipherSuite;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/metrics/CipherSuite;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_CIPHER_FAILED:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_PSK_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_PSK_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_RSA_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_RSA_WITH_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_RSA_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum TLS_RSA_WITH_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

.field public static final enum UNKNOWN_CIPHER_SUITE:Lorg/conscrypt/metrics/CipherSuite;


# instance fields
.field final id:I


# direct methods
.method private static synthetic $values()[Lorg/conscrypt/metrics/CipherSuite;
    .locals 26

    sget-object v1, Lorg/conscrypt/metrics/CipherSuite;->UNKNOWN_CIPHER_SUITE:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v2, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v3, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v4, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v5, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v6, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v7, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v8, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v9, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v10, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v11, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v12, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v13, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v14, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v15, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v16, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v17, Lorg/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v18, Lorg/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v19, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v20, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v21, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v22, Lorg/conscrypt/metrics/CipherSuite;->TLS_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v23, Lorg/conscrypt/metrics/CipherSuite;->TLS_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v24, Lorg/conscrypt/metrics/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    sget-object v25, Lorg/conscrypt/metrics/CipherSuite;->TLS_CIPHER_FAILED:Lorg/conscrypt/metrics/CipherSuite;

    filled-new-array/range {v1 .. v25}, [Lorg/conscrypt/metrics/CipherSuite;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const-string v1, "UNKNOWN_CIPHER_SUITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->UNKNOWN_CIPHER_SUITE:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x1

    const v2, 0xc00a

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x2

    const v2, 0xc014

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x3

    const/16 v2, 0x35

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x4

    const v2, 0xc009

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x5

    const v2, 0xc013

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x6

    const/16 v2, 0x2f

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const-string v1, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x8

    const/16 v2, 0x9c

    const-string v4, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v4, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x9

    const/16 v2, 0x9d

    const-string v4, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v4, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02f

    invoke-direct {v0, v1, v3, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xb

    const v2, 0xc030

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xc

    const v2, 0xc02b

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xd

    const v2, 0xc02c

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xe

    const v2, 0xcca9

    const-string v3, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xf

    const v2, 0xcca8

    const-string v3, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x10

    const/16 v2, 0x8c

    const-string v3, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x11

    const/16 v2, 0x8d

    const-string v3, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x12

    const v2, 0xc035

    const-string v3, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x13

    const v2, 0xc036

    const-string v3, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x14

    const v2, 0xccac

    const-string v3, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x15

    const/16 v2, 0x1301

    const-string v3, "TLS_AES_128_GCM_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_AES_128_GCM_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x16

    const/16 v2, 0x1302

    const-string v3, "TLS_AES_256_GCM_SHA384"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_AES_256_GCM_SHA384:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x17

    const/16 v2, 0x1303

    const-string v3, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lorg/conscrypt/metrics/CipherSuite;

    new-instance v0, Lorg/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x18

    const v2, 0xffff

    const-string v3, "TLS_CIPHER_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->TLS_CIPHER_FAILED:Lorg/conscrypt/metrics/CipherSuite;

    invoke-static {}, Lorg/conscrypt/metrics/CipherSuite;->$values()[Lorg/conscrypt/metrics/CipherSuite;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/metrics/CipherSuite;->$VALUES:[Lorg/conscrypt/metrics/CipherSuite;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/conscrypt/metrics/CipherSuite;->id:I

    return-void
.end method

.method public static forName(Ljava/lang/String;)Lorg/conscrypt/metrics/CipherSuite;
    .locals 1

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lorg/conscrypt/metrics/CipherSuite;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/conscrypt/metrics/CipherSuite;->valueOf(Ljava/lang/String;)Lorg/conscrypt/metrics/CipherSuite;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lorg/conscrypt/metrics/CipherSuite;->UNKNOWN_CIPHER_SUITE:Lorg/conscrypt/metrics/CipherSuite;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/metrics/CipherSuite;
    .locals 1

    const-class v0, Lorg/conscrypt/metrics/CipherSuite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/metrics/CipherSuite;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/metrics/CipherSuite;
    .locals 1

    sget-object v0, Lorg/conscrypt/metrics/CipherSuite;->$VALUES:[Lorg/conscrypt/metrics/CipherSuite;

    invoke-virtual {v0}, [Lorg/conscrypt/metrics/CipherSuite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/metrics/CipherSuite;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/metrics/CipherSuite;->id:I

    return p0
.end method
