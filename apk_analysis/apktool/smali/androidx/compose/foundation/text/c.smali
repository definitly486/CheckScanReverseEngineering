.class public final synthetic Landroidx/compose/foundation/text/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/c;->b:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/foundation/text/c;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/c;->c:Lnl3;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-object p0, p0, Landroidx/compose/foundation/text/c;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pressIndicator$1$1;->a(Landroidx/compose/runtime/MutableState;Lnl3;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method
