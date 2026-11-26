.class public final Lb24$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lb24$b;

.field public c:Ljava/lang/Object;

.field public d:Lxk8;

.field public final e:Ljava/util/Map;

.field public f:Lo22;

.field public g:Lo22;

.field public h:Lo22;

.field public i:Lw18;

.field public j:Lmd7;

.field public k:Lre6;

.field public final l:Lb53;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lb24$a;->a:Landroid/content/Context;

    .line 56
    sget-object p1, Lb24$b;->o:Lb24$b;

    iput-object p1, p0, Lb24$a;->b:Lb24$b;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lb24$a;->c:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lb24$a;->d:Lxk8;

    .line 59
    sget-object v0, Lmx2;->b:Lmx2;

    iput-object v0, p0, Lb24$a;->e:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lb24$a;->f:Lo22;

    .line 61
    iput-object p1, p0, Lb24$a;->g:Lo22;

    .line 62
    iput-object p1, p0, Lb24$a;->h:Lo22;

    .line 63
    iput-object p1, p0, Lb24$a;->i:Lw18;

    .line 64
    iput-object p1, p0, Lb24$a;->j:Lmd7;

    .line 65
    iput-object p1, p0, Lb24$a;->k:Lre6;

    .line 66
    sget-object p1, Lb53;->b:Lb53;

    iput-object p1, p0, Lb24$a;->l:Lb53;

    return-void
.end method

.method public constructor <init>(Lb24;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb24$a;->a:Landroid/content/Context;

    iget-object p2, p1, Lb24;->t:Lb24$b;

    iput-object p2, p0, Lb24$a;->b:Lb24$b;

    iget-object p2, p1, Lb24;->b:Ljava/lang/Object;

    iput-object p2, p0, Lb24$a;->c:Ljava/lang/Object;

    iget-object p2, p1, Lb24;->c:Lxk8;

    iput-object p2, p0, Lb24$a;->d:Lxk8;

    iget-object p2, p1, Lb24;->d:Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lb24$a;->e:Ljava/util/Map;

    iget-object p2, p1, Lb24;->s:Lb24$c;

    iget-object v0, p2, Lb24$c;->a:Lo22;

    iput-object v0, p0, Lb24$a;->f:Lo22;

    iget-object v0, p2, Lb24$c;->b:Lo22;

    iput-object v0, p0, Lb24$a;->g:Lo22;

    iget-object v0, p2, Lb24$c;->c:Lo22;

    iput-object v0, p0, Lb24$a;->h:Lo22;

    iget-object v0, p2, Lb24$c;->d:Lw18;

    iput-object v0, p0, Lb24$a;->i:Lw18;

    iget-object v0, p2, Lb24$c;->e:Lmd7;

    iput-object v0, p0, Lb24$a;->j:Lmd7;

    iget-object p2, p2, Lb24$c;->f:Lre6;

    iput-object p2, p0, Lb24$a;->k:Lre6;

    iget-object p1, p1, Lb24;->r:Lb53;

    iput-object p1, p0, Lb24$a;->l:Lb53;

    return-void
.end method


# virtual methods
.method public final a()Lb24;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lb24$a;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lzp5;->a:Lzp5;

    :cond_0
    move-object v4, v1

    iget-object v5, v0, Lb24$a;->d:Lxk8;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v0, Lb24$a;->e:Ljava/util/Map;

    invoke-static {v2, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lv39;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lrn1;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_1
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_9

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lb24$a;->b:Lb24$b;

    iget-object v7, v1, Lb24$b;->a:Lw93;

    iget-object v11, v1, Lb24$b;->e:Lsx0;

    iget-object v12, v1, Lb24$b;->f:Lsx0;

    iget-object v13, v1, Lb24$b;->g:Lsx0;

    iget-object v2, v0, Lb24$a;->f:Lo22;

    if-nez v2, :cond_2

    iget-object v2, v1, Lb24$b;->b:Lo22;

    :cond_2
    move-object v8, v2

    iget-object v2, v0, Lb24$a;->g:Lo22;

    if-nez v2, :cond_3

    iget-object v2, v1, Lb24$b;->c:Lo22;

    :cond_3
    move-object v9, v2

    iget-object v2, v0, Lb24$a;->h:Lo22;

    if-nez v2, :cond_4

    iget-object v2, v1, Lb24$b;->d:Lo22;

    :cond_4
    move-object v10, v2

    iget-object v2, v0, Lb24$a;->i:Lw18;

    if-nez v2, :cond_5

    iget-object v2, v1, Lb24$b;->k:Lw18;

    :cond_5
    move-object/from16 v17, v2

    iget-object v2, v0, Lb24$a;->j:Lmd7;

    if-nez v2, :cond_6

    iget-object v2, v1, Lb24$b;->l:Lmd7;

    :cond_6
    move-object/from16 v18, v2

    iget-object v2, v0, Lb24$a;->k:Lre6;

    if-nez v2, :cond_7

    iget-object v2, v1, Lb24$b;->m:Lre6;

    :cond_7
    move-object/from16 v19, v2

    iget-object v1, v0, Lb24$a;->l:Lb53;

    if-eqz v1, :cond_8

    iget-object v2, v0, Lb24$a;->f:Lo22;

    iget-object v3, v0, Lb24$a;->g:Lo22;

    iget-object v14, v0, Lb24$a;->h:Lo22;

    iget-object v15, v0, Lb24$a;->i:Lw18;

    move-object/from16 v16, v1

    iget-object v1, v0, Lb24$a;->j:Lmd7;

    move-object/from16 v25, v1

    iget-object v1, v0, Lb24$a;->k:Lre6;

    new-instance v20, Lb24$c;

    move-object/from16 v26, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    invoke-direct/range {v20 .. v26}, Lb24$c;-><init>(Lo22;Lo22;Lo22;Lw18;Lmd7;Lre6;)V

    iget-object v1, v0, Lb24$a;->b:Lb24$b;

    new-instance v2, Lb24;

    iget-object v3, v0, Lb24$a;->a:Landroid/content/Context;

    sget-object v14, Lrb9$a;->b:Lrb9$a;

    move-object v15, v14

    move-object/from16 v21, v20

    move-object/from16 v20, v16

    move-object/from16 v16, v14

    move-object/from16 v22, v1

    invoke-direct/range {v2 .. v22}, Lb24;-><init>(Landroid/content/Context;Ljava/lang/Object;Lxk8;Ljava/util/Map;Lw93;Lo22;Lo22;Lo22;Lsx0;Lsx0;Lsx0;Lnl3;Lnl3;Lnl3;Lw18;Lmd7;Lre6;Lb53;Lb24$c;Lb24$b;)V

    return-object v2

    :cond_8
    invoke-static {}, Lxp;->g()V

    return-object v3

    :cond_9
    invoke-static {}, Lxp;->g()V

    return-object v3
.end method
