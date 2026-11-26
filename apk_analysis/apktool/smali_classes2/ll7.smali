.class public final synthetic Lll7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SegmentedButtonDefaults;

.field public final synthetic c:Z

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SegmentedButtonDefaults;ZLbm3;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lll7;->b:Landroidx/compose/material3/SegmentedButtonDefaults;

    iput-boolean p2, p0, Lll7;->c:Z

    iput-object p3, p0, Lll7;->d:Lbm3;

    iput-object p4, p0, Lll7;->e:Lbm3;

    iput p5, p0, Lll7;->f:I

    iput p6, p0, Lll7;->g:I

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

    iget-object v0, p0, Lll7;->b:Landroidx/compose/material3/SegmentedButtonDefaults;

    iget-boolean v1, p0, Lll7;->c:Z

    iget-object v2, p0, Lll7;->d:Lbm3;

    iget-object v3, p0, Lll7;->e:Lbm3;

    iget v4, p0, Lll7;->f:I

    iget v5, p0, Lll7;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/SegmentedButtonDefaults;->a(Landroidx/compose/material3/SegmentedButtonDefaults;ZLbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
