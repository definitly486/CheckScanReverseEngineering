.class public final Lyads/y45;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lyads/x45;

.field public static final c:Ljava/lang/Object;

.field public static volatile d:Lyads/y45;


# instance fields
.field public final a:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/x45;

    invoke-direct {v0}, Lyads/x45;-><init>()V

    sput-object v0, Lyads/y45;->b:Lyads/x45;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/y45;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lyads/y45;->a:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lyads/cp;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lyads/y45;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/y45;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
