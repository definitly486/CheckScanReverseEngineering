.class public final synthetic Lah8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/material3/SwitchColors;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/SwitchColors;Lbm3;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lah8;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lah8;->c:Z

    iput-boolean p3, p0, Lah8;->d:Z

    iput-object p4, p0, Lah8;->e:Landroidx/compose/material3/SwitchColors;

    iput-object p5, p0, Lah8;->f:Lbm3;

    iput-object p6, p0, Lah8;->g:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p7, p0, Lah8;->h:Landroidx/compose/ui/graphics/Shape;

    iput p8, p0, Lah8;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lah8;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Lah8;->c:Z

    iget-boolean v2, p0, Lah8;->d:Z

    iget-object v3, p0, Lah8;->e:Landroidx/compose/material3/SwitchColors;

    iget-object v4, p0, Lah8;->f:Lbm3;

    iget-object v5, p0, Lah8;->g:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v6, p0, Lah8;->h:Landroidx/compose/ui/graphics/Shape;

    iget v7, p0, Lah8;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/SwitchKt;->a(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/SwitchColors;Lbm3;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
