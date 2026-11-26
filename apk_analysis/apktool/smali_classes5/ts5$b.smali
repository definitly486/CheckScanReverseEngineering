.class public final Lts5$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lts5;->h(Lkd4;Lhv6;)Lmz7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/ArrayList<",
        "Lus5;",
        ">;",
        "Lc18<",
        "+",
        "La57<",
        "Liv6;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lts5;

.field public final synthetic g:Lhv6;


# direct methods
.method public constructor <init>(Lts5;Lhv6;)V
    .locals 0

    iput-object p1, p0, Lts5$b;->f:Lts5;

    iput-object p2, p0, Lts5$b;->g:Lhv6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lts5$b;->f:Lts5;

    iget-object p0, p0, Lts5$b;->g:Lhv6;

    invoke-virtual {v0, p1, p0}, Lts5;->f(Ljava/util/ArrayList;Lhv6;)Le08;

    move-result-object p0

    return-object p0
.end method
