.class public final synthetic Lmi8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic i:Ldm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmi8;->b:Z

    iput-object p2, p0, Lmi8;->c:Lll3;

    iput-object p3, p0, Lmi8;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lmi8;->e:Z

    iput-wide p5, p0, Lmi8;->f:J

    iput-wide p7, p0, Lmi8;->g:J

    iput-object p9, p0, Lmi8;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p10, p0, Lmi8;->i:Ldm3;

    iput p11, p0, Lmi8;->j:I

    iput p12, p0, Lmi8;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-boolean v0, p0, Lmi8;->b:Z

    iget-object v1, p0, Lmi8;->c:Lll3;

    iget-object v2, p0, Lmi8;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lmi8;->e:Z

    iget-wide v4, p0, Lmi8;->f:J

    iget-wide v6, p0, Lmi8;->g:J

    iget-object v8, p0, Lmi8;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v9, p0, Lmi8;->i:Ldm3;

    iget v10, p0, Lmi8;->j:I

    iget v11, p0, Lmi8;->k:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/TabKt;->e(ZLll3;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
