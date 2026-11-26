.class public final Lh75;
.super Lb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh75$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb1<",
        "TT;TT;>;"
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
.method public constructor <init>(La75;Lze6;)V
    .locals 0

    invoke-direct {p0, p1}, Lb1;-><init>(La75;)V

    iput-object p2, p0, Lh75;->c:Lze6;

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lh75$a;

    iget-object v1, p0, Lh75;->c:Lze6;

    invoke-direct {v0, p1, v1}, Lh75$a;-><init>(Lt75;Lze6;)V

    iget-object p0, p0, Lb1;->b:Lx75;

    invoke-interface {p0, v0}, Lx75;->a(Lt75;)V

    return-void
.end method
