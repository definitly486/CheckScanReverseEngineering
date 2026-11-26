.class public final Lth3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lth3$a;
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

    iput-object p2, p0, Lth3;->d:Lze6;

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

    new-instance v0, Lth3$a;

    iget-object v1, p0, Lth3;->d:Lze6;

    invoke-direct {v0, p1, v1}, Lth3$a;-><init>(Lwb8;Lze6;)V

    iget-object p0, p0, Lk0;->c:Lgg3;

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
