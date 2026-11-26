.class public final Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final handler:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private synthetic constructor <init>(Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->handler:Lnl3;

    return-void
.end method

.method public static final synthetic box-impl(Lnl3;)Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;-><init>(Lnl3;)V

    return-object v0
.end method

.method public static constructor-impl(Lnl3;)Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "Lj59;",
            ">;)",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "+",
            "Lj59;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public static equals-impl(Lnl3;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "+",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->unbox-impl()Lnl3;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Lnl3;Lnl3;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "+",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "+",
            "Lj59;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Lnl3;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "+",
            "Lj59;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString-impl(Lnl3;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "+",
            "Lj59;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClipboardKeyCommandsHandler(handler="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->handler:Lnl3;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->equals-impl(Lnl3;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getHandler()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->handler:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->handler:Lnl3;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->hashCode-impl(Lnl3;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->handler:Lnl3;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->toString-impl(Lnl3;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/ClipboardKeyCommandsHandler;->handler:Lnl3;

    return-object p0
.end method
