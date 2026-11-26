.class public final Lw87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt08;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt08<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw87;->b:Lc31;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lw87;->b:Lc31;

    invoke-static {p1}, Lr57;->a(Ljava/lang/Throwable;)Lk57$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 2

    new-instance v0, Lom4;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lom4;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lw87;->b:Lc31;

    invoke-virtual {p0, v0}, Lc31;->n(Lnl3;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lw87;->b:Lc31;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
