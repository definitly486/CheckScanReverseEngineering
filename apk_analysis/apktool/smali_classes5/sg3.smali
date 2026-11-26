.class public final Lsg3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg3$a;,
        Lsg3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lze6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze6<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg3;Lze6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg3<",
            "TT;>;",
            "Lze6<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p2, p0, Lsg3;->d:Lze6;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lgv1;

    iget-object v1, p0, Lsg3;->d:Lze6;

    iget-object p0, p0, Lk0;->c:Lgg3;

    if-eqz v0, :cond_0

    new-instance v0, Lsg3$a;

    check-cast p1, Lgv1;

    invoke-direct {v0, p1, v1}, Lsg3$a;-><init>(Lgv1;Lze6;)V

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void

    :cond_0
    new-instance v0, Lsg3$b;

    invoke-direct {v0, p1, v1}, Lsg3$b;-><init>(Lwb8;Lze6;)V

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
