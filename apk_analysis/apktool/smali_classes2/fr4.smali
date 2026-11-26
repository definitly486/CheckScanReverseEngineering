.class public final synthetic Lfr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr4;->b:Lbm3;

    iput-object p2, p0, Lfr4;->c:Lbm3;

    iput-object p3, p0, Lfr4;->d:Lbm3;

    iput-object p4, p0, Lfr4;->e:Lbm3;

    iput-object p5, p0, Lfr4;->f:Lbm3;

    iput p6, p0, Lfr4;->g:I

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

    iget-object v0, p0, Lfr4;->b:Lbm3;

    iget-object v1, p0, Lfr4;->c:Lbm3;

    iget-object v2, p0, Lfr4;->d:Lbm3;

    iget-object v3, p0, Lfr4;->e:Lbm3;

    iget-object v4, p0, Lfr4;->f:Lbm3;

    iget v5, p0, Lfr4;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ListItemKt;->b(Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
