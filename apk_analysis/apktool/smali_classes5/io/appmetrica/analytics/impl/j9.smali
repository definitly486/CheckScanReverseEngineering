.class public final Lio/appmetrica/analytics/impl/j9;
.super Lio/appmetrica/analytics/impl/Tf;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/zi;

.field public final b:Ljava/util/HashMap;

.field public final c:Lio/appmetrica/analytics/impl/C4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 2

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Tf;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/zi;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    new-instance v1, Lio/appmetrica/analytics/impl/C4;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/C4;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/j9;->c:Lio/appmetrica/analytics/impl/C4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/j9;->a(Lio/appmetrica/analytics/impl/i5;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/j9;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/Ja;
    .locals 0

    .line 267
    iget-object p0, p0, Lio/appmetrica/analytics/impl/j9;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Ja;

    return-object p0
.end method

.method public final a(I)Lio/appmetrica/analytics/impl/i9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/impl/i9;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 261
    invoke-static {p1}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object p1

    .line 262
    iget-object v1, p0, Lio/appmetrica/analytics/impl/j9;->c:Lio/appmetrica/analytics/impl/C4;

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1, p1, v0}, Lio/appmetrica/analytics/impl/C4;->a(Lio/appmetrica/analytics/impl/pb;Ljava/util/List;)V

    .line 264
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/j9;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Ja;

    if-eqz p0, :cond_1

    .line 265
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Ja;->a(Ljava/util/List;)V

    .line 266
    :cond_1
    new-instance p0, Lio/appmetrica/analytics/impl/h9;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/h9;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/zi;
    .locals 0

    .line 259
    iget-object p0, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/i5;)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->z:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/h;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/i5;->b:Lio/appmetrica/analytics/impl/b5;

    invoke-direct {v2, v3, p1}, Lio/appmetrica/analytics/impl/h;-><init>(Lio/appmetrica/analytics/impl/zi;Lio/appmetrica/analytics/impl/b5;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lio/appmetrica/analytics/impl/pb;->B:Lio/appmetrica/analytics/impl/pb;

    new-instance v1, Lio/appmetrica/analytics/impl/Ul;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Ul;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lio/appmetrica/analytics/impl/pb;->e:Lio/appmetrica/analytics/impl/pb;

    new-instance v1, Lio/appmetrica/analytics/impl/Jg;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Jg;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lio/appmetrica/analytics/impl/wb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/wb;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->u:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->v:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->o:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->C:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->D:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/Pl;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/zi;->t:Lio/appmetrica/analytics/impl/mj;

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/Pl;-><init>(Lio/appmetrica/analytics/impl/zi;Lio/appmetrica/analytics/impl/Ug;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->E:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/Qg;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Qg;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->n:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/fg;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/fg;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->w:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/F6;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/F6;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->x:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/Jf;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Jf;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->r:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/ho;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/ho;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->s:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/Kf;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Kf;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/appmetrica/analytics/impl/go;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/go;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->t:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->y:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->p:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/Pl;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/zi;->e:Lio/appmetrica/analytics/impl/Pg;

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/Pl;-><init>(Lio/appmetrica/analytics/impl/zi;Lio/appmetrica/analytics/impl/Ug;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->q:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/Pl;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/zi;->f:Lio/appmetrica/analytics/impl/Og;

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/Pl;-><init>(Lio/appmetrica/analytics/impl/zi;Lio/appmetrica/analytics/impl/Ug;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->i:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->j:Lio/appmetrica/analytics/impl/pb;

    new-instance v2, Lio/appmetrica/analytics/impl/Pl;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/zi;->k:Lio/appmetrica/analytics/impl/lo;

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/Pl;-><init>(Lio/appmetrica/analytics/impl/zi;Lio/appmetrica/analytics/impl/Ug;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->k:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->l:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->I:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->m:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->J:Lio/appmetrica/analytics/impl/pb;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lio/appmetrica/analytics/impl/pb;->h:Lio/appmetrica/analytics/impl/pb;

    new-instance v1, Lio/appmetrica/analytics/impl/R9;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/j9;->a:Lio/appmetrica/analytics/impl/zi;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/R9;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/Ja;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/pb;",
            "Lio/appmetrica/analytics/impl/Ja;",
            ")V"
        }
    .end annotation

    .line 258
    iget-object p0, p0, Lio/appmetrica/analytics/impl/j9;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
