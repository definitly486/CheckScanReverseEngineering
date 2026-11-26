.class public final Lvw5$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw5;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/util/List<",
        "+",
        "Lq16;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lvw5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lvw5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lvw5$a;->f:Lvw5$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    new-instance p0, Lq16;

    const v0, 0x7f1404b3

    const v1, 0x7f08040e

    invoke-direct {p0, v0, v1}, Lq16;-><init>(II)V

    new-instance v0, Lq16;

    const v1, 0x7f1404b5

    const v2, 0x7f08040f

    invoke-direct {v0, v1, v2}, Lq16;-><init>(II)V

    new-instance v1, Lq16;

    const v2, 0x7f1404b4

    const v3, 0x7f080410

    invoke-direct {v1, v2, v3}, Lq16;-><init>(II)V

    new-instance v2, Lq16;

    const v3, 0x7f1404b2

    const v4, 0x7f080411

    invoke-direct {v2, v3, v4}, Lq16;-><init>(II)V

    new-instance v3, Lq16;

    const v4, 0x7f1404b1

    const v5, 0x7f080412

    invoke-direct {v3, v4, v5}, Lq16;-><init>(II)V

    filled-new-array {p0, v0, v1, v2, v3}, [Lq16;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
