.class public abstract Ldy3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv48;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
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

    iput-object p1, p0, Ldy3$a;->d:Ldy3;

    new-instance v0, Lsj3;

    iget-object p1, p1, Ldy3;->c:Lwu0;

    invoke-interface {p1}, Lv48;->r()Lwv8;

    move-result-object p1

    invoke-direct {v0, p1}, Lsj3;-><init>(Lwv8;)V

    iput-object v0, p0, Ldy3$a;->b:Lsj3;

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 4

    iget-object v0, p0, Ldy3$a;->d:Ldy3;

    iget v1, v0, Ldy3;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Ldy3$a;->b:Lsj3;

    iget-object v1, p0, Lsj3;->e:Lwv8;

    sget-object v3, Lwv8;->d:Lwv8$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p0, Lsj3;->e:Lwv8;

    invoke-virtual {v1}, Lwv8;->a()Lwv8;

    invoke-virtual {v1}, Lwv8;->b()Lwv8;

    iput v2, v0, Ldy3;->e:I

    return-void

    :cond_1
    const-string p0, "state: "

    iget v0, v0, Ldy3;->e:I

    invoke-static {v0, p0}, Lj2;->c(ILjava/lang/String;)V

    return-void
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Ldy3$a;->b:Lsj3;

    return-object p0
.end method

.method public t0(Lbu0;J)J
    .locals 2

    iget-object v0, p0, Ldy3$a;->d:Ldy3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Ldy3;->c:Lwu0;

    invoke-interface {v1, p1, p2, p3}, Lv48;->t0(Lbu0;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iget-object p2, v0, Ldy3;->b:Lly6;

    invoke-virtual {p2}, Lly6;->l()V

    invoke-virtual {p0}, Ldy3$a;->m()V

    throw p1
.end method
