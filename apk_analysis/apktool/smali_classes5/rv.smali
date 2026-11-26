.class public final Lrv;
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
        "Ljava/lang/String;",
        ">;",
        "Lc18<",
        "+",
        "Lb36<",
        "+",
        "Lxu4;",
        "+",
        "Lwu4$a;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lb36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb36<",
            "Lxu4;",
            "Lwu4$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb36;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb36<",
            "+",
            "Lxu4;",
            "Lwu4$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lrv;->f:Lb36;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lrv;->f:Lb36;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0
.end method
