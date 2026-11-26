.class public final Lbj4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lwk4;",
        ">;",
        "Laj4$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lbj4;->f:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Laj4$a;

    iget-boolean p0, p0, Lbj4;->f:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-direct {v0, p1, p0}, Laj4$a;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method
