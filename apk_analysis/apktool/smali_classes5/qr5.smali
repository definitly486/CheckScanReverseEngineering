.class public final Lqr5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqr5$a;
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
.field public final c:Lhe7;

.field public final d:I


# direct methods
.method public constructor <init>(Ltq5;Lhe7;I)V
    .locals 0

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    iput-object p2, p0, Lqr5;->c:Lhe7;

    iput p3, p0, Lqr5;->d:I

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lqr5;->c:Lhe7;

    instance-of v1, v0, Lvy8;

    iget-object v2, p0, Lg1;->b:Lwr5;

    if-eqz v1, :cond_0

    invoke-interface {v2, p1}, Lwr5;->a(Lls5;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lhe7;->b()Lhe7$c;

    move-result-object v0

    new-instance v1, Lqr5$a;

    iget p0, p0, Lqr5;->d:I

    invoke-direct {v1, p1, v0, p0}, Lqr5$a;-><init>(Lls5;Lhe7$c;I)V

    invoke-interface {v2, v1}, Lwr5;->a(Lls5;)V

    return-void
.end method
