.class public final Lyads/x06;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/w06;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/w06;

    invoke-direct {v1}, Lyads/w06;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/x06;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/x06;->b:Lyads/w06;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;
    .locals 5

    iget-object v0, p0, Lyads/x06;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "TrackingEvents"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lyads/x06;->a:Lyads/zl6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lyads/x06;->a:Lyads/zl6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tracking"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/x06;->b:Lyads/w06;

    invoke-virtual {v2, p1}, Lyads/w06;->a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/v06;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lyads/v06;->a:Ljava/lang/String;

    iget-object v2, v2, Lyads/v06;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lyads/x06;->a:Lyads/zl6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method
