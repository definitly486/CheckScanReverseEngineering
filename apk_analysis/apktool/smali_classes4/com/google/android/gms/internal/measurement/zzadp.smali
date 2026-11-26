.class public Lcom/google/android/gms/internal/measurement/zzadp;
.super Lcom/google/android/gms/internal/measurement/zzaca;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzadu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzadp<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzaca<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/internal/measurement/zzadu;

.field public c:Lcom/google/android/gms/internal/measurement/zzadu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzadu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaca;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->b:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadu;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadu;->e()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    return-void

    :cond_0
    const-string p0, "Default instance must be immutable."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbb()Lcom/google/android/gms/internal/measurement/zzadp;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->b:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->e()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    sget-object v2, Lksa;->c:Lksa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzaS()Lcom/google/android/gms/internal/measurement/zzaca;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbb()Lcom/google/android/gms/internal/measurement/zzadp;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzaT([BII)Lcom/google/android/gms/internal/measurement/zzaca;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzadf;->b:Lcom/google/android/gms/internal/measurement/zzadf;

    sget p2, Lfqa;->a:I

    const/4 p2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzadf;->c:Lcom/google/android/gms/internal/measurement/zzadf;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbf([BIILcom/google/android/gms/internal/measurement/zzadf;)Lcom/google/android/gms/internal/measurement/zzadp;

    return-object p0
.end method

.method public final bridge synthetic zzaU([BIILcom/google/android/gms/internal/measurement/zzadf;)Lcom/google/android/gms/internal/measurement/zzaca;
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbf([BIILcom/google/android/gms/internal/measurement/zzadf;)Lcom/google/android/gms/internal/measurement/zzadp;

    return-object p0
.end method

.method public final zzbb()Lcom/google/android/gms/internal/measurement/zzadp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->b:Lcom/google/android/gms/internal/measurement/zzadu;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbc()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    return-object v0
.end method

.method public zzbc()Lcom/google/android/gms/internal/measurement/zzadu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lksa;->c:Lksa;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    invoke-interface {v0, v1}, Lnsa;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzadu;->d()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    return-object p0
.end method

.method public final zzbd()Lcom/google/android/gms/internal/measurement/zzadu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbc()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcJ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzafy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzafy;-><init>(Lcom/google/android/gms/internal/measurement/zzafc;)V

    throw v0
.end method

.method public final zzbe(Lcom/google/android/gms/internal/measurement/zzadu;)Lcom/google/android/gms/internal/measurement/zzadp;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->b:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzadu;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->e()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    sget-object v2, Lksa;->c:Lksa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    sget-object v1, Lksa;->c:Lksa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final zzbf([BIILcom/google/android/gms/internal/measurement/zzadf;)Lcom/google/android/gms/internal/measurement/zzadp;
    .locals 8

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzadu;->c()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzadp;->b:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzadu;->e()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    sget-object v1, Lksa;->c:Lksa;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    sget-object v0, Lksa;->c:Lksa;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    new-instance v7, Lgqa;

    invoke-direct {v7, p4}, Lgqa;-><init>(Lcom/google/android/gms/internal/measurement/zzadf;)V

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lnsa;->c(Ljava/lang/Object;[BIILgqa;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Reading from byte array should not throw IOException."

    invoke-static {p1, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2

    :catch_1
    const-string p0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-static {p0}, Lxg;->e(Ljava/lang/String;)V

    return-object p2

    :catch_2
    move-exception v0

    move-object p0, v0

    throw p0
.end method

.method public bridge synthetic zzbg()Lcom/google/android/gms/internal/measurement/zzafc;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbc()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    return-object p0
.end method

.method public final zzcJ()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->k(Lcom/google/android/gms/internal/measurement/zzadu;Z)Z

    move-result p0

    return p0
.end method

.method public final synthetic zzcK()Lcom/google/android/gms/internal/measurement/zzafc;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
