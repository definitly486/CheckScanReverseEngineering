.class public final Lvh3;
.super Lmz7;
.source "SourceFile"

# interfaces
.implements Ltm3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvh3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lmz7<",
        "TU;>;",
        "Ltm3<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:Lug3;

.field public final c:Lnr;


# direct methods
.method public constructor <init>(Lug3;)V
    .locals 1

    sget-object v0, Lnr;->INSTANCE:Lnr;

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lvh3;->b:Lug3;

    iput-object v0, p0, Lvh3;->c:Lnr;

    return-void
.end method


# virtual methods
.method public final c()Lgg3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg3<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Luh3;

    iget-object v1, p0, Lvh3;->b:Lug3;

    iget-object p0, p0, Lvh3;->c:Lnr;

    invoke-direct {v0, v1, p0}, Luh3;-><init>(Lug3;Lnr;)V

    return-object v0
.end method

.method public final h(Lt08;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lvh3;->c:Lnr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lvh3$a;

    invoke-direct {v1, p1, v0}, Lvh3$a;-><init>(Lt08;Ljava/util/Collection;)V

    iget-object p0, p0, Lvh3;->b:Lug3;

    invoke-virtual {p0, v1}, Lgg3;->f(Lrh3;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
