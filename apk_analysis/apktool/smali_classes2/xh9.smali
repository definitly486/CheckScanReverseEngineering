.class public final synthetic Lxh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lxh9;->b:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lxh9;->b:F

    check-cast p1, Landroidx/compose/material3/internal/DraggableAnchorsConfig;

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRailKt;->d(FLandroidx/compose/material3/internal/DraggableAnchorsConfig;)Lj59;

    move-result-object p0

    return-object p0
.end method
