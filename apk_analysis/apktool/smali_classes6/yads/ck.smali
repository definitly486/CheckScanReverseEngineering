.class public final Lyads/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/b05;

.field public final c:Lyads/a24;

.field public final d:Lyads/sj4;

.field public final e:Lyads/aj4;

.field public final f:Lyads/ac0;

.field public final g:Ly22;


# direct methods
.method public constructor <init>(Lyads/d9;Lyads/b05;Lyads/a24;Lyads/sj4;Lyads/aj4;Lyads/q84;Lyads/ac0;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ck;->a:Lyads/d9;

    iput-object p2, p0, Lyads/ck;->b:Lyads/b05;

    iput-object p3, p0, Lyads/ck;->c:Lyads/a24;

    iput-object p4, p0, Lyads/ck;->d:Lyads/sj4;

    iput-object p5, p0, Lyads/ck;->e:Lyads/aj4;

    iput-object p7, p0, Lyads/ck;->f:Lyads/ac0;

    iput-object p8, p0, Lyads/ck;->g:Ly22;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lyads/ey3;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lyads/be3;

    iget-object v4, v0, Lyads/ck;->b:Lyads/b05;

    iget-object v5, v0, Lyads/ck;->a:Lyads/d9;

    iget-object v6, v0, Lyads/ck;->g:Ly22;

    invoke-direct {v3, v1, v4, v5, v6}, Lyads/be3;-><init>(Landroid/widget/ImageView;Lyads/b05;Lyads/d9;Ly22;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, v0, Lyads/ck;->c:Lyads/a24;

    iget-object v7, v0, Lyads/ck;->b:Lyads/b05;

    iget-object v10, v0, Lyads/ck;->d:Lyads/sj4;

    iget-object v11, v0, Lyads/ck;->e:Lyads/aj4;

    iget-object v0, v0, Lyads/ck;->g:Ly22;

    iget-object v4, v1, Lyads/a24;->a:Lyads/mk;

    iget-object v4, v4, Lyads/mk;->a:Ljava/util/LinkedHashMap;

    const-string v5, "media"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lyads/v14;

    if-eqz v5, :cond_1

    check-cast v4, Lyads/v14;

    move-object v15, v4

    goto :goto_1

    :cond_1
    move-object v15, v2

    :goto_1
    iget-object v4, v1, Lyads/a24;->d:Lyads/b24;

    iget-object v6, v1, Lyads/a24;->b:Lyads/e4;

    iget-object v8, v1, Lyads/a24;->g:Lyads/tj6;

    iget-object v9, v1, Lyads/a24;->c:Lyads/we3;

    iget-object v12, v1, Lyads/a24;->e:Lyads/we4;

    iget-object v13, v1, Lyads/a24;->f:Lyads/j24;

    iget-object v14, v1, Lyads/a24;->h:Lyads/uj5;

    move-object/from16 v5, p2

    move-object/from16 v16, v0

    invoke-interface/range {v4 .. v16}, Lyads/b24;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/e4;Lyads/b05;Lyads/tj6;Lyads/we3;Lyads/sj4;Lyads/aj4;Lyads/we4;Lyads/j24;Lyads/uj5;Lyads/v14;Ly22;)Lyads/z14;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    return-object v2

    :cond_4
    :goto_3
    new-instance v1, Lyads/ey3;

    invoke-direct {v1, v3, v0}, Lyads/ey3;-><init>(Lyads/be3;Lyads/z14;)V

    return-object v1
.end method
