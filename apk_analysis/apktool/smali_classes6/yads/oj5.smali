.class public final Lyads/oj5;
.super Lyads/h;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Iterator;

.field public final synthetic e:Lyads/pj5;


# direct methods
.method public constructor <init>(Lyads/pj5;)V
    .locals 0

    iput-object p1, p0, Lyads/oj5;->e:Lyads/pj5;

    invoke-direct {p0}, Lyads/h;-><init>()V

    iget-object p1, p1, Lyads/pj5;->b:Lyads/te3;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lyads/oj5;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Lyads/oj5;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/oj5;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lyads/oj5;->e:Lyads/pj5;

    iget-object v1, v1, Lyads/pj5;->c:Lyads/te3;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lyads/h;->b:I

    const/4 p0, 0x0

    return-object p0
.end method
