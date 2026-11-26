.class public final Lfr5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr5$a;,
        Lfr5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lg1<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Lwr5<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ltq5;Lxl3;I)V
    .locals 0

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    iput-object p2, p0, Lfr5;->c:Lxl3;

    const p1, 0x7fffffff

    iput p1, p0, Lfr5;->d:I

    iput p3, p0, Lfr5;->e:I

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lg1;->b:Lwr5;

    iget-object v1, p0, Lfr5;->c:Lxl3;

    invoke-static {v0, p1, v1}, Ltr5;->a(Lwr5;Lls5;Lxl3;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lfr5$b;

    iget v3, p0, Lfr5;->d:I

    iget p0, p0, Lfr5;->e:I

    invoke-direct {v2, p1, v1, v3, p0}, Lfr5$b;-><init>(Lls5;Lxl3;II)V

    invoke-interface {v0, v2}, Lwr5;->a(Lls5;)V

    return-void
.end method
