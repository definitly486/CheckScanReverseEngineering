.class public final Ld68;
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
        "Lhc0$c;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lhc0$c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lb68;


# direct methods
.method public constructor <init>(Lb68;)V
    .locals 0

    iput-object p1, p0, Ld68;->f:Lb68;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ld68;->f:Lb68;

    iget-object p0, p0, Lb68;->a:Ljf6;

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljf6;->U(Ljava/lang/String;)V

    return-object p1
.end method
