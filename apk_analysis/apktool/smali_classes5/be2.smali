.class public final Lbe2;
.super Lae2;
.source "SourceFile"

# interfaces
.implements Le02;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lae2<",
        "TT;TR;>;",
        "Le02<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public b:Lde4;

.field public c:Ljava/lang/Object;

.field public d:Le02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le02<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Object;


# virtual methods
.method public final a(Ljava/lang/Object;Lee4;)La32;
    .locals 0

    iput-object p2, p0, Lbe2;->d:Le02;

    iput-object p1, p0, Lbe2;->c:Ljava/lang/Object;

    sget-object p0, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public final getContext()Lo22;
    .locals 0

    sget-object p0, Lgx2;->b:Lgx2;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbe2;->d:Le02;

    iput-object p1, p0, Lbe2;->e:Ljava/lang/Object;

    return-void
.end method
