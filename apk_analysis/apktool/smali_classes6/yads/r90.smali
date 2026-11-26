.class public final Lyads/r90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yl6;


# instance fields
.field public final a:Lyads/st2;


# direct methods
.method public constructor <init>(Lyads/st2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/r90;->a:Lyads/st2;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "CreativeExtension"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v1, p0, Lyads/r90;->a:Lyads/st2;

    invoke-virtual {v1, p1, p2}, Lyads/st2;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method
