.class public final synthetic Lti8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TabRowDefaults;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TabRowDefaults;Landroidx/compose/ui/Modifier;FFJLandroidx/compose/ui/graphics/Shape;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti8;->b:Landroidx/compose/material3/TabRowDefaults;

    iput-object p2, p0, Lti8;->c:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lti8;->d:F

    iput p4, p0, Lti8;->e:F

    iput-wide p5, p0, Lti8;->f:J

    iput-object p7, p0, Lti8;->g:Landroidx/compose/ui/graphics/Shape;

    iput p8, p0, Lti8;->h:I

    iput p9, p0, Lti8;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lti8;->b:Landroidx/compose/material3/TabRowDefaults;

    iget-object v1, p0, Lti8;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lti8;->d:F

    iget v3, p0, Lti8;->e:F

    iget-wide v4, p0, Lti8;->f:J

    iget-object v6, p0, Lti8;->g:Landroidx/compose/ui/graphics/Shape;

    iget v7, p0, Lti8;->h:I

    iget v8, p0, Lti8;->i:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/TabRowDefaults;->a(Landroidx/compose/material3/TabRowDefaults;Landroidx/compose/ui/Modifier;FFJLandroidx/compose/ui/graphics/Shape;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
