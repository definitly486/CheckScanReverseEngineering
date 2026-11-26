.class public final synthetic Lp06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic d:Landroidx/compose/ui/Alignment$Horizontal;


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Alignment$Horizontal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp06;->b:Lll3;

    iput-object p2, p0, Lp06;->c:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p3, p0, Lp06;->d:Landroidx/compose/ui/Alignment$Horizontal;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lp06;->d:Landroidx/compose/ui/Alignment$Horizontal;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget-object v1, p0, Lp06;->b:Lll3;

    iget-object p0, p0, Lp06;->c:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/OutlinedTextFieldKt;->d(Lll3;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
