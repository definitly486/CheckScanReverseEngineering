.class public final Luq5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luq5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg1<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lze6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze6<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpr5;Lrm3$g;)V
    .locals 0

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    iput-object p2, p0, Luq5;->c:Lze6;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Luq5$a;

    iget-object v1, p0, Luq5;->c:Lze6;

    invoke-direct {v0, p1, v1}, Luq5$a;-><init>(Lls5;Lze6;)V

    iget-object p0, p0, Lg1;->b:Lwr5;

    invoke-interface {p0, v0}, Lwr5;->a(Lls5;)V

    return-void
.end method
