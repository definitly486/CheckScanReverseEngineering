.class public final Lyads/gp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/gp4;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    sget-boolean v0, Lyads/gp4;->f:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lxp;->g()V

    return-void

    :cond_2
    :goto_0
    iget p1, p0, Lyads/gp4;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyads/gp4;->d:I

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lyads/gp4;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lyads/gp4;->e:Z

    iget-object v0, p0, Lyads/gp4;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lyads/gp4;->d:I

    sub-int/2addr p1, v1

    iput p1, p0, Lyads/gp4;->d:I

    sget-boolean p0, Lyads/gp4;->f:Z

    if-nez p0, :cond_4

    if-ltz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lxp;->g()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lyads/fp4;

    invoke-direct {v0, p0}, Lyads/fp4;-><init>(Lyads/gp4;)V

    return-object v0
.end method
