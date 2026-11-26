.class public final Lyads/pz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/nn0;

.field public b:Lyads/ek;


# direct methods
.method public constructor <init>(Lyads/nn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pz;->a:Lyads/nn0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lyads/pz;->b:Lyads/ek;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/ek;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lyads/pz;->b:Lyads/ek;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lyads/ek;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/ak;

    iget-object v3, v3, Lyads/ak;->a:Ljava/lang/String;

    const-string v4, "media"

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    check-cast v4, Lyads/ak;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lyads/ak;->d:Lyads/ot3;

    if-nez v1, :cond_3

    iget-object v1, v0, Lyads/ek;->f:Lyads/ot3;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lyads/ek;->b:Lyads/a4;

    iget-object v6, v0, Lyads/ek;->c:Lyads/dh4;

    iget-object v7, v0, Lyads/ek;->d:Lyads/l65;

    iget-object v9, v0, Lyads/ek;->e:Lyads/we3;

    iget-object v11, v1, Lyads/ot3;->a:Ljava/util/ArrayList;

    iget-object v12, v1, Lyads/ot3;->b:Lyads/mt2;

    iget-object v13, v1, Lyads/ot3;->c:Ljava/util/List;

    iget-wide v0, v1, Lyads/ot3;->e:J

    new-instance v8, Lyads/ot3;

    const/16 v17, 0x0

    move-object/from16 v14, p2

    move-wide v15, v0

    move-object v10, v8

    invoke-direct/range {v10 .. v17}, Lyads/ot3;-><init>(Ljava/util/ArrayList;Lyads/mt2;Ljava/util/List;Ljava/lang/String;JZ)V

    iget-object v0, v6, Lyads/dh4;->a:Lyads/i00;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/kf4;

    invoke-direct/range {v3 .. v9}, Lyads/kf4;-><init>(Lyads/ak;Lyads/a4;Lyads/dh4;Lyads/l65;Lyads/ot3;Lyads/tz2;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lyads/kf4;->onClick(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method
