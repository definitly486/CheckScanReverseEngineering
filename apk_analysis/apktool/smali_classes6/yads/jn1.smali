.class public final Lyads/jn1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lyads/in1;

.field public static final c:Lyads/do1;

.field public static volatile d:Lyads/jn1;


# instance fields
.field public final a:Lyads/bo1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/in1;

    invoke-direct {v0}, Lyads/in1;-><init>()V

    sput-object v0, Lyads/jn1;->b:Lyads/in1;

    new-instance v0, Lyads/co1;

    invoke-direct {v0}, Lyads/co1;-><init>()V

    new-instance v1, Lyads/do1;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, v0, Lyads/co1;->a:Lws6;

    iget-object v0, v0, Lyads/co1;->b:Lws6;

    invoke-direct {v1, v2, v3, v0}, Lyads/do1;-><init>(Ljava/util/concurrent/ExecutorService;Lws6;Lws6;)V

    sput-object v1, Lyads/jn1;->c:Lyads/do1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/do1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/bo1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lyads/bo1;-><init>(Landroid/content/Context;Lyads/do1;)V

    iput-object v0, p0, Lyads/jn1;->a:Lyads/bo1;

    return-void
.end method
