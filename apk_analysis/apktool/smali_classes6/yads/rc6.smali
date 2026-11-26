.class public final Lyads/rc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/v75;


# instance fields
.field public final synthetic a:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    iput-object p1, p0, Lyads/rc6;->a:Lc31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/z96;)V
    .locals 1

    invoke-virtual {p1}, Lyads/z96;->a()Ljava/lang/String;

    iget-object v0, p0, Lyads/rc6;->a:Lc31;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/rc6;->a:Lc31;

    new-instance v0, Lyads/oc6;

    invoke-direct {v0, p1}, Lyads/oc6;-><init>(Lyads/z96;)V

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lyads/rc6;->a:Lc31;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/rc6;->a:Lc31;

    new-instance v0, Lyads/pc6;

    invoke-direct {v0, p1}, Lyads/pc6;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
