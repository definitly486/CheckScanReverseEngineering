.class public final Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lb36<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcs0;",
        ">;>;",
        "Ljava/util/List<",
        "+",
        "Lcs0;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/b;->f:Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
