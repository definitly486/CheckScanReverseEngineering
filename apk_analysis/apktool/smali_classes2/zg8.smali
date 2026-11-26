.class public final synthetic Lzg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/material3/SwitchColors;

.field public final synthetic h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(ZLnl3;Landroidx/compose/ui/Modifier;Lbm3;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lzg8;->b:Z

    iput-object p2, p0, Lzg8;->c:Lnl3;

    iput-object p3, p0, Lzg8;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lzg8;->e:Lbm3;

    iput-boolean p5, p0, Lzg8;->f:Z

    iput-object p6, p0, Lzg8;->g:Landroidx/compose/material3/SwitchColors;

    iput-object p7, p0, Lzg8;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p8, p0, Lzg8;->i:I

    iput p9, p0, Lzg8;->j:I

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

    iget-boolean v0, p0, Lzg8;->b:Z

    iget-object v1, p0, Lzg8;->c:Lnl3;

    iget-object v2, p0, Lzg8;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lzg8;->e:Lbm3;

    iget-boolean v4, p0, Lzg8;->f:Z

    iget-object v5, p0, Lzg8;->g:Landroidx/compose/material3/SwitchColors;

    iget-object v6, p0, Lzg8;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v7, p0, Lzg8;->i:I

    iget v8, p0, Lzg8;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/SwitchKt;->b(ZLnl3;Landroidx/compose/ui/Modifier;Lbm3;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
