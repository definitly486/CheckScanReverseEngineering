.class public final Lgh3;
.super Lk0;
.source "SourceFile"

# interfaces
.implements Lqx1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgh3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TT;>;",
        "Lqx1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lgh3;


# direct methods
.method public constructor <init>(Lah3;)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p0, p0, Lgh3;->d:Lgh3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final g(Lwb8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lgh3$a;

    iget-object v1, p0, Lgh3;->d:Lgh3;

    invoke-direct {v0, p1, v1}, Lgh3$a;-><init>(Lwb8;Lgh3;)V

    iget-object p0, p0, Lk0;->c:Lgg3;

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
