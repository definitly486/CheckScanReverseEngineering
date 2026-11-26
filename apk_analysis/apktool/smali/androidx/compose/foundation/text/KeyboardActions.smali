.class public final Landroidx/compose/foundation/text/KeyboardActions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/KeyboardActions$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

.field private static final Default:Landroidx/compose/foundation/text/KeyboardActions;


# instance fields
.field private final onDone:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onGo:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onNext:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onPrevious:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onSearch:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onSend:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/KeyboardActions$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    new-instance v2, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;ILjh2;)V

    sput-object v2, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 42
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lnl3;

    .line 37
    iput-object p2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lnl3;

    .line 38
    iput-object p3, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lnl3;

    .line 39
    iput-object p4, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lnl3;

    .line 40
    iput-object p5, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lnl3;

    .line 41
    iput-object p6, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lnl3;

    return-void
.end method

.method public synthetic constructor <init>(Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;ILjh2;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;)V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/foundation/text/KeyboardActions;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/KeyboardActions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lnl3;

    check-cast p1, Landroidx/compose/foundation/text/KeyboardActions;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lnl3;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lnl3;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lnl3;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lnl3;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lnl3;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lnl3;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lnl3;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lnl3;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lnl3;

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lnl3;

    iget-object p1, p1, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lnl3;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getOnDone()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lnl3;

    return-object p0
.end method

.method public final getOnGo()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lnl3;

    return-object p0
.end method

.method public final getOnNext()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lnl3;

    return-object p0
.end method

.method public final getOnPrevious()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lnl3;

    return-object p0
.end method

.method public final getOnSearch()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lnl3;

    return-object p0
.end method

.method public final getOnSend()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lnl3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lnl3;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lnl3;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lnl3;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lnl3;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lnl3;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method
