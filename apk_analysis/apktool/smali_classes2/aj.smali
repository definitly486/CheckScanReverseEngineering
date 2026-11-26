.class public final synthetic Laj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/foundation/ScrollState;

.field public final synthetic g:Landroidx/compose/ui/window/PopupProperties;

.field public final synthetic h:Ldm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Laj;->b:Z

    iput-object p2, p0, Laj;->c:Lll3;

    iput-object p3, p0, Laj;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Laj;->e:J

    iput-object p6, p0, Laj;->f:Landroidx/compose/foundation/ScrollState;

    iput-object p7, p0, Laj;->g:Landroidx/compose/ui/window/PopupProperties;

    iput-object p8, p0, Laj;->h:Ldm3;

    iput p9, p0, Laj;->i:I

    iput p10, p0, Laj;->j:I

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

    iget-boolean v0, p0, Laj;->b:Z

    iget-object v1, p0, Laj;->c:Lll3;

    iget-object v2, p0, Laj;->d:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Laj;->e:J

    iget-object v5, p0, Laj;->f:Landroidx/compose/foundation/ScrollState;

    iget-object v6, p0, Laj;->g:Landroidx/compose/ui/window/PopupProperties;

    iget-object v7, p0, Laj;->h:Ldm3;

    iget v8, p0, Laj;->i:I

    iget v9, p0, Laj;->j:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/AndroidMenu_androidKt;->b(ZLll3;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
