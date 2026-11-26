.class public final Lsw1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsw1$a;
    }
.end annotation


# static fields
.field public static final e:Lsw1;


# instance fields
.field public final a:Z

.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    sget-object v1, Lzj1;->TLS_AES_128_GCM_SHA256:Lzj1;

    sget-object v2, Lzj1;->TLS_AES_256_GCM_SHA384:Lzj1;

    sget-object v3, Lzj1;->TLS_CHACHA20_POLY1305_SHA256:Lzj1;

    sget-object v4, Lzj1;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lzj1;

    sget-object v5, Lzj1;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lzj1;

    sget-object v6, Lzj1;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lzj1;

    sget-object v7, Lzj1;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lzj1;

    sget-object v8, Lzj1;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lzj1;

    sget-object v9, Lzj1;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lzj1;

    sget-object v10, Lzj1;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lzj1;

    sget-object v11, Lzj1;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lzj1;

    sget-object v12, Lzj1;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lzj1;

    sget-object v13, Lzj1;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lzj1;

    sget-object v14, Lzj1;->TLS_RSA_WITH_AES_128_CBC_SHA:Lzj1;

    sget-object v15, Lzj1;->TLS_RSA_WITH_AES_256_CBC_SHA:Lzj1;

    sget-object v16, Lzj1;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lzj1;

    filled-new-array/range {v1 .. v16}, [Lzj1;

    move-result-object v0

    new-instance v1, Lsw1$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lsw1$a;-><init>(Z)V

    invoke-virtual {v1, v0}, Lsw1$a;->a([Lzj1;)V

    sget-object v0, Lzw8;->TLS_1_3:Lzw8;

    sget-object v2, Lzw8;->TLS_1_2:Lzw8;

    filled-new-array {v0, v2}, [Lzw8;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsw1$a;->c([Lzw8;)V

    invoke-virtual {v1}, Lsw1$a;->b()V

    new-instance v3, Lsw1;

    invoke-direct {v3, v1}, Lsw1;-><init>(Lsw1$a;)V

    sput-object v3, Lsw1;->e:Lsw1;

    sget-object v1, Lzw8;->TLS_1_1:Lzw8;

    sget-object v4, Lzw8;->TLS_1_0:Lzw8;

    filled-new-array {v0, v2, v1, v4}, [Lzw8;

    move-result-object v0

    iget-boolean v1, v3, Lsw1;->a:Z

    if-eqz v1, :cond_3

    array-length v2, v0

    if-eqz v2, :cond_2

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v3

    iget-object v4, v4, Lzw8;->javaName:Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v0, "no TLS extensions for cleartext connections"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "At least one TlsVersion is required"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "no TLS versions for cleartext connections"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lsw1$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lsw1$a;->a:Z

    iput-boolean v0, p0, Lsw1;->a:Z

    iget-object v0, p1, Lsw1$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lsw1;->b:[Ljava/lang/String;

    iget-object v0, p1, Lsw1$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lsw1;->c:[Ljava/lang/String;

    iget-boolean p1, p1, Lsw1$a;->d:Z

    iput-boolean p1, p0, Lsw1;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lsw1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lsw1;

    iget-boolean v0, p1, Lsw1;->a:Z

    iget-boolean v1, p0, Lsw1;->a:Z

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    iget-object v0, p0, Lsw1;->b:[Ljava/lang/String;

    iget-object v1, p1, Lsw1;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lsw1;->c:[Ljava/lang/String;

    iget-object v1, p1, Lsw1;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean p0, p0, Lsw1;->d:Z

    iget-boolean p1, p1, Lsw1;->d:Z

    if-eq p0, p1, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lsw1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsw1;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lsw1;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lsw1;->d:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v1, p0

    return v1

    :cond_0
    const/16 p0, 0x11

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lsw1;->a:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lsw1;->b:[Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_2

    :cond_0
    array-length v3, v2

    new-array v3, v3, [Lzj1;

    move v4, v1

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    const-string v6, "SSL_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TLS_"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lzj1;->valueOf(Ljava/lang/String;)Lzj1;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lzj1;->valueOf(Ljava/lang/String;)Lzj1;

    move-result-object v5

    :goto_1
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lfb9;->a:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_3

    const-string v2, "[use default]"

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v3, "ConnectionSpec(cipherSuites="

    const-string v4, ", tlsVersions="

    invoke-static {v3, v2, v4}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsw1;->c:[Ljava/lang/String;

    array-length v4, v3

    new-array v4, v4, [Lzw8;

    :goto_4
    array-length v5, v3

    if-ge v1, v5, :cond_9

    aget-object v5, v3, v1

    const-string v6, "TLSv1.3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v5, Lzw8;->TLS_1_3:Lzw8;

    goto :goto_5

    :cond_4
    const-string v6, "TLSv1.2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v5, Lzw8;->TLS_1_2:Lzw8;

    goto :goto_5

    :cond_5
    const-string v6, "TLSv1.1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v5, Lzw8;->TLS_1_1:Lzw8;

    goto :goto_5

    :cond_6
    const-string v6, "TLSv1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v5, Lzw8;->TLS_1_0:Lzw8;

    goto :goto_5

    :cond_7
    const-string v6, "SSLv3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v5, Lzw8;->SSL_3_0:Lzw8;

    :goto_5
    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    const-string p0, "Unexpected TLS version: "

    invoke-static {p0, v5}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0

    :cond_9
    sget-object v0, Lfb9;->a:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lsw1;->d:Z

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "ConnectionSpec()"

    return-object p0
.end method
