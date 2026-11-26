.class public final synthetic Le04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/material3/IconToggleButtonColors;

.field public final synthetic g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic h:Lbm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(ZLnl3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconToggleButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le04;->b:Z

    iput-object p2, p0, Le04;->c:Lnl3;

    iput-object p3, p0, Le04;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Le04;->e:Z

    iput-object p5, p0, Le04;->f:Landroidx/compose/material3/IconToggleButtonColors;

    iput-object p6, p0, Le04;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p7, p0, Le04;->h:Lbm3;

    iput p8, p0, Le04;->i:I

    iput p9, p0, Le04;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-boolean v0, p0, Le04;->b:Z

    iget-object v1, p0, Le04;->c:Lnl3;

    iget-object v2, p0, Le04;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Le04;->e:Z

    iget-object v4, p0, Le04;->f:Landroidx/compose/material3/IconToggleButtonColors;

    iget-object v5, p0, Le04;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v6, p0, Le04;->h:Lbm3;

    iget v7, p0, Le04;->i:I

    iget v8, p0, Le04;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/IconButtonKt;->a(ZLnl3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconToggleButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
