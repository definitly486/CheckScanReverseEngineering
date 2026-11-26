.class public final Lor5;
.super Ltq5;
.source "SourceFile"

# interfaces
.implements Lkd7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
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

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Lor5;->b:Ljava/lang/Object;

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

    iget-object p0, p0, Lor5;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final f(Lls5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ltr5$a;

    iget-object p0, p0, Lor5;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Ltr5$a;-><init>(Lls5;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lls5;->onSubscribe(Lcp2;)V

    invoke-virtual {v0}, Ltr5$a;->run()V

    return-void
.end method
