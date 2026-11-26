.class public Lm13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0b;


# static fields
.field public static final synthetic b:Lm13;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lm13;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm13;->b:Lm13;

    return-void
.end method

.method public static final b(Lhd3;Ljava/lang/String;Lnl3;)Lde3;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lpd3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lpd3;-><init>(Ljava/lang/String;Lnl3;Le02;)V

    new-instance p1, Lde3;

    invoke-direct {p1, p0, v0}, Lde3;-><init>(Lhd3;Ldm3;)V

    return-object p1
.end method

.method public static synthetic c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lod3;->g:Lod3;

    :cond_1
    invoke-static {p0, p1, p2}, Lm13;->b(Lhd3;Ljava/lang/String;Lnl3;)Lde3;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    :cond_1
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    :cond_2
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/gms/internal/location/zzec;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/internal/location/zzec;->zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
