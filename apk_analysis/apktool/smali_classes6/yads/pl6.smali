.class public final Lyads/pl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/v75;


# instance fields
.field public final a:Ljava/util/List;

.field public final synthetic b:Lyads/ql6;


# direct methods
.method public constructor <init>(Lyads/ql6;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lyads/pl6;->b:Lyads/ql6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/pl6;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lyads/pl6;->b:Lyads/ql6;

    iget-object v1, v0, Lyads/ql6;->d:Lyads/mc6;

    iget v2, v0, Lyads/ql6;->e:I

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lyads/ql6;->a:Lyads/t5;

    sget-object v2, Lyads/s5;->y:Lyads/s5;

    iget-object v3, p0, Lyads/pl6;->a:Ljava/util/List;

    iget-object v4, v0, Lyads/t5;->b:Lyads/iu4;

    invoke-virtual {v0, v2, v4, v3}, Lyads/t5;->a(Lyads/s5;Lyads/ju4;Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/pl6;->b:Lyads/ql6;

    iget-object p0, p0, Lyads/ql6;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Lyads/mc6;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/z96;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lyads/pl6;->b:Lyads/ql6;

    .line 30
    iget v0, p1, Lyads/ql6;->e:I

    add-int/lit8 v0, v0, -0x1

    .line 31
    iput v0, p1, Lyads/ql6;->e:I

    .line 32
    invoke-virtual {p0}, Lyads/pl6;->a()V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lyads/pl6;->b:Lyads/ql6;

    iget v1, v0, Lyads/ql6;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lyads/ql6;->e:I

    iget-object v0, v0, Lyads/ql6;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lyads/pl6;->a()V

    return-void
.end method
