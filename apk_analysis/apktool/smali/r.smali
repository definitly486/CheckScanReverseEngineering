.class public final synthetic Lr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic c:Landroidx/compose/foundation/interaction/PressInteraction$Cancel;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Cancel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p2, p0, Lr;->c:Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr;->c:Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lr;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->c(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Cancel;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method
