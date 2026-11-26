.class public final Lyads/hp6;
.super Lyads/xp6;
.source "SourceFile"


# static fields
.field public static final d:Lyads/hp6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/hp6;

    invoke-direct {v0}, Lyads/hp6;-><init>()V

    sput-object v0, Lyads/hp6;->d:Lyads/hp6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/xp6;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    sget-object p0, Lyads/tp6;->c:Lyads/tp6;

    iget-object p0, p0, Lyads/tp6;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/dp6;

    iget-object v0, v0, Lyads/dp6;->e:Lyads/s9;

    iget-object v1, v0, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const-string v1, "foregrounded"

    goto :goto_1

    :cond_1
    const-string v1, "backgrounded"

    :goto_1
    sget-object v2, Lyads/nq6;->a:Lyads/nq6;

    iget-object v3, v0, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iget-object v0, v0, Lyads/s9;->a:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setState"

    invoke-virtual {v2, v3, v1, v0}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 64
    sget-object p0, Lyads/tp6;->c:Lyads/tp6;

    .line 65
    iget-object p0, p0, Lyads/tp6;->b:Ljava/util/ArrayList;

    .line 66
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/dp6;

    .line 68
    iget-object v0, v0, Lyads/dp6;->d:Lyads/cp6;

    .line 69
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
