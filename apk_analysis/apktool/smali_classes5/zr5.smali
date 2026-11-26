.class public final Lzr5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzr5$a;,
        Lzr5$b;
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
.field public final c:Lw3;

.field public final d:I


# direct methods
.method public constructor <init>(Lzq5;Lw3;I)V
    .locals 0

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    iput-object p2, p0, Lzr5;->c:Lw3;

    iput p3, p0, Lzr5;->d:I

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lg1;->b:Lwr5;

    iget-object v1, p0, Lzr5;->c:Lw3;

    invoke-static {v0, p1, v1}, Ltr5;->a(Lwr5;Lls5;Lxl3;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lzr5$b;

    iget p0, p0, Lzr5;->d:I

    invoke-direct {v2, p1, v1, p0}, Lzr5$b;-><init>(Lls5;Lw3;I)V

    invoke-interface {v0, v2}, Lwr5;->a(Lls5;)V

    return-void
.end method
