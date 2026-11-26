.class public final synthetic Landroidx/compose/material3/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/compose/material3/a3;->b:F

    iput-object p1, p0, Landroidx/compose/material3/a3;->c:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/a3;->c:Landroidx/compose/runtime/MutableFloatState;

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;

    iget p0, p0, Landroidx/compose/material3/a3;->b:F

    invoke-static {p0, v0, p1}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1;->a(FLandroidx/compose/runtime/MutableFloatState;Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;)Lj59;

    move-result-object p0

    return-object p0
.end method
