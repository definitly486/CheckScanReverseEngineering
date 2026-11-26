.class public abstract Lcom/google/android/gms/internal/measurement/zzacb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzacb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzaca<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzafc;"
    }
.end annotation


# instance fields
.field protected transient zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacb;->zza:I

    return-void
.end method


# virtual methods
.method public a(Lnsa;)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzcc()Lcom/google/android/gms/internal/measurement/zzacr;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcq()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    new-array v1, v0, [B

    sget-boolean v2, Lcom/google/android/gms/internal/measurement/zzada;->b:Z

    new-instance v2, Lqqa;

    invoke-direct {v2, v1, v0}, Lqqa;-><init>([BI)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcH(Lcom/google/android/gms/internal/measurement/zzada;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzada;->zzH()V

    new-instance v0, Lmqa;

    invoke-direct {v0, v1}, Lmqa;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x48

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Serializing "

    const-string v3, " to a ByteString threw an IOException (should never happen)."

    invoke-static {v2, v1, p0, v3}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzcd()[B
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcq()I

    move-result v0

    new-array v1, v0, [B

    sget-boolean v2, Lcom/google/android/gms/internal/measurement/zzada;->b:Z

    new-instance v2, Lqqa;

    invoke-direct {v2, v1, v0}, Lqqa;-><init>([BI)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcH(Lcom/google/android/gms/internal/measurement/zzada;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzada;->zzH()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x48

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Serializing "

    const-string v3, " to a byte array threw an IOException (should never happen)."

    invoke-static {v2, v1, p0, v3}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzce(Ljava/io/OutputStream;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcq()I

    move-result v0

    sget-boolean v1, Lcom/google/android/gms/internal/measurement/zzada;->b:Z

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Lrqa;

    invoke-direct {v1, p1, v0}, Lrqa;-><init>(Ljava/io/OutputStream;I)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcH(Lcom/google/android/gms/internal/measurement/zzada;)V

    invoke-virtual {v1}, Lrqa;->zzx()V

    return-void
.end method
