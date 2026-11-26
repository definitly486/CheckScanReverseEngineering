.class public final synthetic Lsp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:F

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(FIIJLandroidx/compose/ui/Modifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lsp2;->b:Landroidx/compose/ui/Modifier;

    iput p1, p0, Lsp2;->c:F

    iput-wide p4, p0, Lsp2;->d:J

    iput p2, p0, Lsp2;->e:I

    iput p3, p0, Lsp2;->f:I

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

    iget-object v0, p0, Lsp2;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lsp2;->c:F

    iget-wide v2, p0, Lsp2;->d:J

    iget v4, p0, Lsp2;->e:I

    iget v5, p0, Lsp2;->f:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
