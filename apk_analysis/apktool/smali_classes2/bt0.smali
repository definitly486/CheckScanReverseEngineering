.class public final synthetic Lbt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbt0;->b:Landroidx/compose/material3/SheetState;

    iput p2, p0, Lbt0;->c:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    iget-object v0, p0, Lbt0;->b:Landroidx/compose/material3/SheetState;

    iget p0, p0, Lbt0;->c:F

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/material3/BottomSheetScaffoldKt;->j(Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/Constraints;)Lb36;

    move-result-object p0

    return-object p0
.end method
