.class public final Lxib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lxib;


# instance fields
.field public final a:Lqqb;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxib;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxib;-><init>(I)V

    sput-object v0, Lxib;->d:Lxib;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqqb;

    invoke-direct {v0}, Lqqb;-><init>()V

    iput-object v0, p0, Lxib;->a:Lqqb;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    new-instance p1, Lqqb;

    invoke-direct {p1}, Lqqb;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxib;->a:Lqqb;

    invoke-virtual {p0}, Lxib;->e()V

    invoke-virtual {p0}, Lxib;->e()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I
    .locals 1

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjg;->zzj:Lcom/google/android/gms/internal/play_billing/zzjg;

    if-ne p0, v0, :cond_0

    add-int/2addr p1, p1

    :cond_0
    invoke-static {p0, p2}, Lxib;->b(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)I
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjg;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjh;->zza:Lcom/google/android/gms/internal/play_billing/zzjh;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    const-string p0, "There is no way to get here, but the compiler thinks otherwise."

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p1, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0

    :pswitch_4
    instance-of p0, p1, Lcom/google/android/gms/internal/play_billing/zzgr;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/zzgr;->zza()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_1
    check-cast p1, [B

    array-length p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p1

    goto :goto_0

    :pswitch_7
    instance-of p0, p1, Lslb;

    if-eqz p0, :cond_3

    check-cast p1, Lslb;

    iget-object p0, p1, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p0

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lslb;->d:Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzn()I

    move-result p0

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzx(Lcom/google/android/gms/internal/play_billing/zzhr;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzn()I

    move-result p0

    return p0

    :pswitch_9
    instance-of p0, p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p1

    goto :goto_0

    :cond_4
    check-cast p1, Ljava/lang/String;

    sget p0, Ldvb;->a:I

    invoke-static {p1}, Ldub;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p1

    goto :goto_0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)I
    .locals 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjg;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zza()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zze()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    move p0, v3

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lxib;->b(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p1

    add-int/2addr p1, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_1
    return v3

    :cond_2
    move p0, v3

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lxib;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return p0

    :cond_4
    invoke-static {v0, v1, p1}, Lxib;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static g(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjg;->zzj:Lcom/google/android/gms/internal/play_billing/zzjg;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjg;->zza()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjh;->zza:Lcom/google/android/gms/internal/play_billing/zzjh;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzw(J)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzk(J)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzi(I)V

    return-void

    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/zzgr;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzgr;

    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/zzgr;->zza()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzm(I)V

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzm(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzg(Lcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void

    :cond_1
    check-cast p3, [B

    array-length p1, p3

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->a(I[B)V

    return-void

    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzn(Lcom/google/android/gms/internal/play_billing/zzhr;)V

    return-void

    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzD(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    return-void

    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzg(Lcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzr(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzb(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzi(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzk(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzm(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzw(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzw(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzi(I)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzk(J)V

    return-void

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzhr;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzD(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    return-void

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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Ljava/util/Map$Entry;)Z
    .locals 7

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjh;->zzi:Lcom/google/android/gms/internal/play_billing/zzjh;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zze()Z

    move-result v0

    const-string v1, "Wrong object type used with protocol message reflection."

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_6

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/play_billing/zzhs;

    if-eqz v6, :cond_0

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhs;

    invoke-interface {v5}, Lcom/google/android/gms/internal/play_billing/zzhs;->zzo()Z

    move-result v5

    goto :goto_1

    :cond_0
    instance-of v5, v5, Lslb;

    if-eqz v5, :cond_2

    move v5, v3

    :goto_1
    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lfg;->c(Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzhs;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhs;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzhs;->zzo()Z

    move-result p0

    return p0

    :cond_4
    instance-of p0, p0, Lslb;

    if-eqz p0, :cond_5

    return v3

    :cond_5
    invoke-static {v1}, Lfg;->c(Ljava/lang/String;)V

    return v2

    :cond_6
    return v3
.end method

.method public static final j(Ljava/util/Map$Entry;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjh;->zzi:Lcom/google/android/gms/internal/play_billing/zzjh;

    if-ne v2, v3, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zze()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd()Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v0, v1, Lslb;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    check-cast v1, Lslb;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zza()I

    move-result p0

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v2

    iget-object v3, v1, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lslb;->d:Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzn()I

    move-result v1

    :goto_0
    invoke-static {v1, v1, v2}, Lbj;->b(III)I

    move-result v1

    :goto_1
    add-int/2addr v0, p0

    add-int/2addr v0, v1

    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzx(Lcom/google/android/gms/internal/play_billing/zzhr;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Lxib;->c(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final k(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjg;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjg;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjh;->zza:Lcom/google/android/gms/internal/play_billing/zzjh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzjg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzhr;

    if-nez v0, :cond_0

    instance-of v0, p1, Lslb;

    if-eqz v0, :cond_3

    :cond_0
    return-void

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzgr;

    if-eqz v0, :cond_3

    :cond_1
    return-void

    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-nez v0, :cond_2

    instance-of v0, p1, [B

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_3

    return-void

    :cond_3
    :goto_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzjg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Lnz0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lxib;

    invoke-direct {v0}, Lxib;-><init>()V

    iget-object v1, p0, Lxib;->a:Lqqb;

    iget v2, v1, Lnrb;->c:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lnrb;->d(I)Luqb;

    move-result-object v4

    iget-object v5, v4, Luqb;->b:Lcom/google/android/gms/internal/play_billing/zzgg;

    iget-object v4, v4, Luqb;->c:Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Lxib;->f(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lnrb;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lxib;->f(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lxib;->c:Z

    iput-boolean p0, v0, Lxib;->c:Z

    return-object v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lxib;->a:Lqqb;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lxib;->c:Z

    if-eqz p0, :cond_1

    new-instance p0, Lilb;

    invoke-virtual {v0}, Lnrb;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lfrb;

    invoke-virtual {v0}, Lfrb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lilb;-><init>(Ljava/util/Iterator;)V

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lnrb;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lfrb;

    invoke-virtual {p0}, Lfrb;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 6

    iget-boolean v0, p0, Lxib;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lxib;->a:Lqqb;

    iget v1, v0, Lnrb;->c:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lnrb;->d(I)Luqb;

    move-result-object v3

    iget-object v3, v3, Luqb;->c:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/zzgp;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzgp;

    sget-object v4, Lkpb;->b:Lkpb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v4

    invoke-interface {v4, v3}, Lkqb;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzgp;->b()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lnrb;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/play_billing/zzgp;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgp;

    sget-object v3, Lkpb;->b:Lkpb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v3

    invoke-interface {v3, v2}, Lkqb;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzgp;->b()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lqqb;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxib;->b:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p1, Lxib;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lxib;

    iget-object p1, p1, Lxib;->a:Lqqb;

    iget-object p0, p0, Lxib;->a:Lqqb;

    invoke-virtual {p0}, Lnrb;->size()I

    move-result v1

    invoke-virtual {p1}, Lnrb;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lnrb;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lfrb;

    invoke-virtual {p0}, Lfrb;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    move-object v1, p0

    check-cast v1, Larb;

    invoke-virtual {v1}, Larb;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Larb;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v3}, Lnrb;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    if-nez v3, :cond_7

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    instance-of v4, v1, Lslb;

    if-eqz v4, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_8
    instance-of v4, v3, Lslb;

    if-eqz v4, :cond_9

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_a
    :goto_2
    return v0
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/zzgg;->zze()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lxib;->k(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    goto :goto_1

    :cond_1
    const-string p0, "Wrong object type used with protocol message reflection."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p1, p2}, Lxib;->k(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lslb;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxib;->c:Z

    :cond_3
    iget-object p0, p0, Lxib;->a:Lqqb;

    invoke-virtual {p0, p1, p2}, Lnrb;->c(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h()Z
    .locals 4

    iget-object p0, p0, Lxib;->a:Lqqb;

    iget v0, p0, Lnrb;->c:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lnrb;->d(I)Luqb;

    move-result-object v3

    invoke-static {v3}, Lxib;->i(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnrb;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lxib;->i(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lxib;->a:Lqqb;

    invoke-virtual {p0}, Lnrb;->hashCode()I

    move-result p0

    return p0
.end method
