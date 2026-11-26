.class public final Lyads/q36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n36;


# instance fields
.field public final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lyads/q36;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/q36;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 3
    instance-of p0, p1, Lorg/json/JSONObject;

    return p0
.end method
