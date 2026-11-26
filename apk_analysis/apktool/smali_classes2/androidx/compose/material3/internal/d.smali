.class public final synthetic Landroidx/compose/material3/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/AnchoredDraggableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/AnchoredDraggableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/d;->b:Landroidx/compose/material3/internal/AnchoredDraggableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/d;->b:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-static {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$2;->g(Landroidx/compose/material3/internal/AnchoredDraggableState;)Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p0

    return-object p0
.end method
