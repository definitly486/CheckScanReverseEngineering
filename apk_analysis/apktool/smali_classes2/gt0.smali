.class public final synthetic Lgt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgt0;->b:Landroidx/compose/material3/SheetState;

    iput p2, p0, Lgt0;->c:F

    iput p3, p0, Lgt0;->d:F

    iput p4, p0, Lgt0;->e:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lgt0;->e:F

    check-cast p1, Landroidx/compose/material3/internal/DraggableAnchorsConfig;

    iget-object v1, p0, Lgt0;->b:Landroidx/compose/material3/SheetState;

    iget v2, p0, Lgt0;->c:F

    iget p0, p0, Lgt0;->d:F

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/material3/BottomSheetScaffoldKt;->h(Landroidx/compose/material3/SheetState;FFFLandroidx/compose/material3/internal/DraggableAnchorsConfig;)Lj59;

    move-result-object p0

    return-object p0
.end method
