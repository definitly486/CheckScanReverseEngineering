.class public final Le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpv8;
.implements Lft9;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lrxa;


# static fields
.field public static final synthetic b:Le;

.field public static final synthetic c:Le;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le;->b:Le;

    new-instance v0, Le;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le;->c:Le;

    return-void
.end method

.method public static final c(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Ll03;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lf03;

    array-length v1, p1

    invoke-direct {v0, p0, v1}, Lf03;-><init>(Ljava/lang/String;I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, p1, v3

    add-int/lit8 v6, v4, 0x1

    invoke-static {v4, p2}, Lyr;->O(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-virtual {v0, v7, v2}, Ls96;->j(Ljava/lang/String;Z)V

    invoke-static {v4, p3}, Lyr;->O(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/annotation/Annotation;

    if-eqz v4, :cond_2

    array-length v5, v4

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v0, Ls96;->d:I

    iget-object v10, v0, Ls96;->f:[Ljava/util/List;

    aget-object v9, v10, v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget v11, v0, Ls96;->d:I

    aput-object v9, v10, v11

    :cond_1
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_3
    new-instance p2, Ll03;

    invoke-direct {p2, p0, p1}, Ll03;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    iput-object v0, p2, Ll03;->b:Lf03;

    return-object p2
.end method

.method public static final d(C)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x3a

    if-ge p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x67

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x47

    if-ge p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_2
    const-string v0, "Unexpected hex digit: "

    invoke-static {p0, v0}, Ld;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final e(Landroid/content/ComponentCallbacks;)Lze7;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lsj;

    if-eqz v0, :cond_0

    check-cast p0, Lsj;

    invoke-interface {p0}, Lsj;->getScope()Lze7;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Log4;

    if-eqz v0, :cond_1

    check-cast p0, Log4;

    invoke-interface {p0}, Log4;->getScope()Lze7;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljg4;

    if-eqz v0, :cond_2

    check-cast p0, Ljg4;

    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    return-object p0

    :cond_2
    sget-object p0, Lc;->d:Lhg4;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    return-object p0

    :cond_3
    const-string p0, "KoinApplication has not been started"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance p1, Ll5b;

    invoke-direct {p1, p2}, Ll5b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/location/zzu;->zzE(Lcom/google/android/gms/internal/location/zzn;)V

    return-void
.end method

.method public b()J
    .locals 2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzad()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
