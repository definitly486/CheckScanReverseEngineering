.class public final Leh3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh3$b;,
        Leh3$c;,
        Leh3$a;
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
.field public final d:Lhe7;

.field public final e:I


# direct methods
.method public constructor <init>(Lgg3;Lhe7;I)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p2, p0, Leh3;->d:Lhe7;

    iput p3, p0, Leh3;->e:I

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Leh3;->d:Lhe7;

    invoke-virtual {v0}, Lhe7;->b()Lhe7$c;

    move-result-object v0

    instance-of v1, p1, Lgv1;

    iget v2, p0, Leh3;->e:I

    iget-object p0, p0, Lk0;->c:Lgg3;

    if-eqz v1, :cond_0

    new-instance v1, Leh3$b;

    check-cast p1, Lgv1;

    invoke-direct {v1, p1, v0, v2}, Leh3$b;-><init>(Lgv1;Lhe7$c;I)V

    invoke-virtual {p0, v1}, Lgg3;->f(Lrh3;)V

    return-void

    :cond_0
    new-instance v1, Leh3$c;

    invoke-direct {v1, p1, v0, v2}, Leh3$c;-><init>(Lwb8;Lhe7$c;I)V

    invoke-virtual {p0, v1}, Lgg3;->f(Lrh3;)V

    return-void
.end method
