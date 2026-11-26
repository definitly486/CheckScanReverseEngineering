.class public final Lyads/x96;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/xl6;

.field public final c:Lyads/xl6;

.field public final d:Lyads/kh6;

.field public final e:Lyads/ca6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 4

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/xl6;

    new-instance v2, Lyads/x90;

    invoke-direct {v2, p1, p2}, Lyads/x90;-><init>(Landroid/content/Context;Lyads/q84;)V

    const-string p1, "Creatives"

    const-string p2, "Creative"

    invoke-direct {v1, v2, p1, p2}, Lyads/xl6;-><init>(Lyads/yl6;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lyads/xl6;

    new-instance p2, Lyads/c96;

    invoke-direct {p2}, Lyads/c96;-><init>()V

    const-string v2, "AdVerifications"

    const-string v3, "Verification"

    invoke-direct {p1, p2, v2, v3}, Lyads/xl6;-><init>(Lyads/yl6;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lyads/kh6;

    invoke-direct {p2}, Lyads/kh6;-><init>()V

    new-instance v2, Lyads/ca6;

    invoke-direct {v2}, Lyads/ca6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/x96;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/x96;->b:Lyads/xl6;

    iput-object p1, p0, Lyads/x96;->c:Lyads/xl6;

    iput-object p2, p0, Lyads/x96;->d:Lyads/kh6;

    iput-object v2, p0, Lyads/x96;->e:Lyads/ca6;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lyads/s96;Lyads/yo;)V
    .locals 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Impression"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lyads/x96;->a:Lyads/zl6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lyads/s96;->n:Ljava/util/LinkedHashMap;

    const-string p2, "impression"

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string v1, "ViewableImpression"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lyads/x96;->d:Lyads/kh6;

    invoke-virtual {p0, p1}, Lyads/kh6;->a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/jh6;

    move-result-object p0

    iput-object p0, p2, Lyads/s96;->i:Lyads/jh6;

    return-void

    :cond_2
    const-string v1, "Error"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lyads/x96;->a:Lyads/zl6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lyads/s96;->n:Ljava/util/LinkedHashMap;

    const-string p2, "error"

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    const-string v1, "Survey"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lyads/x96;->a:Lyads/zl6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lyads/s96;->g:Ljava/lang/String;

    return-void

    :cond_5
    const-string v1, "Description"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lyads/x96;->a:Lyads/zl6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lyads/s96;->f:Ljava/lang/String;

    return-void

    :cond_6
    const-string v1, "AdTitle"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lyads/x96;->a:Lyads/zl6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lyads/s96;->e:Ljava/lang/String;

    return-void

    :cond_7
    const-string v1, "AdSystem"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lyads/x96;->a:Lyads/zl6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lyads/s96;->d:Ljava/lang/String;

    return-void

    :cond_8
    const-string v1, "Creatives"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p0, p0, Lyads/x96;->b:Lyads/xl6;

    invoke-virtual {p0, p1, p3}, Lyads/xl6;->b(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object p0

    iget-object p1, p2, Lyads/s96;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_9
    const-string v1, "AdVerifications"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p0, p0, Lyads/x96;->c:Lyads/xl6;

    invoke-virtual {p0, p1, p3}, Lyads/xl6;->b(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object p0

    iget-object p1, p2, Lyads/s96;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_a
    const-string v1, "Extensions"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lyads/x96;->e:Lyads/ca6;

    iget-object v0, p0, Lyads/ca6;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    :goto_0
    iget-object v4, p0, Lyads/ca6;->a:Lyads/zl6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_f

    iget-object v4, p0, Lyads/ca6;->a:Lyads/zl6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v0, :cond_b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Extension"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "type"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lyads/ca6;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v4, p0, Lyads/ca6;->b:Lyads/tk5;

    invoke-virtual {v4, p1}, Lyads/tk5;->a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/qs2;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    sget-object v5, Lyads/ca6;->d:Ljava/lang/String;

    invoke-static {v5, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lyads/ca6;->c:Lyads/xl6;

    invoke-virtual {v4, p1, p3}, Lyads/xl6;->b(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_d
    iget-object v4, p0, Lyads/ca6;->a:Lyads/zl6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_e
    iget-object v4, p0, Lyads/ca6;->a:Lyads/zl6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_f
    new-instance p0, Lyads/ba6;

    invoke-static {v3}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lyads/ba6;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p0, p2, Lyads/s96;->o:Lyads/ba6;

    return-void

    :cond_10
    iget-object p0, p0, Lyads/x96;->a:Lyads/zl6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method
