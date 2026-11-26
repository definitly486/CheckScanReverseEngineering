.class public final Lyads/c04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yl6;


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/on3;

.field public final c:Lyads/b04;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/on3;

    invoke-direct {v1}, Lyads/on3;-><init>()V

    new-instance v2, Lyads/b04;

    invoke-direct {v2}, Lyads/b04;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/c04;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/c04;->b:Lyads/on3;

    iput-object v2, p0, Lyads/c04;->c:Lyads/b04;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/c04;->b(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/util/ArrayList;
    .locals 3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lyads/c04;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "MediaFiles"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lyads/c04;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lyads/c04;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaFile"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lyads/c04;->c:Lyads/b04;

    invoke-virtual {v0, p1}, Lyads/b04;->a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/zz3;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "InteractiveCreativeFile"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyads/c04;->b:Lyads/on3;

    invoke-virtual {v0, p1}, Lyads/on3;->a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/nn3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lyads/c04;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    return-object p2
.end method
