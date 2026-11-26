.class public final synthetic Lzk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic d:Landroidx/compose/material3/NavigationItemColors;

.field public final synthetic e:Z

.field public final synthetic f:Lbm3;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/material3/NavigationItemColors;ZLbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lzk5;->b:Z

    iput-object p2, p0, Lzk5;->c:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Lzk5;->d:Landroidx/compose/material3/NavigationItemColors;

    iput-boolean p4, p0, Lzk5;->e:Z

    iput-object p5, p0, Lzk5;->f:Lbm3;

    iput p6, p0, Lzk5;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v0, p0, Lzk5;->b:Z

    iget-object v1, p0, Lzk5;->c:Landroidx/compose/ui/text/TextStyle;

    iget-object v2, p0, Lzk5;->d:Landroidx/compose/material3/NavigationItemColors;

    iget-boolean v3, p0, Lzk5;->e:Z

    iget-object v4, p0, Lzk5;->f:Lbm3;

    iget v5, p0, Lzk5;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/NavigationItemKt;->o(ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/material3/NavigationItemColors;ZLbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
