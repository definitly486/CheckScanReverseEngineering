.class public final Lo08;
.super Lmz7;
.source "SourceFile"


# annotations
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

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lo08;->b:Ljava/lang/Object;

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

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Lo08;->b:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lt08;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
