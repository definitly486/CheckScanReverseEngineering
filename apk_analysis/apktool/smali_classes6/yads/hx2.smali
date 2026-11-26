.class public final Lyads/hx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vc6;


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/hl4;

.field public final c:Lyads/al4;

.field public final d:Ljava/util/Iterator;

.field public final e:Lyads/jd0;


# direct methods
.method public constructor <init>(Lyads/t5;Lyads/hl4;Lyads/al4;Ljava/util/Iterator;Lyads/jd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hx2;->a:Lyads/t5;

    iput-object p2, p0, Lyads/hx2;->b:Lyads/hl4;

    iput-object p3, p0, Lyads/hx2;->c:Lyads/al4;

    iput-object p4, p0, Lyads/hx2;->d:Ljava/util/Iterator;

    iput-object p5, p0, Lyads/hx2;->e:Lyads/jd0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lyads/hx2;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/hx2;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v1, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lyads/hx2;

    iget-object v3, p0, Lyads/hx2;->a:Lyads/t5;

    iget-object v4, p0, Lyads/hx2;->b:Lyads/hl4;

    iget-object v5, p0, Lyads/hx2;->c:Lyads/al4;

    iget-object v6, p0, Lyads/hx2;->d:Ljava/util/Iterator;

    iget-object v7, p0, Lyads/hx2;->e:Lyads/jd0;

    invoke-direct/range {v2 .. v7}, Lyads/hx2;-><init>(Lyads/t5;Lyads/hl4;Lyads/al4;Ljava/util/Iterator;Lyads/jd0;)V

    invoke-virtual {v5, v1, v2, v0}, Lyads/al4;->a(Ljava/lang/String;Lyads/vc6;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lyads/hx2;->e:Lyads/jd0;

    sget-object v0, Lyads/id0;->h:Lyads/id0;

    invoke-virtual {p0, v0}, Lyads/jd0;->a(Lyads/id0;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lyads/hx2;->a()V

    return-void
.end method
