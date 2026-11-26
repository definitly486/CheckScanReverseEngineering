.class public final synthetic Lag4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/material3/carousel/Arrangement;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/material3/carousel/Arrangement;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lag4;->b:F

    iput-object p2, p0, Lag4;->c:Landroidx/compose/material3/carousel/Arrangement;

    iput p3, p0, Lag4;->d:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lag4;->d:F

    check-cast p1, Landroidx/compose/material3/carousel/KeylineListScope;

    iget v1, p0, Lag4;->b:F

    iget-object p0, p0, Lag4;->c:Landroidx/compose/material3/carousel/Arrangement;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/carousel/KeylinesKt;->a(FLandroidx/compose/material3/carousel/Arrangement;FLandroidx/compose/material3/carousel/KeylineListScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
