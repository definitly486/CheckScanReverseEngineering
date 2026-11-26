.class public final Lyads/gx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vc6;


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/hl4;

.field public final c:Lyads/hx2;


# direct methods
.method public constructor <init>(Lyads/t5;Lyads/hl4;Lyads/al4;Ljava/util/Iterator;Lyads/jd0;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gx2;->a:Lyads/t5;

    iput-object p2, p0, Lyads/gx2;->b:Lyads/hl4;

    new-instance v0, Lyads/hx2;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lyads/hx2;-><init>(Lyads/t5;Lyads/hl4;Lyads/al4;Ljava/util/Iterator;Lyads/jd0;)V

    iput-object v0, p0, Lyads/gx2;->c:Lyads/hx2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/gx2;->a:Lyads/t5;

    sget-object v1, Lyads/s5;->r:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    iget-object v0, p0, Lyads/gx2;->b:Lyads/hl4;

    invoke-virtual {v0}, Lyads/hl4;->a()V

    iget-object p0, p0, Lyads/gx2;->c:Lyads/hx2;

    invoke-virtual {p0}, Lyads/hx2;->a()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lyads/gx2;->a:Lyads/t5;

    sget-object v1, Lyads/s5;->r:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    iget-object v0, p0, Lyads/gx2;->b:Lyads/hl4;

    invoke-virtual {v0}, Lyads/hl4;->a()V

    iget-object p0, p0, Lyads/gx2;->c:Lyads/hx2;

    iget-object p0, p0, Lyads/hx2;->e:Lyads/jd0;

    sget-object v0, Lyads/id0;->h:Lyads/id0;

    invoke-virtual {p0, v0}, Lyads/jd0;->a(Lyads/id0;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
