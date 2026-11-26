.class public final synthetic Lea2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lll3;

.field public final synthetic h:Lll3;

.field public final synthetic i:Lll3;

.field public final synthetic j:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZZLjava/lang/String;Lll3;Lll3;Lll3;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lea2;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lea2;->c:Z

    iput-boolean p3, p0, Lea2;->d:Z

    iput-boolean p4, p0, Lea2;->e:Z

    iput-object p5, p0, Lea2;->f:Ljava/lang/String;

    iput-object p6, p0, Lea2;->g:Lll3;

    iput-object p7, p0, Lea2;->h:Lll3;

    iput-object p8, p0, Lea2;->i:Lll3;

    iput-object p9, p0, Lea2;->j:Landroidx/compose/material3/DatePickerColors;

    iput p10, p0, Lea2;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Lea2;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Lea2;->c:Z

    iget-boolean v2, p0, Lea2;->d:Z

    iget-boolean v3, p0, Lea2;->e:Z

    iget-object v4, p0, Lea2;->f:Ljava/lang/String;

    iget-object v5, p0, Lea2;->g:Lll3;

    iget-object v6, p0, Lea2;->h:Lll3;

    iget-object v7, p0, Lea2;->i:Lll3;

    iget-object v8, p0, Lea2;->j:Landroidx/compose/material3/DatePickerColors;

    iget v9, p0, Lea2;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DatePickerKt;->p(Landroidx/compose/ui/Modifier;ZZZLjava/lang/String;Lll3;Lll3;Lll3;Landroidx/compose/material3/DatePickerColors;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
