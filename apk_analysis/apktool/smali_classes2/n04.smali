.class public final synthetic Ln04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/material3/IconButtonColors;

.field public final synthetic f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic g:Lbm3;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln04;->b:Lll3;

    iput-object p2, p0, Ln04;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Ln04;->d:Z

    iput-object p4, p0, Ln04;->e:Landroidx/compose/material3/IconButtonColors;

    iput-object p5, p0, Ln04;->f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Ln04;->g:Lbm3;

    iput p7, p0, Ln04;->h:I

    iput p8, p0, Ln04;->i:I

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

    iget-object v0, p0, Ln04;->b:Lll3;

    iget-object v1, p0, Ln04;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Ln04;->d:Z

    iget-object v3, p0, Ln04;->e:Landroidx/compose/material3/IconButtonColors;

    iget-object v4, p0, Ln04;->f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v5, p0, Ln04;->g:Lbm3;

    iget v6, p0, Ln04;->h:I

    iget v7, p0, Ln04;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/IconButtonKt;->d(Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
