.class public final Lyads/t36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n36;


# instance fields
.field public final a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lyads/t36;->a:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/t36;->a:Lorg/json/JSONArray;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 3
    instance-of p0, p1, Lorg/json/JSONArray;

    return p0
.end method
