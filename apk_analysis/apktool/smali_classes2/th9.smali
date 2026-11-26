.class public final synthetic Lth9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/material3/ModalWideNavigationRailState;


# direct methods
.method public synthetic constructor <init>(ZZLandroidx/compose/material3/ModalWideNavigationRailState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lth9;->b:Z

    iput-boolean p2, p0, Lth9;->c:Z

    iput-object p3, p0, Lth9;->d:Landroidx/compose/material3/ModalWideNavigationRailState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    iget-boolean v0, p0, Lth9;->b:Z

    iget-boolean v1, p0, Lth9;->c:Z

    iget-object p0, p0, Lth9;->d:Landroidx/compose/material3/ModalWideNavigationRailState;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/material3/WideNavigationRailKt;->j(ZZLandroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/Constraints;)Lb36;

    move-result-object p0

    return-object p0
.end method
