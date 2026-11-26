.class public final Loz7;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loz7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lw08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw08<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw08;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw08<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Loz7;->b:Lw08;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Loz7$a;

    invoke-direct {v0, p1}, Loz7$a;-><init>(Lt08;)V

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    :try_start_0
    iget-object p0, p0, Loz7;->b:Lw08;

    invoke-interface {p0, v0}, Lw08;->c(Loz7$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Loz7$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
