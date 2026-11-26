.class public final Ldh3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldh3$a;,
        Ldh3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg3;Lxl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg3<",
            "TT;>;",
            "Lxl3<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p2, p0, Ldh3;->d:Lxl3;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TU;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lgv1;

    iget-object v1, p0, Ldh3;->d:Lxl3;

    iget-object p0, p0, Lk0;->c:Lgg3;

    if-eqz v0, :cond_0

    new-instance v0, Ldh3$a;

    check-cast p1, Lgv1;

    invoke-direct {v0, p1, v1}, Ldh3$a;-><init>(Lgv1;Lxl3;)V

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void

    :cond_0
    new-instance v0, Ldh3$b;

    invoke-direct {v0, p1, v1}, Ldh3$b;-><init>(Lwb8;Lxl3;)V

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
