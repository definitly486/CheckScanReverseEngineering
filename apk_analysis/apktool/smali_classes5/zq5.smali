.class public final Lzq5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzq5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lg1<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lrm3$i;

.field public final d:Lnq5$a;


# direct methods
.method public constructor <init>(Ltq5;)V
    .locals 0

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    sget-object p1, Lrm3;->a:Lrm3$i;

    iput-object p1, p0, Lzq5;->c:Lrm3$i;

    sget-object p1, Lnq5;->a:Lnq5$a;

    iput-object p1, p0, Lzq5;->d:Lnq5$a;

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

    new-instance v0, Lzq5$a;

    iget-object v1, p0, Lzq5;->c:Lrm3$i;

    iget-object v2, p0, Lzq5;->d:Lnq5$a;

    invoke-direct {v0, p1, v1, v2}, Lzq5$a;-><init>(Lls5;Lrm3$i;Lnq5$a;)V

    iget-object p0, p0, Lg1;->b:Lwr5;

    invoke-interface {p0, v0}, Lwr5;->a(Lls5;)V

    return-void
.end method
