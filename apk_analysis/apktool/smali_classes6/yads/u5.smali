.class public final Lyads/u5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ku4;


# direct methods
.method public constructor <init>(Lyads/ku4;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lyads/u5;->a:Lyads/ku4;

    return-void
.end method

.method public constructor <init>(Lyads/t5;)V
    .locals 1

    new-instance v0, Lyads/ku4;

    invoke-direct {v0, p1}, Lyads/ku4;-><init>(Lyads/t5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/u5;->a:Lyads/ku4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lyads/u5;->a:Lyads/ku4;

    sget-object v1, Lyads/s5;->c:Lyads/s5;

    sget-object v2, Lyads/s5;->d:Lyads/s5;

    sget-object v3, Lyads/s5;->e:Lyads/s5;

    sget-object v4, Lyads/s5;->g:Lyads/s5;

    sget-object v5, Lyads/s5;->h:Lyads/s5;

    sget-object v6, Lyads/s5;->i:Lyads/s5;

    sget-object v7, Lyads/s5;->k:Lyads/s5;

    sget-object v8, Lyads/s5;->j:Lyads/s5;

    sget-object v9, Lyads/s5;->l:Lyads/s5;

    sget-object v10, Lyads/s5;->m:Lyads/s5;

    sget-object v11, Lyads/s5;->n:Lyads/s5;

    sget-object v12, Lyads/s5;->o:Lyads/s5;

    sget-object v13, Lyads/s5;->q:Lyads/s5;

    sget-object v14, Lyads/s5;->r:Lyads/s5;

    sget-object v15, Lyads/s5;->s:Lyads/s5;

    sget-object v16, Lyads/s5;->t:Lyads/s5;

    sget-object v17, Lyads/s5;->u:Lyads/s5;

    sget-object v18, Lyads/s5;->v:Lyads/s5;

    sget-object v19, Lyads/s5;->w:Lyads/s5;

    sget-object v20, Lyads/s5;->x:Lyads/s5;

    sget-object v21, Lyads/s5;->y:Lyads/s5;

    sget-object v22, Lyads/s5;->B:Lyads/s5;

    sget-object v23, Lyads/s5;->C:Lyads/s5;

    sget-object v24, Lyads/s5;->F:Lyads/s5;

    filled-new-array/range {v1 .. v24}, [Lyads/s5;

    move-result-object v1

    invoke-static {v1}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/ku4;->a(Ljava/util/Set;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
