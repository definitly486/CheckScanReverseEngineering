.class public final Lw51;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/util/List<",
        "+",
        "Lst6;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Long;",
        ">;",
        "Lb36<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lst6;",
        ">;+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Long;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final f:Lw51;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw51;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lw51;->f:Lw51;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lb36;

    invoke-direct {p0, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
