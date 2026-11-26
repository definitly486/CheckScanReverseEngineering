.class public final synthetic Ltl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltl7;->b:Lbm3;

    iput-object p2, p0, Ltl7;->c:Lbm3;

    iput-object p3, p0, Ltl7;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput p4, p0, Ltl7;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Ltl7;->b:Lbm3;

    iget-object v1, p0, Ltl7;->c:Lbm3;

    iget-object v2, p0, Ltl7;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iget v3, p0, Ltl7;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt;->i(Lbm3;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
