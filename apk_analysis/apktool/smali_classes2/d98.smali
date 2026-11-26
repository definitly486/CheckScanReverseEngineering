.class public final synthetic Ld98;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/carousel/KeylineList;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/KeylineList;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld98;->b:Landroidx/compose/material3/carousel/KeylineList;

    iput p2, p0, Ld98;->c:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld98;->c:F

    check-cast p1, Landroidx/compose/material3/carousel/KeylineListScope;

    iget-object p0, p0, Ld98;->b:Landroidx/compose/material3/carousel/KeylineList;

    invoke-static {p0, v0, p1}, Landroidx/compose/material3/carousel/StrategyKt;->b(Landroidx/compose/material3/carousel/KeylineList;FLandroidx/compose/material3/carousel/KeylineListScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
