.class public final synthetic Ly33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

.field public final synthetic c:Z

.field public final synthetic d:Lll3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/foundation/ScrollState;

.field public final synthetic g:Ldm3;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly33;->b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iput-boolean p2, p0, Ly33;->c:Z

    iput-object p3, p0, Ly33;->d:Lll3;

    iput-object p4, p0, Ly33;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Ly33;->f:Landroidx/compose/foundation/ScrollState;

    iput-object p6, p0, Ly33;->g:Ldm3;

    iput p7, p0, Ly33;->h:I

    iput p8, p0, Ly33;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Ly33;->b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iget-boolean v1, p0, Ly33;->c:Z

    iget-object v2, p0, Ly33;->d:Lll3;

    iget-object v3, p0, Ly33;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Ly33;->f:Landroidx/compose/foundation/ScrollState;

    iget-object v5, p0, Ly33;->g:Ldm3;

    iget v6, p0, Ly33;->h:I

    iget v7, p0, Ly33;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->a(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
