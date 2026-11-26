.class public final synthetic Ljk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/json/JSONArray;

.field public final synthetic c:Lcom/tapjoy/TapjoyCache;

.field public final synthetic d:Lcom/tapjoy/TJTaskHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCache;Lcom/tapjoy/TJTaskHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk8;->b:Lorg/json/JSONArray;

    iput-object p2, p0, Ljk8;->c:Lcom/tapjoy/TapjoyCache;

    iput-object p3, p0, Ljk8;->d:Lcom/tapjoy/TJTaskHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ljk8;->c:Lcom/tapjoy/TapjoyCache;

    iget-object v1, p0, Ljk8;->d:Lcom/tapjoy/TJTaskHandler;

    iget-object p0, p0, Ljk8;->b:Lorg/json/JSONArray;

    invoke-static {p0, v0, v1}, Lcom/tapjoy/TapjoyCache;->a(Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCache;Lcom/tapjoy/TJTaskHandler;)V

    return-void
.end method
