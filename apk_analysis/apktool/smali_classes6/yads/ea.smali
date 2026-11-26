.class public final Lyads/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/rd4;

    sget-object v1, Lyads/rd4;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lyads/rd4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lyads/ea;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ea;->a:Lyads/e4;

    iput-object p3, p0, Lyads/ea;->b:Lyads/bf5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/ea;->c:Landroid/content/Context;

    return-void
.end method

.method public static final a(Lyads/cv4;Ljava/lang/String;Ljava/util/Map;Lyads/h75;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lyads/cv4;->a(Ljava/lang/String;Ljava/util/Map;Lyads/h75;)V

    return-void
.end method

.method public static synthetic a(Lyads/ea;Ljava/lang/String;Lyads/i16;Lyads/h75;I)V
    .locals 1

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    .line 28
    new-instance p3, Lyads/h75;

    const/4 p4, 0x0

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    .line 29
    :cond_0
    sget-object p4, Lmx2;->b:Lmx2;

    invoke-virtual {p0, p1, p2, p4, p3}, Lyads/ea;->a(Ljava/lang/String;Lyads/i16;Ljava/util/Map;Lyads/h75;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/i16;Ljava/util/Map;Lyads/h75;)V
    .locals 3

    new-instance v0, Lyads/cv4;

    iget-object v1, p0, Lyads/ea;->c:Landroid/content/Context;

    iget-object v2, p0, Lyads/ea;->a:Lyads/e4;

    iget-object p0, p0, Lyads/ea;->b:Lyads/bf5;

    invoke-direct {v0, v1, v2, p0, p2}, Lyads/cv4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/i16;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    sget-object p0, Lyads/ea;->d:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lgu9;

    invoke-direct {p2, v0, p1, p3, p4}, Lgu9;-><init>(Lyads/cv4;Ljava/lang/String;Ljava/util/Map;Lyads/h75;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
