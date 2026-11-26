.class public Lcom/google/android/gms/internal/play_billing/zzgl;
.super Lcom/google/android/gms/internal/play_billing/zzez;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/zzgp<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/zzgl<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/play_billing/zzez<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/internal/play_billing/zzgp;

.field public c:Lcom/google/android/gms/internal/play_billing/zzgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzez;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->b:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgp;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzg()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->h()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->b:Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    sget-object v2, Lkpb;->b:Lkpb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    return-void
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/internal/play_billing/zzez;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzg()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/play_billing/zzgl;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->b:Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzj()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/play_billing/zzgp;)Lcom/google/android/gms/internal/play_billing/zzgl;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->b:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->h()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    sget-object v1, Lkpb;->b:Lkpb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :cond_2
    const-string p0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/play_billing/zzgp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzj()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzip;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzip;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;)V

    throw v0
.end method

.method public zzj()Lcom/google/android/gms/internal/play_billing/zzgp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkpb;->b:Lkpb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v0

    invoke-interface {v0, v1}, Lkqb;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->b()V

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object p0
.end method

.method public bridge synthetic zzk()Lcom/google/android/gms/internal/play_billing/zzhr;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzj()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/internal/play_billing/zzhr;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzo()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->f(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z

    move-result p0

    return p0
.end method
