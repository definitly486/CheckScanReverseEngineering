.class public final Lyr5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyr5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg1<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lor5;


# direct methods
.method public constructor <init>(Ler5;Lor5;)V
    .locals 0

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    iput-object p2, p0, Lyr5;->c:Lor5;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lyr5$a;

    iget-object v1, p0, Lyr5;->c:Lor5;

    invoke-direct {v0, p1, v1}, Lyr5$a;-><init>(Lls5;Lor5;)V

    iget-object v1, v0, Lyr5$a;->d:Lkp7;

    invoke-interface {p1, v1}, Lls5;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Lg1;->b:Lwr5;

    invoke-interface {p0, v0}, Lwr5;->a(Lls5;)V

    return-void
.end method
