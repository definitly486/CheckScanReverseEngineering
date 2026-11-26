.class public final synthetic Lda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Lll3;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLll3;ZZZZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lda2;->b:Ljava/lang/String;

    iput-object p2, p0, Lda2;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lda2;->d:Z

    iput-object p4, p0, Lda2;->e:Lll3;

    iput-boolean p5, p0, Lda2;->f:Z

    iput-boolean p6, p0, Lda2;->g:Z

    iput-boolean p7, p0, Lda2;->h:Z

    iput-boolean p8, p0, Lda2;->i:Z

    iput-object p9, p0, Lda2;->j:Ljava/lang/String;

    iput-object p10, p0, Lda2;->k:Landroidx/compose/material3/DatePickerColors;

    iput p11, p0, Lda2;->l:I

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

    iget-object v0, p0, Lda2;->b:Ljava/lang/String;

    iget-object v1, p0, Lda2;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Lda2;->d:Z

    iget-object v3, p0, Lda2;->e:Lll3;

    iget-boolean v4, p0, Lda2;->f:Z

    iget-boolean v5, p0, Lda2;->g:Z

    iget-boolean v6, p0, Lda2;->h:Z

    iget-boolean v7, p0, Lda2;->i:Z

    iget-object v8, p0, Lda2;->j:Ljava/lang/String;

    iget-object v9, p0, Lda2;->k:Landroidx/compose/material3/DatePickerColors;

    iget v10, p0, Lda2;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/DatePickerKt;->g(Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLll3;ZZZZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
