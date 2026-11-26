.class public final Ldy3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls18;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final b:Lsj3;

.field public c:Z

.field public final synthetic d:Ldy3;


# direct methods
.method public constructor <init>(Ldy3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldy3$e;->d:Ldy3;

    new-instance v0, Lsj3;

    iget-object p1, p1, Ldy3;->d:Lvu0;

    invoke-interface {p1}, Ls18;->r()Lwv8;

    move-result-object p1

    invoke-direct {v0, p1}, Lsj3;-><init>(Lwv8;)V

    iput-object v0, p0, Ldy3$e;->b:Lsj3;

    return-void
.end method


# virtual methods
.method public final H(Lbu0;J)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Ldy3$e;->c:Z

    if-nez v0, :cond_0

    iget-wide v1, p1, Lbu0;->c:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lgb9;->c(JJJ)V

    iget-object p0, p0, Ldy3$e;->d:Ldy3;

    iget-object p0, p0, Ldy3;->d:Lvu0;

    invoke-interface {p0, p1, v5, v6}, Ls18;->H(Lbu0;J)V

    return-void

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 3

    iget-boolean v0, p0, Ldy3$e;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldy3$e;->c:Z

    iget-object v0, p0, Ldy3$e;->b:Lsj3;

    iget-object v1, v0, Lsj3;->e:Lwv8;

    sget-object v2, Lwv8;->d:Lwv8$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lsj3;->e:Lwv8;

    invoke-virtual {v1}, Lwv8;->a()Lwv8;

    invoke-virtual {v1}, Lwv8;->b()Lwv8;

    const/4 v0, 0x3

    iget-object p0, p0, Ldy3$e;->d:Ldy3;

    iput v0, p0, Ldy3;->e:I

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Ldy3$e;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ldy3$e;->d:Ldy3;

    iget-object p0, p0, Ldy3;->d:Lvu0;

    invoke-interface {p0}, Lvu0;->flush()V

    return-void
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Ldy3$e;->b:Lsj3;

    return-object p0
.end method
