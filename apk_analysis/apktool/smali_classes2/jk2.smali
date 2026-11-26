.class public final synthetic Ljk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DefaultWideNavigationRailOverride;

.field public final synthetic c:Landroidx/compose/material3/WideNavigationRailOverrideScope;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DefaultWideNavigationRailOverride;Landroidx/compose/material3/WideNavigationRailOverrideScope;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk2;->b:Landroidx/compose/material3/DefaultWideNavigationRailOverride;

    iput-object p2, p0, Ljk2;->c:Landroidx/compose/material3/WideNavigationRailOverrideScope;

    iput p3, p0, Ljk2;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Ljk2;->b:Landroidx/compose/material3/DefaultWideNavigationRailOverride;

    iget-object v1, p0, Ljk2;->c:Landroidx/compose/material3/WideNavigationRailOverrideScope;

    iget p0, p0, Ljk2;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/material3/DefaultWideNavigationRailOverride;->a(Landroidx/compose/material3/DefaultWideNavigationRailOverride;Landroidx/compose/material3/WideNavigationRailOverrideScope;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
