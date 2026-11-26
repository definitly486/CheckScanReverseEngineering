.class public final Lyads/c96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yl6;


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/jq3;

.field public final c:Lyads/b96;

.field public final d:Lyads/x06;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/jq3;

    invoke-direct {v1}, Lyads/jq3;-><init>()V

    new-instance v2, Lyads/b96;

    invoke-direct {v2}, Lyads/b96;-><init>()V

    new-instance v3, Lyads/x06;

    invoke-direct {v3}, Lyads/x06;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/c96;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/c96;->b:Lyads/jq3;

    iput-object v2, p0, Lyads/c96;->c:Lyads/b96;

    iput-object v3, p0, Lyads/c96;->d:Lyads/x06;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/lang/Object;
    .locals 8

    iget-object p2, p0, Lyads/c96;->a:Lyads/zl6;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const-string v1, "Verification"

    invoke-interface {p1, p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/c96;->a:Lyads/zl6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "vendor"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    move-object v4, v3

    :cond_0
    :goto_0
    iget-object v5, p0, Lyads/c96;->a:Lyads/zl6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lyads/c96;->a:Lyads/zl6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, p2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JavaScriptResource"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v3, p0, Lyads/c96;->b:Lyads/jq3;

    iget-object v3, v3, Lyads/jq3;->a:Lyads/zl6;

    invoke-interface {p1, p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "apiFramework"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "browserOptional"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    new-instance v7, Lyads/iq3;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v7, v3, v6, v5}, Lyads/iq3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v7

    goto :goto_0

    :cond_3
    :goto_2
    move-object v3, v0

    goto :goto_0

    :cond_4
    const-string v6, "VerificationParameters"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v4, p0, Lyads/c96;->c:Lyads/b96;

    iget-object v4, v4, Lyads/b96;->a:Lyads/zl6;

    invoke-interface {p1, p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_5
    const-string v6, "TrackingEvents"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v2, p0, Lyads/c96;->d:Lyads/x06;

    invoke-virtual {v2, p1}, Lyads/x06;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lyads/c96;->a:Lyads/zl6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Lyads/y86;

    invoke-direct {p0, v1, v3, v4, v2}, Lyads/y86;-><init>(Ljava/lang/String;Lyads/iq3;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object p0

    :cond_9
    :goto_3
    return-object v0
.end method
