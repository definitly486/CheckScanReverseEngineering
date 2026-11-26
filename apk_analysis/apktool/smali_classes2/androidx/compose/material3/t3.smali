.class public final synthetic Landroidx/compose/material3/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/AnchoredDragScope;

.field public final synthetic c:Lo07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/AnchoredDragScope;Lo07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/t3;->b:Landroidx/compose/material3/internal/AnchoredDragScope;

    iput-object p2, p0, Landroidx/compose/material3/t3;->c:Lo07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Landroidx/compose/material3/t3;->b:Landroidx/compose/material3/internal/AnchoredDragScope;

    iget-object p0, p0, Landroidx/compose/material3/t3;->c:Lo07;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/material3/SheetState$animateTo$2;->g(Landroidx/compose/material3/internal/AnchoredDragScope;Lo07;FF)Lj59;

    move-result-object p0

    return-object p0
.end method
