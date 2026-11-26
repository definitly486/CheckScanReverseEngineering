.class public final Lyads/yv1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/yv1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/yv1;

    invoke-direct {v0}, Lyads/yv1;-><init>()V

    sput-object v0, Lyads/yv1;->a:Lyads/yv1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/br0;Lyads/fs2;)Z
    .locals 0

    instance-of p0, p1, Lyads/jq0;

    if-eqz p0, :cond_2

    check-cast p1, Lyads/jq0;

    iget-object p0, p1, Lyads/jq0;->a:Lyads/b82;

    iget-object p0, p0, Lyads/b82;->F:Ljava/util/List;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/x72;

    iget-object p1, p1, Lyads/x72;->e:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    instance-of p0, p1, Lyads/kq0;

    if-eqz p0, :cond_3

    check-cast p1, Lyads/kq0;

    iget-object p0, p1, Lyads/kq0;->a:Lyads/ng2;

    iget-object p0, p0, Lyads/ng2;->A:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    instance-of p0, p1, Lyads/zp0;

    if-eqz p0, :cond_4

    check-cast p1, Lyads/zp0;

    iget-object p0, p1, Lyads/zp0;->a:Lyads/zh1;

    iget-object p0, p0, Lyads/zh1;->H:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4
    instance-of p0, p1, Lyads/xp0;

    if-eqz p0, :cond_5

    check-cast p1, Lyads/xp0;

    iget-object p0, p1, Lyads/xp0;->a:Lyads/eh1;

    iget-object p0, p0, Lyads/eh1;->E:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
