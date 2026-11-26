.class public final Loe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final b:Lba8;

.field public static final c:Lba8;

.field public static final d:Lba8;

.field public static final e:Lba8;

.field public static final f:Lbh8;

.field public static final synthetic g:Loe0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lba8;

    const-string v1, "APP_ROUTER"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Loe0;->b:Lba8;

    new-instance v0, Lba8;

    const-string v1, "APP_CICERONE"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Loe0;->c:Lba8;

    new-instance v0, Lba8;

    const-string v1, "APP_NAV_HOLDER"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Loe0;->d:Lba8;

    new-instance v0, Lba8;

    const-string v1, "APPLICATION_SCOPE"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Loe0;->e:Lba8;

    new-instance v0, Lbh8;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Loe0;->f:Lbh8;

    new-instance v0, Loe0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loe0;->g:Loe0;

    return-void
.end method

.method public static final a(Lhl7;JLbm3;)Ljava/lang/Object;
    .locals 6

    :goto_0
    move-object v1, p0

    :goto_1
    iget-wide v2, v1, Lhl7;->e:J

    cmp-long p0, v2, p1

    if-ltz p0, :cond_1

    invoke-virtual {v1}, Lhl7;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    return-object v1

    :cond_1
    :goto_2
    sget-object p0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Ldv1;->b:J

    invoke-virtual {p0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Loe0;->f:Lbh8;

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    check-cast p0, Ldv1;

    check-cast p0, Lhl7;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v2, v1, Lhl7;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p3, p0, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lhl7;

    :cond_4
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Ldv1;->b:J

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v1}, Lhl7;->d()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Ldv1;->e()V

    :cond_5
    move-object v1, v5

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_1
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lyq1;

    if-eqz v0, :cond_0

    check-cast p0, Lyq1;

    iget-object p0, p0, Lyq1;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Lr57;->a(Ljava/lang/Throwable;)Lk57$a;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzahe;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
