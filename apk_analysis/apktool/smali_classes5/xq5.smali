.class public final Lxq5;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxq5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lrr5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrr5<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrr5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrr5<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Lxq5;->b:Lrr5;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lxq5$a;

    invoke-direct {v0, p1}, Lxq5$a;-><init>(Lls5;)V

    invoke-interface {p1, v0}, Lls5;->onSubscribe(Lcp2;)V

    :try_start_0
    iget-object p0, p0, Lxq5;->b:Lrr5;

    invoke-interface {p0, v0}, Lrr5;->a(Lxq5$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lxq5$a;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
