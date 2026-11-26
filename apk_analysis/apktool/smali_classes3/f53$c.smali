.class public final Lf53$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf53$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lf53$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf53$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Landroidx/core/util/Pools$SynchronizedPool;


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$SynchronizedPool;Lf53$b;Lf53$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf53$c;->c:Landroidx/core/util/Pools$SynchronizedPool;

    iput-object p2, p0, Lf53$c;->a:Lf53$b;

    iput-object p3, p0, Lf53$c;->b:Lf53$e;

    return-void
.end method


# virtual methods
.method public final acquire()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lf53$c;->c:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lf53$c;->a:Lf53$b;

    invoke-interface {p0}, Lf53$b;->create()Ljava/lang/Object;

    move-result-object v0

    const/4 p0, 0x2

    const-string v1, "FactoryPools"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Created new "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of p0, v0, Lf53$d;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Lf53$d;

    invoke-interface {p0}, Lf53$d;->d()Lc78$a;

    move-result-object p0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc78$a;->a:Z

    :cond_1
    return-object v0
.end method

.method public final release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    instance-of v0, p1, Lf53$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lf53$d;

    invoke-interface {v0}, Lf53$d;->d()Lc78$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc78$a;->a:Z

    :cond_0
    iget-object v0, p0, Lf53$c;->b:Lf53$e;

    invoke-interface {v0, p1}, Lf53$e;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Lf53$c;->c:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-interface {p0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
