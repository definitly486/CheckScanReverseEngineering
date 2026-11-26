.class public final synthetic Liw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:Landroidx/compose/material3/NavigationItemColors;

.field public final synthetic j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Lbm3;Lbm3;Landroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Liw7;->b:Z

    iput-object p2, p0, Liw7;->c:Lll3;

    iput-object p3, p0, Liw7;->d:Lbm3;

    iput-object p4, p0, Liw7;->e:Lbm3;

    iput-object p5, p0, Liw7;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Liw7;->g:Z

    iput p7, p0, Liw7;->h:I

    iput-object p8, p0, Liw7;->i:Landroidx/compose/material3/NavigationItemColors;

    iput-object p9, p0, Liw7;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p10, p0, Liw7;->k:I

    iput p11, p0, Liw7;->l:I

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

    iget-boolean v0, p0, Liw7;->b:Z

    iget-object v1, p0, Liw7;->c:Lll3;

    iget-object v2, p0, Liw7;->d:Lbm3;

    iget-object v3, p0, Liw7;->e:Lbm3;

    iget-object v4, p0, Liw7;->f:Landroidx/compose/ui/Modifier;

    iget-boolean v5, p0, Liw7;->g:Z

    iget v6, p0, Liw7;->h:I

    iget-object v7, p0, Liw7;->i:Landroidx/compose/material3/NavigationItemColors;

    iget-object v8, p0, Liw7;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v9, p0, Liw7;->k:I

    iget v10, p0, Liw7;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ShortNavigationBarKt;->b(ZLll3;Lbm3;Lbm3;Landroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
