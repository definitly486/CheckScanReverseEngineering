.class public final synthetic Lo8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/vq0;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILyads/vq0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo8a;->b:I

    iput-object p2, p0, Lo8a;->c:Lyads/vq0;

    iput-object p3, p0, Lo8a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo8a;->d:Ljava/lang/String;

    check-cast p1, Lorg/json/JSONArray;

    iget v1, p0, Lo8a;->b:I

    iget-object p0, p0, Lo8a;->c:Lyads/vq0;

    invoke-static {v1, p0, v0, p1}, Lyads/sy0;->a(ILyads/vq0;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method
