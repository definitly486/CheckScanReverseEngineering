.class public final synthetic Lol5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:Lbm3;

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/material3/NavigationRailItemColors;

.field public final synthetic j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;ZLandroidx/compose/material3/NavigationRailItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lol5;->b:Z

    iput-object p2, p0, Lol5;->c:Lll3;

    iput-object p3, p0, Lol5;->d:Lbm3;

    iput-object p4, p0, Lol5;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lol5;->f:Z

    iput-object p6, p0, Lol5;->g:Lbm3;

    iput-boolean p7, p0, Lol5;->h:Z

    iput-object p8, p0, Lol5;->i:Landroidx/compose/material3/NavigationRailItemColors;

    iput-object p9, p0, Lol5;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p10, p0, Lol5;->k:I

    iput p11, p0, Lol5;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-boolean v0, p0, Lol5;->b:Z

    iget-object v1, p0, Lol5;->c:Lll3;

    iget-object v2, p0, Lol5;->d:Lbm3;

    iget-object v3, p0, Lol5;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lol5;->f:Z

    iget-object v5, p0, Lol5;->g:Lbm3;

    iget-boolean v6, p0, Lol5;->h:Z

    iget-object v7, p0, Lol5;->i:Landroidx/compose/material3/NavigationRailItemColors;

    iget-object v8, p0, Lol5;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v9, p0, Lol5;->k:I

    iget v10, p0, Lol5;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/NavigationRailKt;->a(ZLll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;ZLandroidx/compose/material3/NavigationRailItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
