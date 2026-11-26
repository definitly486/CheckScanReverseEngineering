.class public final synthetic Ly2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# static fields
.field public static final synthetic b:Ly2c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly2c;->b:Ly2c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzlk;->j:Ljava/lang/Object;

    sget-object p0, Lv2c;->b:Lv2c;

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    instance-of v0, p0, Lxr4;

    if-eqz v0, :cond_0

    check-cast p0, Lxr4;

    return-object p0

    :cond_0
    new-instance v0, Lnd5$b;

    invoke-direct {v0, p0}, Lnd5$b;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method
