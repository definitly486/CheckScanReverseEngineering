.class public final Lq75;
.super La75;
.source "SourceFile"

# interfaces
.implements Lkd7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La75<",
        "TT;>;",
        "Lkd7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, La75;-><init>()V

    iput-object p1, p0, Lq75;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lq75;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Lt75;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lt75;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Lq75;->b:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lt75;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
