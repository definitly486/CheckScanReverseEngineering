.class public final synthetic Lc98;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/carousel/KeylineList;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/KeylineList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc98;->b:Landroidx/compose/material3/carousel/KeylineList;

    iput p2, p0, Lc98;->c:I

    iput p3, p0, Lc98;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lc98;->d:I

    check-cast p1, Landroidx/compose/material3/carousel/KeylineListScope;

    iget-object v1, p0, Lc98;->b:Landroidx/compose/material3/carousel/KeylineList;

    iget p0, p0, Lc98;->c:I

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/carousel/StrategyKt;->a(Landroidx/compose/material3/carousel/KeylineList;IILandroidx/compose/material3/carousel/KeylineListScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
