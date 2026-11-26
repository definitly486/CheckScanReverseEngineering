.class public final synthetic Lfj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SearchBarDefaults;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Lnl3;

.field public final synthetic f:Z

.field public final synthetic g:Lnl3;

.field public final synthetic h:Landroidx/compose/ui/Modifier;

.field public final synthetic i:Z

.field public final synthetic j:Lbm3;

.field public final synthetic k:Lbm3;

.field public final synthetic l:Lbm3;

.field public final synthetic m:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic n:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SearchBarDefaults;Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfj7;->b:Landroidx/compose/material3/SearchBarDefaults;

    iput-object p2, p0, Lfj7;->c:Ljava/lang/String;

    iput-object p3, p0, Lfj7;->d:Lnl3;

    iput-object p4, p0, Lfj7;->e:Lnl3;

    iput-boolean p5, p0, Lfj7;->f:Z

    iput-object p6, p0, Lfj7;->g:Lnl3;

    iput-object p7, p0, Lfj7;->h:Landroidx/compose/ui/Modifier;

    iput-boolean p8, p0, Lfj7;->i:Z

    iput-object p9, p0, Lfj7;->j:Lbm3;

    iput-object p10, p0, Lfj7;->k:Lbm3;

    iput-object p11, p0, Lfj7;->l:Lbm3;

    iput-object p12, p0, Lfj7;->m:Landroidx/compose/material3/TextFieldColors;

    iput-object p13, p0, Lfj7;->n:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p14, p0, Lfj7;->o:I

    iput p15, p0, Lfj7;->p:I

    move/from16 p1, p16

    iput p1, p0, Lfj7;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v1, v0, Lfj7;->b:Landroidx/compose/material3/SearchBarDefaults;

    iget-object v2, v0, Lfj7;->c:Ljava/lang/String;

    iget-object v3, v0, Lfj7;->d:Lnl3;

    iget-object v4, v0, Lfj7;->e:Lnl3;

    iget-boolean v5, v0, Lfj7;->f:Z

    iget-object v6, v0, Lfj7;->g:Lnl3;

    iget-object v7, v0, Lfj7;->h:Landroidx/compose/ui/Modifier;

    iget-boolean v8, v0, Lfj7;->i:Z

    iget-object v9, v0, Lfj7;->j:Lbm3;

    iget-object v10, v0, Lfj7;->k:Lbm3;

    iget-object v11, v0, Lfj7;->l:Lbm3;

    iget-object v12, v0, Lfj7;->m:Landroidx/compose/material3/TextFieldColors;

    iget-object v13, v0, Lfj7;->n:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v14, v0, Lfj7;->o:I

    iget v15, v0, Lfj7;->p:I

    iget v0, v0, Lfj7;->q:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/SearchBarDefaults;->j(Landroidx/compose/material3/SearchBarDefaults;Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
