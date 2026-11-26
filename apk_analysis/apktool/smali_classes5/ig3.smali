.class public final Lig3;
.super Lmz7;
.source "SourceFile"

# interfaces
.implements Ltm3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TU;>;",
        "Ltm3<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:Lvg3;

.field public final c:Los5;

.field public final d:Lb9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb9;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvg3;Los5;Lb9;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lig3;->b:Lvg3;

    iput-object p2, p0, Lig3;->c:Los5;

    iput-object p3, p0, Lig3;->d:Lb9;

    return-void
.end method


# virtual methods
.method public final c()Lgg3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg3<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lhg3;

    iget-object v1, p0, Lig3;->c:Los5;

    iget-object v2, p0, Lig3;->d:Lb9;

    iget-object p0, p0, Lig3;->b:Lvg3;

    invoke-direct {v0, p0, v1, v2}, Lhg3;-><init>(Lvg3;Los5;Lb9;)V

    return-object v0
.end method

.method public final h(Lt08;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lig3;->c:Los5;

    invoke-virtual {v0}, Los5;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lig3$a;

    iget-object v2, p0, Lig3;->d:Lb9;

    invoke-direct {v1, p1, v0, v2}, Lig3$a;-><init>(Lt08;Ljava/lang/Object;Lb9;)V

    iget-object p0, p0, Lig3;->b:Lvg3;

    invoke-virtual {p0, v1}, Lgg3;->f(Lrh3;)V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
