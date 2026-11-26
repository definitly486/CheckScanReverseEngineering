.class public final synthetic Landroidx/compose/material3/r5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/material3/ModalWideNavigationRailProperties;

.field public final synthetic e:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/r5;->b:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

    iput-object p2, p0, Landroidx/compose/material3/r5;->c:Lll3;

    iput-object p3, p0, Landroidx/compose/material3/r5;->d:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    iput-object p4, p0, Landroidx/compose/material3/r5;->e:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/material3/r5;->d:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    iget-object v1, p0, Landroidx/compose/material3/r5;->e:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v2, p0, Landroidx/compose/material3/r5;->b:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

    iget-object p0, p0, Landroidx/compose/material3/r5;->c:Lll3;

    invoke-static {v2, p0, v0, v1}, Landroidx/compose/material3/WideNavigationRail_androidKt;->d(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;

    move-result-object p0

    return-object p0
.end method
