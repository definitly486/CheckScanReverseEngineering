.class public final Lpqa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzacv;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzacv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lpqa;->d:I

    iput-object p1, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzacv;->c:Lpqa;

    return-void
.end method

.method public static final v(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Failed to parse the message."

    invoke-static {p0}, Lxg;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static final w(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Failed to parse the message."

    invoke-static {p0}, Lxg;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 6

    instance-of v0, p1, Lhra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    iget-object v4, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lhra;

    and-int/lit8 p1, v1, 0x7

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zze()F

    move-result p1

    invoke-virtual {v0, p1}, Lhra;->b(F)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->v(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    add-int v5, p1, p0

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zze()F

    move-result p0

    invoke-virtual {v0, p0}, Lhra;->b(F)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, v5, :cond_4

    goto :goto_1

    :cond_5
    and-int/lit8 v0, v1, 0x7

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zze()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_6

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    return-void

    :cond_7
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->v(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    add-int/2addr v0, p0

    :cond_9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zze()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, v0, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public final B(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 6

    instance-of v0, p1, Ltra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    iget-object v3, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ltra;

    and-int/lit8 p1, v1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzf()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ltra;->b(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzf()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltra;->b(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzf()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzf()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 6

    instance-of v0, p1, Ltra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    iget-object v3, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ltra;

    and-int/lit8 p1, v1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzg()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ltra;->b(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltra;->b(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzg()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 4

    instance-of v0, p1, Lkra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    iget-object v3, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkra;

    and-int/lit8 p1, v1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 5

    instance-of v0, p1, Ltra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ltra;

    and-int/lit8 p1, v1, 0x7

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->w(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltra;->b(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltra;->b(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->w(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzi()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, v0, :cond_5

    goto :goto_1

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzi()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 6

    instance-of v0, p1, Lkra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    iget-object v4, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lkra;

    and-int/lit8 p1, v1, 0x7

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->v(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    add-int v5, p1, p0

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzj()I

    move-result p0

    invoke-virtual {v0, p0}, Lkra;->zzh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, v5, :cond_4

    goto :goto_1

    :cond_5
    and-int/lit8 v0, v1, 0x7

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_6

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    return-void

    :cond_7
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->v(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    add-int/2addr v0, p0

    :cond_9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzj()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, v0, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 4

    instance-of v0, p1, Liqa;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    iget-object v3, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Liqa;

    and-int/lit8 p1, v1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzk()Z

    move-result p1

    invoke-virtual {v0, p1}, Liqa;->b(Z)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzk()Z

    move-result p1

    invoke-virtual {v0, p1}, Liqa;->b(Z)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/measurement/zzaef;Z)V
    .locals 4

    iget v0, p0, Lpqa;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzaen;

    iget-object v2, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaen;

    :cond_1
    invoke-virtual {p0}, Lpqa;->y()Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzaen;->zzb()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p2

    iget v0, p0, Lpqa;->b:I

    if-eq p2, v0, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p0, v1}, Lpqa;->q(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzm()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lpqa;->q(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzl()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v3, p0, Lpqa;->b:I

    if-eq v0, v3, :cond_2

    move p2, v0

    :goto_2
    iput p2, p0, Lpqa;->d:I

    return-void

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/measurement/zzaef;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V
    .locals 3

    iget v0, p0, Lpqa;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lpqa;->r(Ljava/lang/Object;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-interface {p2, v1}, Lnsa;->a(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lpqa;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lpqa;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Ljh;->c()V

    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/measurement/zzaef;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lpqa;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lpqa;->s(Ljava/lang/Object;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-interface {p2, v1}, Lnsa;->a(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lpqa;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lpqa;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Ljh;->c()V

    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 2

    iget v0, p0, Lpqa;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lpqa;->y()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lpqa;->d:I

    return-void

    :cond_2
    invoke-static {}, Ljh;->c()V

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 4

    instance-of v0, p1, Lkra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    iget-object v3, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkra;

    and-int/lit8 p1, v1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 4

    instance-of v0, p1, Lkra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    iget-object v3, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkra;

    and-int/lit8 p1, v1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzq()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzq()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 6

    instance-of v0, p1, Lkra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    iget-object v4, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lkra;

    and-int/lit8 p1, v1, 0x7

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzr()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->v(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    add-int v5, p1, p0

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzr()I

    move-result p0

    invoke-virtual {v0, p0}, Lkra;->zzh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, v5, :cond_4

    goto :goto_1

    :cond_5
    and-int/lit8 v0, v1, 0x7

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_6

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    return-void

    :cond_7
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->v(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    add-int/2addr v0, p0

    :cond_9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzr()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, v0, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 5

    instance-of v0, p1, Ltra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ltra;

    and-int/lit8 p1, v1, 0x7

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->w(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltra;->b(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltra;->b(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->w(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, v0, :cond_5

    goto :goto_1

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 4

    instance-of v0, p1, Lkra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    iget-object v3, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkra;

    and-int/lit8 p1, v1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzt()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzt()I

    move-result p1

    invoke-virtual {v0, p1}, Lkra;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 6

    instance-of v0, p1, Ltra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    iget-object v3, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ltra;

    and-int/lit8 p1, v1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzu()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ltra;->b(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzu()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltra;->b(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzu()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lpqa;->u(I)V

    return-void

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/measurement/zzaew;Lwra;Lcom/google/android/gms/internal/measurement/zzadf;)V
    .locals 11

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lpqa;->q(I)V

    iget-object v1, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzD(I)I

    move-result v2

    iget-object v3, p2, Lwra;->c:Ljava/lang/Object;

    const-string v4, ""

    move-object v5, v3

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lpqa;->x()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    goto :goto_5

    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "Unable to parse map entry."

    if-eq v6, v7, :cond_5

    if-eq v6, v0, :cond_4

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lpqa;->b:I

    iget v7, p0, Lpqa;->c:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/measurement/zzacv;->zzc(I)Z

    move-result v6

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v8

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzaeh;

    invoke-direct {v6, v9}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v6

    goto :goto_3

    :cond_4
    iget-object v6, p2, Lwra;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p3}, Lpqa;->t(Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadf;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_5
    iget-object v6, p2, Lwra;->a:Lcom/google/android/gms/internal/measurement/zzagm;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v7}, Lpqa;->t(Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadf;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, p0, Lpqa;->b:I

    iget v10, p0, Lpqa;->c:I

    if-ne v7, v10, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/measurement/zzacv;->zzc(I)Z

    move-result v8

    :cond_7
    :goto_4
    if-eqz v8, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzaeh;

    invoke-direct {p0, v9, v6}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw p0

    :cond_9
    :goto_5
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzE(I)V

    return-void

    :goto_6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzE(I)V

    throw p0
.end method

.method public final q(I)V
    .locals 0

    iget p0, p0, Lpqa;->b:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljh;->c()V

    return-void
.end method

.method public final r(Ljava/lang/Object;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V
    .locals 3

    iget-object v0, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzO()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzD(I)I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/measurement/zzacv;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/measurement/zzacv;->a:I

    invoke-interface {p2, p1, p0, p3}, Lnsa;->b(Ljava/lang/Object;Lpqa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzb(I)V

    iget p0, v0, Lcom/google/android/gms/internal/measurement/zzacv;->a:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Lcom/google/android/gms/internal/measurement/zzacv;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzE(I)V

    return-void
.end method

.method public final s(Ljava/lang/Object;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V
    .locals 2

    iget v0, p0, Lpqa;->c:I

    iget v1, p0, Lpqa;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lpqa;->c:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lnsa;->b(Ljava/lang/Object;Lpqa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    iget p1, p0, Lpqa;->b:I

    iget p2, p0, Lpqa;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lpqa;->c:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string p2, "Failed to parse the message."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lpqa;->c:I

    throw p1
.end method

.method public final t(Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadf;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagm;->zza:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p0, "unsupported field type."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v3}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzu()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v3}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, v2}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzs()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, v1}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzr()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, v3}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzq()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, v3}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lpqa;->y()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, v0}, Lpqa;->q(I)V

    sget-object p1, Lksa;->c:Lksa;

    invoke-virtual {p1, p2}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object p1

    invoke-interface {p1}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lpqa;->r(Ljava/lang/Object;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-interface {p1, p2}, Lnsa;->a(Ljava/lang/Object;)V

    return-object p2

    :pswitch_9
    invoke-virtual {p0, v0}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, v3}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzk()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, v1}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzj()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, v2}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzi()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, v3}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzh()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, v3}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzf()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, v3}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzg()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, v1}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zze()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, v2}, Lpqa;->q(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzd()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final u(I)V
    .locals 0

    iget-object p0, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const-string p0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-static {p0}, Lxg;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final x()I
    .locals 2

    iget v0, p0, Lpqa;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lpqa;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lpqa;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iput v0, p0, Lpqa;->b:I

    :goto_0
    if-eqz v0, :cond_2

    iget p0, p0, Lpqa;->c:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public final y()Lcom/google/android/gms/internal/measurement/zzacr;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lpqa;->q(I)V

    iget-object p0, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzn()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lcom/google/android/gms/internal/measurement/zzaef;)V
    .locals 5

    instance-of v0, p1, Lcra;

    iget v1, p0, Lpqa;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcra;

    and-int/lit8 p1, v1, 0x7

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->w(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzd()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcra;->b(D)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzd()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcra;->b(D)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result p1

    iget v1, p0, Lpqa;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p0

    invoke-static {p0}, Lpqa;->w(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzd()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzH()I

    move-result p0

    if-lt p0, v0, :cond_5

    goto :goto_1

    :cond_6
    invoke-static {}, Ljh;->c()V

    return-void

    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzd()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzG()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zza()I

    move-result v0

    iget v1, p0, Lpqa;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lpqa;->d:I

    :cond_8
    :goto_1
    return-void
.end method
