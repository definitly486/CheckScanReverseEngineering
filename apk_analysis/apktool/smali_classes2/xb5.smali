.class public final synthetic Lxb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/ui/unit/IntSize;

.field public final synthetic d:Landroidx/compose/material3/SheetState;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/ui/unit/IntSize;Landroidx/compose/material3/SheetState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lxb5;->b:F

    iput-object p2, p0, Lxb5;->c:Landroidx/compose/ui/unit/IntSize;

    iput-object p3, p0, Lxb5;->d:Landroidx/compose/material3/SheetState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxb5;->d:Landroidx/compose/material3/SheetState;

    check-cast p1, Landroidx/compose/material3/internal/DraggableAnchorsConfig;

    iget v1, p0, Lxb5;->b:F

    iget-object p0, p0, Lxb5;->c:Landroidx/compose/ui/unit/IntSize;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->p(FLandroidx/compose/ui/unit/IntSize;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/internal/DraggableAnchorsConfig;)Lj59;

    move-result-object p0

    return-object p0
.end method
