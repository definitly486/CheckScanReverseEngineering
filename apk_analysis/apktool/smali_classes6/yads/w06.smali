.class public final Lyads/w06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yl6;


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/yw5;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lyads/ww5;->values()[Lyads/ww5;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lyads/yw5;

    invoke-direct {v2, v1}, Lyads/yw5;-><init>(Ljava/util/Set;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/w06;->a:Lyads/zl6;

    iput-object v2, p0, Lyads/w06;->b:Lyads/yw5;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lyads/w06;->a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/v06;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/v06;
    .locals 4

    iget-object v0, p0, Lyads/w06;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Tracking"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "offset"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lyads/w06;->a:Lyads/zl6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lyads/w06;->b:Lyads/yw5;

    invoke-virtual {p0, v2}, Lyads/yw5;->a(Ljava/lang/String;)Lyads/q86;

    move-result-object v1

    :cond_1
    new-instance p0, Lyads/v06;

    invoke-direct {p0, v0, p1, v1}, Lyads/v06;-><init>(Ljava/lang/String;Ljava/lang/String;Lyads/q86;)V

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method
