.class public final Lar5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar5$a;
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
.field public final c:Z


# direct methods
.method public constructor <init>(Ler5;)V
    .locals 0

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lar5;->c:Z

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

    new-instance v0, Lar5$a;

    iget-boolean v1, p0, Lar5;->c:Z

    invoke-direct {v0, p1, v1}, Lar5$a;-><init>(Lls5;Z)V

    iget-object p0, p0, Lg1;->b:Lwr5;

    invoke-interface {p0, v0}, Lwr5;->a(Lls5;)V

    return-void
.end method
