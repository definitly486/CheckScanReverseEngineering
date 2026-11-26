.class public final Lir5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lg1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:Lq01;


# direct methods
.method public constructor <init>(Lqr5;Lq01;)V
    .locals 0

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    iput-object p2, p0, Lir5;->c:Lq01;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Lir5$a;

    iget-object v1, p0, Lir5;->c:Lq01;

    invoke-direct {v0, p1, v1}, Lir5$a;-><init>(Lls5;Lq01;)V

    iget-object p0, p0, Lg1;->b:Lwr5;

    invoke-interface {p0, v0}, Lwr5;->a(Lls5;)V

    return-void
.end method
