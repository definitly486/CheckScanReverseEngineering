.class public final Loc1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmc1;

.field public static final b:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lmc1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 55

    new-instance v0, Lmc1;

    sget-wide v1, Lyc1;->a:J

    sget-wide v3, Lyc1;->b:J

    sget-wide v5, Lyc1;->c:J

    sget-wide v7, Lyc1;->d:J

    sget-wide v9, Lyc1;->e:J

    sget-wide v11, Lyc1;->f:J

    sget-wide v13, Lyc1;->g:J

    sget-wide v15, Lyc1;->h:J

    sget-wide v17, Lyc1;->i:J

    sget-wide v19, Lyc1;->j:J

    sget-wide v21, Lyc1;->k:J

    sget-wide v23, Lyc1;->l:J

    sget-wide v25, Lyc1;->m:J

    sget-wide v27, Lyc1;->n:J

    sget-wide v29, Lyc1;->o:J

    sget-wide v31, Lyc1;->p:J

    sget-wide v33, Lyc1;->q:J

    sget-wide v35, Lyc1;->r:J

    sget-wide v37, Lyc1;->s:J

    sget-wide v39, Lyc1;->t:J

    sget-wide v41, Lyc1;->u:J

    sget-wide v43, Lyc1;->v:J

    sget-wide v45, Lyc1;->w:J

    sget-wide v47, Lyc1;->x:J

    sget-wide v49, Lyc1;->y:J

    sget-wide v51, Lyc1;->z:J

    sget-wide v53, Lyc1;->A:J

    invoke-direct/range {v0 .. v54}, Lmc1;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    sput-object v0, Loc1;->a:Lmc1;

    new-instance v0, Lnc1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnc1;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lll3;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Loc1;->b:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method
