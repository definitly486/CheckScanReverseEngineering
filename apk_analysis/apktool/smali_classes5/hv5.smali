.class public final Lhv5;
.super Lio/grpc/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhv5$f;,
        Lhv5$d;,
        Lhv5$e;,
        Lhv5$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/e<",
        "Lhv5;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:Lsw1;

.field public static final n:Lsw1;

.field public static final o:Lau7;


# instance fields
.field public final a:Liz4;

.field public final b:Lg39$a;

.field public final c:Lau7;

.field public final d:Lau7;

.field public e:Ljavax/net/ssl/SSLSocketFactory;

.field public final f:Lsw1;

.field public final g:Lhv5$c;

.field public final h:J

.field public final i:J

.field public final j:I

.field public final k:I

.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lhv5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    new-instance v0, Lsw1$a;

    sget-object v1, Lsw1;->e:Lsw1;

    invoke-direct {v0, v1}, Lsw1$a;-><init>(Lsw1;)V

    sget-object v2, Lzj1;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lzj1;

    sget-object v3, Lzj1;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lzj1;

    sget-object v4, Lzj1;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lzj1;

    sget-object v5, Lzj1;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lzj1;

    sget-object v6, Lzj1;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lzj1;

    sget-object v7, Lzj1;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lzj1;

    sget-object v8, Lzj1;->TLS_AES_128_GCM_SHA256:Lzj1;

    sget-object v9, Lzj1;->TLS_AES_256_GCM_SHA384:Lzj1;

    sget-object v10, Lzj1;->TLS_CHACHA20_POLY1305_SHA256:Lzj1;

    filled-new-array/range {v2 .. v10}, [Lzj1;

    move-result-object v8

    invoke-virtual {v0, v8}, Lsw1$a;->a([Lzj1;)V

    sget-object v8, Lzw8;->TLS_1_3:Lzw8;

    sget-object v9, Lzw8;->TLS_1_2:Lzw8;

    filled-new-array {v8, v9}, [Lzw8;

    move-result-object v8

    invoke-virtual {v0, v8}, Lsw1$a;->c([Lzw8;)V

    invoke-virtual {v0}, Lsw1$a;->b()V

    new-instance v8, Lsw1;

    invoke-direct {v8, v0}, Lsw1;-><init>(Lsw1$a;)V

    sput-object v8, Lhv5;->m:Lsw1;

    new-instance v0, Lsw1$a;

    invoke-direct {v0, v1}, Lsw1$a;-><init>(Lsw1;)V

    filled-new-array/range {v2 .. v7}, [Lzj1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsw1$a;->a([Lzj1;)V

    filled-new-array {v9}, [Lzw8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsw1$a;->c([Lzw8;)V

    invoke-virtual {v0}, Lsw1$a;->b()V

    new-instance v1, Lsw1;

    invoke-direct {v1, v0}, Lsw1;-><init>(Lsw1$a;)V

    sput-object v1, Lhv5;->n:Lsw1;

    new-instance v0, Lhv5$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lau7;

    invoke-direct {v1, v0}, Lau7;-><init>(Lyt7$c;)V

    sput-object v1, Lhv5;->o:Lau7;

    sget-object v0, Lxw8;->MTLS:Lxw8;

    sget-object v1, Lxw8;->CUSTOM_MANAGERS:Lxw8;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg39;->c:Lg39$a;

    iput-object v0, p0, Lhv5;->b:Lg39$a;

    sget-object v0, Lhv5;->o:Lau7;

    iput-object v0, p0, Lhv5;->c:Lau7;

    sget-object v0, Lvs3;->q:Lvs3$c;

    new-instance v1, Lau7;

    invoke-direct {v1, v0}, Lau7;-><init>(Lyt7$c;)V

    iput-object v1, p0, Lhv5;->d:Lau7;

    sget-object v0, Lov5;->c:Lov5;

    instance-of v0, v0, Lov5$a;

    if-eqz v0, :cond_0

    sget-object v0, Lhv5;->m:Lsw1;

    goto :goto_0

    :cond_0
    sget-object v0, Lhv5;->n:Lsw1;

    :goto_0
    iput-object v0, p0, Lhv5;->f:Lsw1;

    sget-object v0, Lhv5$c;->TLS:Lhv5$c;

    iput-object v0, p0, Lhv5;->g:Lhv5$c;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lhv5;->h:J

    sget-wide v0, Lvs3;->l:J

    iput-wide v0, p0, Lhv5;->i:J

    const v0, 0xffff

    iput v0, p0, Lhv5;->j:I

    const/high16 v0, 0x400000

    iput v0, p0, Lhv5;->k:I

    const v0, 0x7fffffff

    iput v0, p0, Lhv5;->l:I

    new-instance v0, Liz4;

    new-instance v1, Lhv5$e;

    invoke-direct {v1, p0}, Lhv5$e;-><init>(Lhv5;)V

    new-instance v2, Lhv5$d;

    invoke-direct {v2, p0}, Lhv5$d;-><init>(Lhv5;)V

    invoke-direct {v0, p1, v1, v2}, Liz4;-><init>(Ljava/lang/String;Lhv5$e;Lhv5$d;)V

    iput-object v0, p0, Lhv5;->a:Liz4;

    return-void
.end method
