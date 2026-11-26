.class public final synthetic Lg1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lyxb;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lyxb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg1c;->b:Z

    iput-object p2, p0, Lg1c;->c:Ljava/lang/String;

    iput-object p3, p0, Lg1c;->d:Lyxb;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-boolean v0, p0, Lg1c;->b:Z

    iget-object v1, p0, Lg1c;->c:Ljava/lang/String;

    iget-object p0, p0, Lg1c;->d:Lyxb;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3}, Lu8c;->d(Ljava/lang/String;Lyxb;ZZ)Lcom/google/android/gms/common/zzy;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/common/zzy;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "debug cert rejected"

    goto :goto_0

    :cond_0
    const-string v2, "not allowed"

    :goto_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->zza(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lyxb;->b:[B

    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p0

    const-string v3, ": pkg="

    const-string v4, ", sha256="

    invoke-static {v2, v3, v1, v4, p0}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", atk="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ver=12451000.false"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
