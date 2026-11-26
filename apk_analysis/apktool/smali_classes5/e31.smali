.class public final Le31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;
.implements Lcom/google/android/gms/internal/cloudmessaging/zzs;


# static fields
.field public static final synthetic b:Le31;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le31;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le31;->b:Le31;

    return-void
.end method

.method public static a(JLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") must be >= 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Le02;)Lc31;
    .locals 9

    instance-of v0, p0, Lfo2;

    if-nez v0, :cond_0

    new-instance v0, Lc31;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lc31;-><init>(ILe02;)V

    return-object v0

    :cond_0
    move-object v3, p0

    check-cast v3, Lfo2;

    sget-object v7, Lgo2;->c:Lbh8;

    sget-wide v0, Lfo2;->i:J

    :cond_1
    :goto_0
    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    if-nez v6, :cond_2

    invoke-virtual {v2, v3, v0, v1, v7}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v8

    goto :goto_1

    :cond_2
    instance-of v2, v6, Lc31;

    if-eqz v2, :cond_8

    :cond_3
    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v4, Lfo2;->i:J

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    check-cast v6, Lc31;

    :goto_1
    if-eqz v6, :cond_6

    sget-wide v0, Lc31;->i:J

    invoke-virtual {v2, v6, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lwq1;

    if-eqz v4, :cond_4

    check-cast v3, Lwq1;

    iget-object v3, v3, Lwq1;->d:Ljava/lang/Object;

    if-eqz v3, :cond_4

    invoke-virtual {v6}, Lc31;->o()V

    goto :goto_2

    :cond_4
    const v3, 0x1fffffff

    sget-wide v4, Lc31;->g:J

    invoke-virtual {v2, v6, v4, v5, v3}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    sget-object v3, Lv6;->b:Lv6;

    invoke-virtual {v2, v6, v0, v1, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v8, v6

    :goto_2
    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    return-object v8

    :cond_6
    :goto_3
    new-instance v0, Lc31;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lc31;-><init>(ILe02;)V

    return-object v0

    :cond_7
    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v6, :cond_3

    goto :goto_0

    :cond_8
    if-eq v6, v7, :cond_1

    instance-of v2, v6, Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    const-string p0, "Inconsistent state "

    invoke-static {v6, p0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzahq;->zza()Z

    move-result p0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
