.class public final Lxg3;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxg3$a;,
        Lxg3$b;,
        Lxg3$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgg3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgg3;-><init>()V

    iput-object p1, p0, Lxg3;->c:[Ljava/lang/Object;

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

    iget-object p0, p0, Lxg3;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Lxg3$a;

    move-object v1, p1

    check-cast v1, Lgv1;

    invoke-direct {v0, v1, p0}, Lxg3$a;-><init>(Lgv1;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    return-void

    :cond_0
    new-instance v0, Lxg3$b;

    invoke-direct {v0, p1, p0}, Lxg3$b;-><init>(Lwb8;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    return-void
.end method
