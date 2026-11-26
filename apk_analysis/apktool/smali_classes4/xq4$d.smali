.class public abstract Lxq4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxq4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Lxq4$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxq4$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:Lxq4$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxq4$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:I

.field public final synthetic e:Lxq4;


# direct methods
.method public constructor <init>(Lxq4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxq4$d;->e:Lxq4;

    iget-object v0, p1, Lxq4;->g:Lxq4$e;

    iget-object v0, v0, Lxq4$e;->e:Lxq4$e;

    iput-object v0, p0, Lxq4$d;->b:Lxq4$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lxq4$d;->c:Lxq4$e;

    iget p1, p1, Lxq4;->f:I

    iput p1, p0, Lxq4$d;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lxq4$e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxq4$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lxq4$d;->b:Lxq4$e;

    iget-object v1, p0, Lxq4$d;->e:Lxq4;

    iget-object v2, v1, Lxq4;->g:Lxq4$e;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget v1, v1, Lxq4;->f:I

    iget v2, p0, Lxq4$d;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lxq4$e;->e:Lxq4$e;

    iput-object v1, p0, Lxq4$d;->b:Lxq4$e;

    iput-object v0, p0, Lxq4$d;->c:Lxq4$e;

    return-object v0

    :cond_0
    invoke-static {}, Lln;->e()V

    return-object v3

    :cond_1
    invoke-static {}, Lqz0;->e()V

    return-object v3
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lxq4$d;->b:Lxq4$e;

    iget-object p0, p0, Lxq4$d;->e:Lxq4;

    iget-object p0, p0, Lxq4;->g:Lxq4$e;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lxq4$d;->a()Lxq4$e;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lxq4$d;->c:Lxq4$e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lxq4$d;->e:Lxq4;

    invoke-virtual {v2, v0, v1}, Lxq4;->d(Lxq4$e;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lxq4$d;->c:Lxq4$e;

    iget v0, v2, Lxq4;->f:I

    iput v0, p0, Lxq4$d;->d:I

    return-void

    :cond_0
    invoke-static {}, Lud;->g()V

    return-void
.end method
